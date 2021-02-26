REM Simple batch script to translate MDMusicPlayer S1 SMPS2ASM files to S1KC for easier SMPS creation

REM Expected files:
REM PWM1_Opt.asm to PWM4_Opt.asm (PWM channels, optimized)
call conv.bat "PWM1_Opt.asm" "$40000"
call conv.bat "PWM2_Opt.asm" "$40000"
call conv.bat "PWM3_Opt.asm" "$40000"
call conv.bat "PWM4_Opt.asm" "$40000"