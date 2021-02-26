REM Simple batch script to translate MDMusicPlayer S1 SMPS2ASM files to S1KC for easier SMPS creation

REM Expected file:
REM S1_Opt.asm - Main song (FM & PSG, optimized)
call conv.bat "S1_Opt.asm" "$40000"