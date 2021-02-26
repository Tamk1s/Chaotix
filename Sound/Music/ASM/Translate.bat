REM Simple batch script to translate MDMusicPlayer S1 SMPS2ASM files to S1KC for easier SMPS creation

REM Expected files:
REM S1_Opt.asm - Main song (FM & PSG, optimized)
REM PWM1_Opt.asm to PWM4_Opt.asm (PWM channels, optimized)

cls
call translate_S1.bat
call translate_PWM.bat
pause