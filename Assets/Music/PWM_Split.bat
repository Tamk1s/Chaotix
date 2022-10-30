REM Simple script which will split the chords of a complete PWM sequence

REM Expected files:
REM In: PWM_Full.mid
REM Out: PWM_Separated.mid

cls
midsplt.exe note PWM_Full.mid PWM_Separated.mid
pause