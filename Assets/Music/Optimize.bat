REM Simple script which will optimize standard Sonic 1 SMPS files here, during 32x conversion

REM Expected files:
REM S1.bin - Main Sonic 1 tune (FM & PSG)


REM PWM1.bin to PWM4.bin - PWM channels.

REM If wish to handle pan and volume control, treat DAC channel as single-channel FM SMPS,
REM replace notes with PWM samples, remove FM/PSG specific CFs

REM Only keep smpsJump
REM smpsLoop
REM smpsReturn
REM smpsCall
REM smpsAlterVol
REM smpsPan

REM If don't care about pan/volume control, just treat each file as a DAC SMPS

cls
SMPSOpt.exe S1 S1.bin S1_Opt.bin
SMPSOpt.exe S1 PWM1.bin PWM1_Opt.bin
SMPSOpt.exe S1 PWM2.bin PWM2_Opt.bin
SMPSOpt.exe S1 PWM3.bin PWM3_Opt.bin
SMPSOpt.exe S1 PWM4.bin PWM4_Opt.bin
pause