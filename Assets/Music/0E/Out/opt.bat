cls
del S1_opt.bin
del PWM1_opt.bin
del PWM2_opt.bin
del PWM3_opt.bin
del PWM4_opt.bin

..\..\SMPSOpt.exe S1 S1.bin S1_opt.bin > S1_opt.log
..\..\SMPSOpt.exe S1 PWM1.bin PWM1_opt.bin > PWM1_opt.log
..\..\SMPSOpt.exe S1 PWM2.bin PWM2_opt.bin > PWM2_opt.log
..\..\SMPSOpt.exe S1 PWM3.bin PWM3_opt.bin > PWM3_opt.log
..\..\SMPSOpt.exe S1 PWM4.bin PWM4_opt.bin > PWM4_opt.log
pause