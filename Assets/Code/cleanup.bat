cls
del *.log
del *.lst

attrib +h msu-drv.bin
attrib +h msuLockout.bin
del *.bin
attrib -h msu-drv.bin
attrib -h msuLockout.bin