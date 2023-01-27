# *Knuckles Chaotix* for Sega Genesis 32X save file format

This is a specification for the save file format used by *Knuckles Chaotix*, released in 1995 for the Sega Genesis 32X.

This document uses the following terms to represent data sizes, consistent with their use in the Motorola 68000 instruction set:

| Term | Length | Range |
| - | - | - |
| **BYTE** | 1 byte (8 bits) | 0–255 |
| **WORD** | 2 bytes (16 bits) |0–65,535 |
| **LONG** | 4 bytes (32 bits) | 0–4,294,967,295 |

All numbers are big endian integers, meaning that the word `$00FF` has the decimal value of 255 and not 65,280.

## Overview

The SRAM data is stored twice for redundancy. Each section is 256 bytes in size and contains a checksum. Both sections should contain identical data unless data corruption has occurred.

If the checksum for the first section fails, the game tries the second one. If the checksum for the second section fails, the game resets the save data to the default values.

| Offset | Size | Description |
| - | - | - |
| `$000`–`$0FF` | 256 bytes | Section 1 |
| `$100`–`$1FF` | 256 bytes | Section 2 |

See **Appendix A** for the default save data.

Many emulators, including Gens and Kega Fusion, pad each byte to word-length in the save file. **Appendix B** contains a Perl script that converts such files to byte-length to match the offsets and sizes given in this document.

## Section contents

The first two bytes are always zero, followed by a checksum of two bytes.

The game stores up to three save slots, each 12 bytes in length. The first slot starts at `$04` and ends at `$0F`. Each slot is offset by 16 bytes.

A pattern of `$9EFB $0000 $0001` starts at `$30` and repeats 24 times, ending at `$BF`. The third slot, if it exists, overlaps part of this pattern.

| Offset | Size | Description |
| - | - | - |
| `$00`–`$01` | **WORD** | Always 0 |
| `$02`–`$03` | **WORD** | Checksum |
| `$04`–`$0F` | 12 bytes | Slot 1 |
| `$24`–`$2F` | 12 bytes | Slot 2 |
| `$30`–`$BF` | 144 bytes | `$9EFB $0000 $0001` repeating |
| `$34`–`$3F` | 12 bytes | Slot 3 |
| `$C0`–`$FF` | 64 bytes | Always 0 |

### Checksum algorithm

The original algorithm for calculating and verifying the checksum is implemented in Motorola 68000 assembly:

```
sub_8BE37C:
    movea.l (a0)+,a1
    move.w  #$4B52,d0
    move.w  #$FB,d1

loc_8BE386:
    add.b   (a0)+,d0
    addx.w  d1,d0
    dbf     d1,loc_8BE386
    cmp.w   a1,d0
    rts
```

The address register **a0** points to the save data. The data register **d0** holds the checksum and **d1** is the counter.

We initialize the checksum to `$4B52` and the counter to `$FB` (the size of the section after the checksum). Then we iterate through the save data one byte at a time.

There are two addition operations. The first adds the current byte to the checksum using byte addition. The second adds the current counter value with the extend bit if set to the checksum using word addition and then decrements the counter.

Because the first operation results in a byte, only the low byte of the checksum is affected. If the addition operation overflows (that is, the low byte of the checksum exceeds `$FF` and rolls back around to `$00`), the high byte remains unchanged but the extend bit is set.

The second operation results in a word. If the low byte overflows, the high byte is incremented as in normal addition. The extend bit is also added to the checksum value in this instruction (`%1` if set, `%0` otherwise).

The algorithm implemented in JavaScript:

```javascript
function calculateChecksum(bytes) {
	const size = bytes.length - 4;
	let checksum = 0x4b52;

	for (let i = 0; i < size; i++) {
		const high = checksum & 0xff00;
		let low = (checksum & 0x00ff) + bytes[i + 4];

		const extend = Number(low > 0xff);

		if (extend) {
			low %= 0x100;
		}

		const counter = size + extend - i - 1;
		checksum = (high | low) + counter;
	}

	return checksum;
}
```

## Slot contents

