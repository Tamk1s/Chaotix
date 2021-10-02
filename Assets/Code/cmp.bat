call cleanup.bat
asmx -e -w -l Sega_Jingle1.lst -C 68K -b 0x8F7574 -o Sega_Jingle1.bin cSega_Jingle1.asm > Sega_Jingle1.log
asmx -e -w -l Sega_Jingle2.lst -C 68K -b 0x8F7584 -o Sega_Jingle2.bin cSega_Jingle2.asm > Sega_Jingle2.log
asmx -e -w -l LoopChunk.lst -C 68K -b 0x8F7596 -o LoopChunk.bin cLoopChunk.asm > LoopChunk.log
asmx -e -w -l Monitor_CombiBreaker.lst -C 68K -b 0x8F75CE -o Monitor_CombiBreaker.bin cMonitor_CombiBreaker.asm > Monitor_CombiBreaker.log