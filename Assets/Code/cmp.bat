REM call cleanup.bat
asmx -e -w -l Sega_Jingle1.lst -C 68K -b 0x8F7574 -o Sega_Jingle1.bin cSega_Jingle1.asm > Sega_Jingle1.log
asmx -e -w -l Sega_Jingle2.lst -C 68K -b 0x8F7594 -o Sega_Jingle2.bin cSega_Jingle2.asm > Sega_Jingle2.log
asmx -e -w -l LoopChunk.lst -C 68K -b 0x8F75A6 -o LoopChunk.bin cLoopChunk.asm > LoopChunk.log
asmx -e -w -l Monitor_CombiBreaker.lst -C 68K -b 0x8F75DE -o Monitor_CombiBreaker.bin cMonitor_CombiBreaker.asm > Monitor_CombiBreaker.log
asmx -e -w -l DemoPatch2.lst -C 68K -b 0x8F7600 -o DemoPatch2.bin cDemoPatch2.asm > DemoPatch2.log
REM asmx -e -w -l Pal32x_Debug.lst -C 68K -b 0x8F7650 -o Pal32x_Debug.bin cPal32x_Debug.asm > Pal32x_Debug.log
asmx -e -w -l Intro.lst -C 68K -b 0x8F769A -o Intro.bin cIntro.asm > Intro.log
asmx -e -w -l BSRing_Fix.lst -C 68K -b 0x8F76E0 -o BSRing_Fix.bin cBSRing_Fix.asm > BSRing_Fix.log
asmx -e -w -l IIZ_Grabber.lst -C 68K -b 0x8F773C -o IIZ_Grabber.bin cIIZ_Grabber.asm > IIZ_Grabber.log
REM asmx -e -w -l MSU.lst -C 68K -b 0x8F773C -o MSU.bin cMSU.asm > MSU.log
REM asmx -e -w -l BigRing_Frames.lst -C 68K -b 0x892902 -o BigRing_Frames.bin cBigRing_Frames.asm > BigRing_Frames.log
REM asmx -e -w -l BossMode2.lst -C 68K -b 0x8F7662 -o BossMode2.bin cBossMode2.asm > BossMode2.log
REM asmx -e -w -l Menu_Palc.lst -C 68K -b 0x8F76FA -o Menu_Palc.bin cMenu_Palc.asm > Menu_Palc.log

asmx -e -w -l BossSpawn.lst -C 68K -b 0x9F83DA -o BossSpawn.bin cBossSpawn.asm > BossSpawn.log
asmx -e -w -l Spikes2.lst -C 68K -b 0x9F84E6 -o Spikes2.bin cSpikes2.asm > Spikes2.log
asmx -e -w -l Balloons.lst -C 68K -b 0x9F852A -o Balloons.bin cBalloons.asm > Balloons.log
asmx -e -w -l BossSpawnEnd.lst -C 68K -b 0x9F85E0 -o BossSpawnEnd.bin cBossSpawnEnd.asm > BossSpawnEnd.log

asmsh /q /p /o i+ /o psh2 /o w- "SSRing_Fix.asm","SSRing_Fix.bin", ,"SSRing_Fix.out" > SSRing_Fix.log
REM asmx -e -w -l SHC_Logo.lst -C 68K -b 0xA00000 -o SHC_Logo.bin cSHC_Logo.asm > SHC_Logo.log


zerofill.exe -f -q 1048576 PAD.bin