Each slot is 12 bytes long. Offsets are given relative to the beginning of the slot and not the beginning of the file. The first slot is offset by 4 bytes; the *n*th slot is offset by 4 + (*n* − 1) × 12 bytes.

| Offset | Size | Description |
| - | - | - |
| `$00`–`$06` | 3 bytes | Attractions, character, time of day |
| `$07` | **BYTE** | Chaos Rings/Special Stages |
| `$08`–`$0B` | **LONG** | Score |
| `$0C`–`$0F` | **LONG** | Total play time |

If the first byte has a value of `$00`, the slot is treated by the game as new and the rest of the data is ignored.

### Attractions, character, time of day

This value is three bytes long, representing eight octal values.

```
001 001 001 001 001 000 000 000
 |   |   |   |   |   |   |   |
 |   |   |   |   |   |   |  Change time of day after completing next stage
 |   |   |   |   |   |  Time of day
 |   |   |   |   |  Previous character
 |   |   |   |  Current Act in Marina Madness
 |   |   |  Current Act in Techno Tower
 |   |  Current Act in Amazing Arena
 |  Current Act in Speed Slider
Current Act in Botanic Base
```
#### Change time of day after completing next stage

`%000` for false, `%100` for true. Any other value is also treated as false.

The time of day is changed after completing two stages, so this value alternates between `%000` and `%100` as the player progresses through the game. This value is unchanged if the player fails to complete a stage.

#### Time of day

The time of day is a value between `%000` and `%111`:

| Value | Round |
| - | - |
| `%000` or `%100` | Morning |
| `%001` or `%101` | Day |
| `%010` or `%110` | Sunset |
| `%011` or `%111` | Night |

#### Previous character

The previously played character:

| Value | Round |
| - | - |
| `%000` | Mighty the Armadillo |
| `%001` | Knuckles the Echidna or Charmy Bee |
| `%010` | Vector the Crocodile |
| `%011` | Espio the Chameleon |

This value does not seem to have any effect on the current game.

#### Current Act

The current Act is a value between `%001` and `%110`, representing the next playable Act of each Attraction.

Values between `%001` and `%101` correspond to each Act; a value of `%110` corresponds to "Clear."

### Chaos Rings/Special Stages

The current Special Stage, ranging from `$00` to `$0B`. Higher values behave erratically.

This value also corresponds to the number of Chaos Rings that the player has collected (since Special Stages repeat until they are successfully completed in this game). Any value greater than or equal to `$06` represents 6 Chaos Rings and rewards the player with the good ending.

The first six values (from `$00` to `$05`) represent to the standard Special Stages. The player can continue to play wireframe Special Stages after collecting all of the Chaos Rings. The next six values (from `$06` to `$0B`) represent the wireframe Special Stages. After completing all of the wireframe Special Stages, the value loops back around to `$06`.

### Score

The current score as a 32-bit integer. The largest value that the game can properly display is 9,999,999 (`$98967F`); higher values are displayed incorrectly.

### Total play time

The total play time, as shown on the in-game *Data Load* screen, in ticks.

Time in *Knuckles Chaotix* is kept in minutes, seconds, and ticks. Ticks are 1/64 of a second. To convert a time to ticks: *Hours* × 60 × 60 × 64 + *Minutes* × 60 × 64 + *Seconds* × 64 + *Ticks*.

## Appendices

### A. Default save data

```
0000 CA6F 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000
0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001
9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB
0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000
0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 CA6F 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000
0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001
9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB
0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000
0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001 9EFB 0000 0001
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
```

### B. Converter program

```perl
#!/usr/bin/perl

use strict;
use warnings;

my $file = $ARGV[0];

open my $input, '<', $file
	or die $!;
binmode $input;

my $byte = 0;
my @bytes = ();

while (read $input, $byte, 2) {
	push @bytes, substr($byte, 1);
}

close $input;

open my $output, '>', $file
	or die $!;
binmode $output;

print $output @bytes;
close $output;
```

## Authors

- J.C. Fields <jcfields@jcfields.dev>

Checksum algorithm taken from [Sonic Retro's *Knuckles Chaotix* disassembly](https://github.com/sonicretro/chaotix) by [andlabs](https://andlabs.dev/).
