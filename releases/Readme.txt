(It's best to view this readme in full-screen, with Word Wrap off)

Knuckles' Clackers v0.2c/Sonic Hacking Contest 2023 Demo Update Hotfix (09/25/2023)
By GenesisDoes
https://www.eaglesoftltd.com/retro/genesis/knuckles-clackers

===============================

Table of Contents:

1. About
2. Installation
3. Features
4. Credits
5. Known Bugs
6. Changelog
===============================

1. About

	Knuckles Clackers is a major Knuckles Chaotix game mod for the poor, ill-fated, underrated Sega Genesis 32x addon.
It is meant to be an unofficial fan-made sequel (like a "Sonic 5") to Knuckles' Chaotix for the
25th anniversary of the US release of the game (in May 2020).

	Its main focus is to create harder levels, less empty zones, and to create new content for the powerful Knuckles Chaotix game engine,
as well as to implement proper loop chunk and pathswapping sections. (The original game had very empty zones with respect to
placement of ring, badnik, gimmick, and other objects types compared to its predecessors.)
Its other focus is to research and to document how the Chaotix engine works with a more annotated disassembly,
and to tinker around with its Sega 32x engine features.

Sega 32x Chaotix engine features:
	•High-color Sega 32x sprite artwork
	•SMPS32x music with 4-channel PWM;
	•Level data paging system for tiles, blocks, and chunks (inherited from S3K)
	•Large amount of Genesis VRAM available
	•Design levels with its 2 palettes lines for both Plane A and Plane B FG/BG tilemap data

The mod aims to be the first fully-fledged modification of the game, featuring:
■New levels
	•Ports and edits of beta Techno Tower and Speed Slider Zones layouts
	 and assets from Sonic Crackers

	•Other new zones
	
■New music
■New artwork
	•Genesis tilemaps, sprites
	•32x sprite artwork
	•Genesis/32x palettes and palette cycling
	•Genesis animated level art
	
■Assembly code edits where possible/necessary
■Some restored/recreated Chaotix beta content
===============================

2. Installation

If you downloaded the ROM binary (and own a copy of the original
Knuckles Chaotix for the Sega 32x), just run it on your favorite emulator
or on real Sega 32x hardware with a flashcart.

To correctly play the modified game in Kega Fusion emulator, see the note
in "known bugs" section


Otherwise, if you downloaded the IPS patch:

Find the proper copy of a Knuckles Chaotix ROM (don't ask me how/where!),
apply the patch to the ROM via an IPS patcher, and then play it in your favorite emulator
or flashcart (also don't ask me about these).

The Chaotix ROM must be a Japanese/USA-region (code "5"/"JU") release of Knuckles' Chaotix).
This will probably be named like "Knuckles' Chaotix (32X) (JU) [!].32x"

I recommend using Stealth Patch
(SPatch, at http://stealth.hapisan.com/Utils/StealthPatch/)
(mirror of it at http://info.sonicretro.org/StealthPatch).
Use Stealth Patch to patch the Chaotix ROM with just the "base" patch.

===============================

3. Features

Demo v0.2c just has Techno Tower Zones Acts 1-4 available, and gameplay progress limited to just those zones through
the World Entrance/Newtrogic high zone. Sonic Factory Zone (for the Tutorial Zone in Isolated Island Zone)
is also available. Techno Tower Zone Act 4 is a recreation of the first half of Egg Gauntlet Zone (Sonic 2 2013 mobile)
with a boss rush of 3 bosses available. Most new music is available too.

■New Zones
	•Sonic Factory Zone (SFZ)
		•Based on Sonic Advance 3's transporter area
		•Replaces Tutorial Zone

	•Techno Tower Classic Zone (TTZC), Speed Slider Classic Zone (SSZC)
		•Port of the beta Techno Tower and Speed Slider Zones and assets from Sonic Crackers to the Knuckles Chaotix game engine
		•1st act is a port of the only level from each zone from Crackers (act 1), with finished object layouts and other minor edits.
		•Other acts (2-3) are original acts using the zone's chunks/and new assets
			•Think act 3 levels from my own Socket the Hegdeduck Sonic 1 mod
		•Egg Guantlet Zone (Part 1, from Sonic 2 2013 mobile) for Techno Tower Zone Classic Act 4

	•Proto Palace Zone (replaces Botanic Base Zone BBZ)
		•1st act is port of Hidden Palace Zone (Sonic 2 Beta)
		•2nd act is port of Proto Palace Zone (Sonic 2 2013 mobile)
		•3rd act is port of Hidden Palace Zone (from Segapede prototype)
		•4th act is original HPZ layout
		•5th act is port of Hidden Palace Zone (Sonic & Knuckles)
	•[TBD] zones, meant for replacements of
		•Marina Madness Zone (MMZ)
		•Isolated Island Zone (IIZ)
		•World Entrance/Newtrogic High Zone (WE)

	•The other new zones will contain some original artwork and assets

■New SMPS32x audio/edits
	•Various conversions of music
		•Full sound hardware utilization (6 FM+3 PSG+4 PWM channels)
		•Video game music (from MIDI and module files)
		•Hyperdimension Neptunia music
		•Other music
	•New PWM sample slots
	•Restored Crackers DAC samples
		•Backwards compatiblity for Crackers music ports)
	•Restored Sega Screen Jingle
	•Sound edits
		•PSG Jump SFX
		•Other SFX ports/edits

■New art
	•Genesis tilemaps, sprites
	•32x sprite artwork
	•Genesis/32x palettes and palette cycling
	•Genesis animated level art

■ASM edits
	•Basic ASM edits to get the new levels/mod to work
		•Modified Dynamic Level Events
		•Level Animated Art
		•Palette cycling
		•Etc.

	•Restored/recreated beta and enhanced/edited game content
		•Restored Sega Screen Jingle
		•Restored beta Character Select menu (Heavy & Bomb characters)
		•Restored Electoria beta song (Crackers) for Techno Tower Zone Classic
		•Restored/edited beta Speed Slider Zone 32x loop chunk spritemasker objects
		•Unrestricted level select menu
		•Unrestricted sound test menu (for SFX coordination flags $F0-$FF)
		•Unrestricted Training mode time-of-day cheat (undocumented cheat code, all 4 Times of Day)
			•Hold combinations of X,Y,Z buttons on a 6-button joypad to select a specific Time of Day in Training Menu, while in the Play Style submenu
			•Extended to allow forcing of morning (with Amazing Arena lit flag) and other lit variant times-of-day (via Z-button)
			
			•XYZ btn bitfield
			
			XYZ / Time-of-day
			000 = Random TOD
			001 = Morning (lit)
			010 = Day
			011 = Day (lit)
			100 = Sunset
			101 = Sunset (lit)
			110 = Night
			111 = Night (lit)

		•Edited Level Select/Debug code
			•$19950421 (Knuckles Chaotix Jap release date)
			•RGB 32x Vector3 values
				•$06 $0C $15
				 AND
				•$01 $01 $01

		•Edited Amy Soundtest code
			•Amy now replaced with Neptune
			•$19940421 (Sega 32x US release date)
			•RGB 32x Vector3 values
				•$06 $0C $14
				  AND
				•$01 $01 $01
				
	•New game features and game objects
		•Combi Breaker Monitor subtype
			•Temporarily removes the Combi tether system (until partner is called)		
		•New objects
			•Sonic 2 round/square bumpers
			•Properly working Sonic 2-styled loops and path swapper segments!
				•With proper Sega 32x sprite priority (players)
		•Modified Intro cutscene with sound effects
			•https://youtu.be/QWmxSSARN4E
		•Edits to engine to allow for Boss Rush mode (multiple bosses within a single level)
			•(Techno Tower Zone Classic acts 4/5, recreations of Egg Gauntlet Zone from Sonic 2 2013 mobile)
			
	•Engine bugfixes
		•Ring cap/Bonus stage bugs
			•Removed ring cap from both levels and Bonus Stage (now > 255 rings)
			•Bugfix for 1 second timing for Bonus Stage ring drain countdown
			•Save/Restore the level timer when entering/exiting the Bonus Stage (prevents issues with time up gameover)
			•https://youtu.be/EgbSUKcJZsE
===============================

4. Credits

Utilities/Research:

■Various from Sonic Retro
	■Chaotix hacking guide
		•Technical information
		•https://info.sonicretro.org/SCHG:Chaotix
	■Music Hacking Guide
		•Sonic Retro Music Hacking guide info
		•https://info.sonicretro.org/SCHG:Music_Hacking

■Varion Icaria
	•Chaotix Disasm research, technical information, and other assistance
	•Notes on how to expand to another 1MB ROM Data bank for 32x sprite data
	
■JCFields
	•Research and documentation about the SRAM format in Chaotix
	•https://gitlab.com/jcfields/chaotix-save-editor
	•https://jcfields.gitlab.io/chaotix-save-editor/

■Heran Bago
	•Lots of Chaotix research
	•Notes on GBA<->32x color conversion
	
■StephenUK
	•Notes on ASCII art encoding format (Title Screen menu)

■JJFTails
	•Chaotix Stats Editor notes
	•Chaotix Art Format notes
	
■MainMemory
	•ChaotixSpriteEdit tool from SonLVL suite
		•For encoding unpacked 32x artwork and later conversion
		•https://github.com/sonicretro/SonLVL/tree/master/ChaotixSpriteEdit
		
■The Poke Community
	•GBA/RGB555 (Sega 32x) color conversion formulas
	•https://www.pokecommunity.com/showthread.php?t=354075

■Cokie
	•S3K Chunk Viewer (LUA), modified for Chaotix
	•https://forums.sonicretro.org/index.php?threads/sonic-3k-gens-chunk-overlay-lua-script.41256/

■Tribeam
	•Tribeam's Realtime Palette Editor
		•Expanded to support Chaotix/SuperVDP CRAM
		•For Knuckles' Clackers development
	•https://info.sonicretro.org/Tribeam%27s_Realtime_Palette_Editor

■Clownacy
	•Captain PlanED
	•Tilemap editing
	•https://forums.sonicretro.org/index.php?threads/captain-planeed.35372/

■FragGag:
	•KENSSharp
	•https://github.com/sonicretro/KENSSharp/

■Natsumi/Aurora Fields
	•MDMusicPlayer 1.1
		•Chaotix music to SMPS ASM
		•Sonic 1 to SMPS ASM
		•Z80 Type 2 basic driver information for Sonic Crackers

	•ChaotixCompressor
		•For handling Chaotix 32x sprite art compression
		•https://github.com/NatsumiFox/ChaotixCompressor	

■FlameWing et. al.
	•S3K SMPS2ASM, used as a base for Sonic 1 to KC SMPS2ASM conversion base script
	•Flamewing Sonic 3K driver, used for easier SMPS conversion

■Oerg & Puto
	•XM3SMPS Oerg/XM4SMPS 4.1 utilities

■ValleyBell
	•MID2SMPS
	•SMPSPlay (Sonic 1 and Chaotix data)
	•MIDSplit
	•SMPSOpt
	•Info on VGI->TFI conversion
	•DPCM2PCM (PWM sample creation)
	
	•Technical information on PWM features and coordination flags
		•Runtime PWM volume control
		•Runtime PWM channel panning control

■Erik JS
	•Music Pointer Fixer utility
	
■Esrael
	•Esrael Sonic Editor II - Sound Importer
		
■Shiru
	•VGM Music Maker and command line utils
		•FM instrument creation/sampling
		•Various VGI, TFI, OPM command line utilities
		
■Neologix
	•VGM2PRE instrument ripping utility for SMPS music creation
	•https://vgmrips.net/wiki/Vgm2pre

■Yarm
	•VGM2MID utility (YM2151 edition)
	•Used to convert Sharp X68000 VGMs to MID/rip instruments
	•Used for SMPS32x conversion (MID2SMPS)
	•Used for replacement of song $0D Overture (Intro song from Geograph Seal, Sharp X68000)
	•https://vgmrips.net/forum/viewtopic.php?t=2421

■MarkeyJester
	•Sonic Crackers disassembly
		•Game
		•Z80 Sound Driver

■AkumaYin
	•More Sonic Crackers disassembly, annotation and information
	•New Sonic Crackers technical findings

■Andlabs
	•Initial Chaotix disasm
	•Info on PWM sample table
		•https://forums.sonicretro.org/index.php?threads/knuckles-chaotixs-pwm-samples-drums.17220/
	•Chaotix32XSideArtAndPaletteViewer
		•For researching 32x sprite artbanks, verification of 32x art editing
		•https://info.sonicretro.org/File:Chaoview.zip#filelinks
	•32x Bitcycler art compression format notes

■Stealth
	•SonED2 & ROMulan utilities
	•Initial SonED2 ROMulan scripts/project files
	•KCPosFix.exe
	•objyadj.exe
	•fixheadr.exe

■HiveBrain
	•PCXPal utility
		•https://segaretro.org/PCXpal
	•HivePal utility
		•v2.1: https://retrocdn.net/images/0/0c/HivePal_v2.1.7z
		•v2.2: https://retrocdn.net/images/f/f3/HivePal_v2.2.7z

■Various/misc people:
	•Irfanview
	•JRepl.bat
		•Regex find & replace text batch scripts
	•bytepatch.exe
		•Binary file patcher tool for ASM opcode patching
	•fart.exe
		•Simpler find & replace text tool
	•filesize.bat
	•Riffstrip.exe
		•Remove RIFF header from wave files
		•For PWM sample data creation
	•Sox.exe
		•Command-line wave audio resampler/editor
		•For PWM sample data creation
	•EvalBat_vbs.vbs
		•Batch file helper for computing more complex mathematical expressions


Beta testers/reviewers:
■Varion Icaria
■ProjectFM
■DeltaWooloo
■Razor & Zenon
■The public/Indie gamedev friends at the Halloween BitBridge Showcase 2021 & 2023
	
	
Artwork/assets:


■Yuri
	•Low-poly sphere 3D object
		•Pre-rendered and used for new Shield powerup sprites
		•https://3dwarehouse.sketchup.com/model/c1c6167c31a9e9941f3f1f6c8b20e50b/sphere


	•https://www.spriters-resource.com/genesis_32x_scd/sonicthehedgehogcdsegacd/sheet/29457/



Music:
■Sega
	•Hidden Palace Zone song (Sonic 2 port)
	•Electoria (beta song, Sonic Crackers port)
	•Sonic 1 goal song (port)
	•Death Egg Zone (Sonic 2 port)
■LordXernon/DJ Error
	•Sonic 2 - Club Scene (Unreleased) SMPS
	•https://youtu.be/q0TuoI-vz8Q?si=DWIPDwdq3xB8fTdm
	•Ported to SMPS32x with written permission
	•Used for Speed Slider Zone Classic music
■LukeeGD
	•Elegy (HyperDimension Neptunia V)
		•Used for new Bonus Stage song
		•https://www.youtube.com/watch?v=KORSe98tW2c
		•https://lukezgd.github.io/midi-files/midis/Hyperdimension%20Neptunia%20ReBirth%203%20-%20Elegy%20(Incomplete)%20-%20MIDI%20by%20LukeeGD.mid

■RedHotSonic/ValleyBell
	•Sonic Factory SMPS (Sonic Advanced 3, RedHotSonic FM patches)
	•

■Unknown Authors:
	•Dimension Tripper (HyperDimension Neptunia Anime OP)
	•Used for new Good Ending song
	•https://onlinesequencer.net/1412428

■JangoBoba
	•Blue Twilight (HyperDimension Neptunia series)
		•Used for new Bad Ending song
		•https://musescore.com/user/13260206/scores/5516068
	•Blue Moon (MegaDimension Neptunia V2)
		•Used for new Amazing Arena Zone unlit song
		•https://musescore.com/user/13260206/scores/3918921

■Nomy
	•Original Zelda vs. Nomy XM module file
	•For new final boss fight song
	•https://modarchive.org/index.php?request=view_by_moduleid&query=67866

■Sonic Team JR
	•SRB2 Invicinbility

■ValleyBell
	•Technical Notes on Chaotix PWM driver SMPS CF features (PWM panning, volume control)
	•Written permission explicitly given to use instrument patches from Sonic 2 Recreation's Sonic Factory SMPS port
		•For my own SMPS32x conversion/remix
		•Original MIDI: https://www.vgmusic.com/music/console/nintendo/gba/sonic_factory.mid
		
■Devon
	•Sonic CD diassembly
	•Used for SFX ports of SFX $BC, $C5, $CE
	•https://github.com/DevsArchive/sonic-cd-disassembly

■Flamewing
	•Sonic 3K Flamewing driver
	•Used for SFX port of SFX S3K $62 (PSG Jump)
===============================

5. Known Bugs

Known bugs/demo restrictions:

■Emulator Compatibility with modified Chaotix game (Kega Fusion)

	•To quote Stealth from the SonED2/ROMulan Chaotix project notes:

    •"This game uses a special timing mode of the 32x that emulators must support in order to run the game correctly.
	 If the emulator is not using the correct mode, there may be severe graphical errors and crashes.

     Some emulators, such as Kega, only enter this mode when they realize that they are running this game,
	 which is handled by performing a checksum on the game and comparing it to the known checksum of an unmodified version.
	 
	 Modifying the game changes the checksum, and thus, renders it unrecognizeable.

    To correctly play the modified game in Kega, use the 'Set Config...' option in the 'Options' menu.
	Once the config window appears, select the '32x' tab, and search for a checkbox that reads 'Fast 32x Timing'.
	This box must be checked in order for the game to behave correctly.
	This option only exists in newer Kega releases."

■Gameplay
	•Gameplay progression restricted to only Techno Tower Classic Zone Acts 1-4
	•Autodemos disabled

■Graphics issues
	•Sega/Gameover space BG temporarily disabled
	•TTZ Classic parallax incomplete
		•Uses AAZ parallax
		•Research needed into how Chaotix parallax works
	•Palette issues with 8x8 ASCII text font in Tutorial Zone
	•Speed Slider Zone / Techno Tower Zone Classic disabled 32x sprite level icons have wrong colors
		•HUB level status screen
		•32x palette/sprite art need edited
	•The default SRAM save file slot #3 is bugged with a high time/negative score when using (?). DO NOT USE this default save slot!

■Audio issues
	•Some music slots NOPd out (Z80 bank mgmt)
	•Some music needs mastered and polished before finalization 
		•Volume control mixing
		•FM patches/channels and PSG channels for volume control

===============================

6. Change Log:
■v0.2c (09/25/2023, Sonic Hacking Contest 2023 demo update HOTFIX)
	•Summary
		•Fixed a game breaking bug with TTZ4/Egg Gauntlet zone boss triggers and partner death in 2P mode
			•If in 2P mode, player 1 dies, and the 2nd player reaches a boss trigger in TTZ4/Egg Gauntlet Zone, he will be called towards the dead player 1 (out-of-bounds) from the boss arena.
			•This bug leads to a soft lock
			•This bug also causes a ghostly, transparent second Espio to appear in Isolated Island (Intro) act 0 on a new save game
			•Both bugs fixed!
		

■v0.2b (09/25/2023, Sonic Hacking Contest 2023 demo update)
	•Summary
		•Sonic Hacking Contest 2023 build (update week)
		•Implemented new Death Egg Zone (Sonic 2 port) song for TTZ Act 4 level
		•Implemented lava palette cycling for TTZ Act 4 level		
		•Changed graphics for TTZ4 projector screen blocks/tiles (AAZ mini/boss)
		•Fixed crashes near lava section and from backtracking in TTZ Act 4 (simpler 32x sprite object placement)
		•Added more right one-way doors in TTZ Act 4, modified level layout for doors		
		•Improved object positioning for TTZ Act 4 level		
		•Improved collision for quarter pipe launch off chunks
		•Replaced a quarter pipe chunk with an alternate chunk to hide Sega 32x sprite loop spritemasker in floor (TTZ Act 3)
		•Fixed bug with Shrink powerup effect instantaneously becoming undone
	
■v0.2a (09/16/2023, Sonic Hacking Contest 2023 demo)
	•Summary
		•Sonic Hacking Contest 2023 build
		•New Egg Gauntlet Zone part 1 level (Techno Tower Zone Classic Act 4, from Sonic 2 2013 mobile)
		•Implemented engine changes to allow for multiple bosses within an act (boss rush mode)
		
	•New Music
		•Hidden Palace Zone (Sonic 2)
			•For Proto Palace Zone
		•Sonic 2 Club Mix (Sonic 2 beta)
			•For Speed Slider Zone Classic
			•Credits to LordXernon/DJ Error for allowing me to port these to Chaotix
		•Imported Splash (HyperDimension Neptunia Re;birth 1)
			•For TTZC boss

■v0.11b (08/12/2023, August 2023 demo)
	•Summary
		•Bugfix to save/restore the level timer when entering/exiting the Bonus Stage, to fix level time up gameover issues
		•No more prevention in entering the Bonus Stages/ejection when <10 seconds remain on the level timer
	
■v0.1b (08/12/2023, August 2023 demo)
	•Summary
		•New menu and other artwork, audio assets, code edits, engine bugfixes
		•Polish of v0.1a build
		•Still only 3 acts of Techno Tower Zone (1-3, Morning to Night) and Tutorial Zone		
		
	
	•Artwork edits
		•Menus
			•New Title Screen road palette/cycle
			•New 8x8 menu font
				•Final Fantasy 6 SNES font
				•Tri-color			
			•New Menu Background artwork
				•Purple background oval
				•Sega Neptune console logo
				•Neptune logo (HyperDimension Neptunia)

		•Sprites
			•New Genesis/32x level icon sprites
				•SSZC (Speed Slider Zone Classic)		
				•TTZC (Techno Tower Zone Classic)		
				•Level icons for Data Load menu (Genesis sprites)
				•Level icons for HUB level status screen (32x sprites)

		•Level edits
			•Final boss edits
				•Blue Metal Sonic Kai Genesis/32x palettes
				•Green boss arena (32x polygon palette)			
			•Techno Tower Zone Classic 
				•New tiles, blocks, and chunks for loop sections
				•Better chunk artwork for player 32x sprite prioirty to go "behind" loop sections
				

	•Audio edits
		•Music
			•New song for $01 Door Into Summer
				•Isolated Island/Training zone song
				•South Island (Sonic OVA anime)
			
			•Updated song $03 PSG/PWM test
				•Support for new PWM samples

			•New song for $0D Overture
				•Intro cutscene song
				•Intro song (Geograph Seal, Sharp X68000)
		
			•New song for $11 Take A Nap
				•New game intro level song		
				•Helper's Rest (Kirby Superstar Ultra)
	
			•Replaced song for $12 Surging Power
				•Invicinbility jingle
				•SRB2 Invincibility song
				
			•Updated song $1A Tachy Touchy
				•Bonus Stage song
				•Elegy (HyperDimension Neptunia V)
				•Rearranged song with new Orch Hit PWM samples
			
			•New song for $28 Just Another Day
				•Good Ending song
				•Dimension Tripper!!! (HyperDimension Neptunia: The Animation OP)
				
		•SFX
			•Combine Ring powerup SFX (SFX $3E, Sonic CD port)
			•Shrink powerup SFX edit (SFX $59, Sonic CD port)
			•Grow powerup SFX edit (SFX $5A, Sonic CD port)
			•Dash SFX edit (SFX $5B, Sonic CD port)
			•Jump SFX edit (SFX $5F, port of PSG Jump from S3K)
			
		•PWM
			•Bugfixes to removal looping electrical buzz noise from PWM samples
			•New Orch Hit PWM Samples
				•Sample IDs $9F-$A2
				

	•Code edits
		•Disabled autoDemos
		•Modified Intro cutscene with sound effects
		•Unrestricted Character Select menu (can select duplicate players in 2P menu for Training)
		•Engine bugfixes
			•Removed ring cap from both levels and Bonus Stage (now > 255 rings)
			•Bugfix for 1 second timing for Bonus Stage ring drain countdown
			•Save/Restore the level timer when entering/exiting the Bonus Stage (prevents issues with time up gameover)		
		

■v0.1a (10/29/2021, BitBridge Halloween Showcase 2021 demo)
	•Initial early demo release!
	
	•Techno Tower Classic Zone
		•Acts 1-3
		•Morning to Night

	•Sonic Factory Zone
		•Replaces Tutorial Zone

===============================


EOF