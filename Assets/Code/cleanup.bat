cls
del *.log
del *.lst

attrib +h msu-drv.bin
attrib +h msuLockout.bin
attrib +h SHC_Advanced.bin
del *.bin
attrib -h msu-drv.bin
attrib -h msuLockout.bin
attrib -h h SHC_Advanced.bin