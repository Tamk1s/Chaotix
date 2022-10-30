:Loop
REM Compare the final ROM hack to the prepatched ROM repeatedly while building/debugging
REM Manuall goto ROM address $A0000 to check 32x AP3 Sprite Banks for longword alignment (debugging util)
vbindiff.exe kc.bin inject.bin
GOTO Loop