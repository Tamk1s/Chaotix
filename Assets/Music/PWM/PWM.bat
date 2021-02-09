@Echo Off
Cls
CD "%~dp0\"
REM Processing of wav files for Chaotix PWM Driver

REM Delete all local stuff
del *.wav
del *.bin
del *.ini
del PWMTable.txt

REM Resample any new PWM wav samples as necessary with sox, copy to local dir.
REM sox.exe -r 11025 -b 8 -c 1 -e unsigned "Orig\Kick.wav" "Kick.wav" speed 1.00

Echo Prep Work...
Echo Creating local copies of wav files

REM Copy all other vanilla wave files to here
copy /y "Orig\81.wav" "81.wav"
copy /y "Orig\82.wav" "82.wav"
copy /y "Orig\83.wav" "83.wav"
copy /y "Orig\84.wav" "84.wav"
copy /y "Orig\85-87.wav" "85-87.wav"
copy /y "Orig\88.wav" "88.wav"
copy /y "Orig\89.wav" "89.wav"
copy /y "Orig\8A.wav" "8A.wav"
copy /y "Orig\8B.wav" "8B.wav"
copy /y "Orig\8C.wav" "8C.wav"
copy /y "Orig\8D.wav" "8D.wav"
copy /y "Orig\8E.wav" "8E.wav"
copy /y "Orig\8F.wav" "8F.wav"
copy /y "Orig\90-91.wav" "90-91.wav"
copy /y "Orig\92-93.wav" "92-93.wav"
copy /y "Orig\94-95.wav" "94-95.wav"
copy /y "Orig\96.wav" "96.wav"
REM !@ New Data (Sega, CloseHH, OpenHH)
copy /y "Orig\97.wav" "97.wav"
copy /y "Orig\98.wav" "98.wav"
copy /y "Orig\99.wav" "99.wav"

REM Remove RIFF headers
Echo Strip off the RIFF headers
riffstrip.exe "81.wav"
riffstrip.exe "82.wav"
riffstrip.exe "83.wav"
riffstrip.exe "84.wav"
riffstrip.exe "85-87.wav"
riffstrip.exe "88.wav"
riffstrip.exe "89.wav"
riffstrip.exe "8A.wav"
riffstrip.exe "8B.wav"
riffstrip.exe "8C.wav"
riffstrip.exe "8D.wav"
riffstrip.exe "8E.wav"
riffstrip.exe "8F.wav"
riffstrip.exe "90-91.wav"
riffstrip.exe "92-93.wav"
riffstrip.exe "94-95.wav"
riffstrip.exe "96.wav"
REM !@ New Data
riffstrip.exe "97.wav"
riffstrip.exe "98.wav"
riffstrip.exe "99.wav"

REM Rename results from .wav.stripped to .bin . These are the raw LPCM samples (PWM Driver)
Echo Rename stripped files
ren "81.wav.stripped" "81.bin"
ren "82.wav.stripped" "82.bin"
ren "83.wav.stripped" "83.bin"
ren "84.wav.stripped" "84.bin"
ren "85-87.wav.stripped" "85-87.bin"
ren "88.wav.stripped" "88.bin"
ren "89.wav.stripped" "89.bin"
ren "8A.wav.stripped" "8A.bin"
ren "8B.wav.stripped" "8B.bin"
ren "8C.wav.stripped" "8C.bin"
ren "8D.wav.stripped" "8D.bin"
ren "8E.wav.stripped" "8E.bin"
ren "8F.wav.stripped" "8F.bin"
ren "90-91.wav.stripped" "90-91.bin"
ren "92-93.wav.stripped" "92-93.bin"
ren "94-95.wav.stripped" "94-95.bin"
ren "96.wav.stripped" "96.bin"
REM !@ New Data
ren "97.wav.stripped" "97.bin"
ren "98.wav.stripped" "98.bin"
ren "99.wav.stripped" "99.bin"

REM Copy all LPCM files, rename to PWM_XX (0-based naming for SMPSPlay)
Echo Rename a copy of files for SMPSPlay
Copy /Y "81.bin" "PWM_00.bin"
Copy /Y "82.bin" "PWM_01.bin"
Copy /Y "83.bin" "PWM_02.bin"
Copy /Y "84.bin" "PWM_03.bin"
Copy /Y "85-87.bin" "PWM_04.bin"
Copy /Y "88.bin" "PWM_07.bin"
Copy /Y "89.bin" "PWM_08.bin"
Copy /Y "8A.bin" "PWM_09.bin"
Copy /Y "8B.bin" "PWM_0A.bin"
Copy /Y "8C.bin" "PWM_0B.bin"
Copy /Y "8D.bin" "PWM_0C.bin"
Copy /Y "8E.bin" "PWM_0D.bin"
Copy /Y "8F.bin" "PWM_0E.bin"
Copy /Y "90-91.bin" "PWM_0F.bin"
Copy /Y "92-93.bin" "PWM_11.bin"
Copy /Y "94-95.bin" "PWM_13.bin"
Copy /Y "96.bin" "PWM_15.bin"
REM !@ New Data
Copy /Y "97.bin" "PWM_16.bin"
Copy /Y "98.bin" "PWM_17.bin"
Copy /Y "99.bin" "PWM_18.bin"

REM Copy all LPCM files to SMPSPlay
Echo Copy all files to SMPSPlay
Copy /Y "PWM_*.bin" "..\Preview\Data\Knuckles Maniax\PWM\"

SetLocal EnableDelayedExpansion
REM Generate new PWM.ini for SMPSPlay, copy it over

REM Length of struct array (0-based)
SET LEN=24

REM Struct array elements:
REM .file = Original wav file (for sampling)
REM .dfile = LPCM Data file (either HH.bin for PWM Driver, PWM_HH.bin for SMPSPlay)
REM .rate = PWM Driver pitch factor (hex). "s" = calculate from wav's frequency, value = override value. Used for duplicate PWM slots with different pitches
REM .create = Inject this slot's LPCM data blob? "y" = yes, "n" = no. Used for duplicate PWM slots

REM .addr = SH-2 virtual ROM address override (in hex, SH-2 addr) to inject blob at.
REM 0 = Use current PC addresss in PWM bank baseaddr,
REM other hex value = override. Used for relocating large PWM samples (e.g. new Sega chant into padding area)

SET PAR[0].file=81.wav
SET PAR[1].file=82.wav
SET PAR[2].file=83.wav
SET PAR[3].file=84.wav
SET PAR[4].file=85-87.wav
SET PAR[5].file=85-87.wav
SET PAR[6].file=85-87.wav
SET PAR[7].file=88.wav
SET PAR[8].file=89.wav
SET PAR[9].file=8A.wav
SET PAR[10].file=8B.wav
SET PAR[11].file=8C.wav
SET PAR[12].file=8D.wav
SET PAR[13].file=8E.wav
SET PAR[14].file=8F.wav
SET PAR[15].file=90-91.wav
SET PAR[16].file=90-91.wav
SET PAR[17].file=92-93.wav
SET PAR[18].file=92-93.wav
SET PAR[19].file=94-95.wav
SET PAR[20].file=94-95.wav
SET PAR[21].file=96.wav
REM !@ New Data
SET PAR[22].file=97.wav
SET PAR[23].file=98.wav
SET PAR[24].file=99.wav

SET PAR[0].dfile=PWM_00.bin
SET PAR[1].dfile=PWM_01.bin
SET PAR[2].dfile=PWM_02.bin
SET PAR[3].dfile=PWM_03.bin
SET PAR[4].dfile=PWM_04.bin
SET PAR[5].dfile=PWM_04.bin
SET PAR[6].dfile=PWM_04.bin
SET PAR[7].dfile=PWM_07.bin
SET PAR[8].dfile=PWM_08.bin
SET PAR[9].dfile=PWM_09.bin
SET PAR[10].dfile=PWM_0A.bin
SET PAR[11].dfile=PWM_0B.bin
SET PAR[12].dfile=PWM_0C.bin
SET PAR[13].dfile=PWM_0D.bin
SET PAR[14].dfile=PWM_0E.bin
SET PAR[15].dfile=PWM_0F.bin
SET PAR[16].dfile=PWM_0F.bin
SET PAR[17].dfile=PWM_11.bin
SET PAR[18].dfile=PWM_11.bin
SET PAR[19].dfile=PWM_13.bin
SET PAR[20].dfile=PWM_13.bin
SET PAR[21].dfile=PWM_15.bin
REM !@ New Data
SET PAR[22].dfile=PWM_16.bin
SET PAR[23].dfile=PWM_17.bin
SET PAR[24].dfile=PWM_18.bin

SET PAR[0].rate="s"
SET PAR[1].rate="s"
SET PAR[2].rate="s"
SET PAR[3].rate="s"
SET PAR[4].rate="s"
SET PAR[5].rate="8748"
SET PAR[6].rate="6557"
SET PAR[7].rate="s"
SET PAR[8].rate="s"
SET PAR[9].rate="s"
SET PAR[10].rate="s"
SET PAR[11].rate="s"
SET PAR[12].rate="s"
SET PAR[13].rate="s"
SET PAR[14].rate="s"
SET PAR[15].rate="s"
SET PAR[16].rate="8258"
SET PAR[17].rate="s"
SET PAR[18].rate="8258"
SET PAR[19].rate="s"
SET PAR[20].rate="8258"
SET PAR[21].rate="s"
REM !@ New Data
SET PAR[22].rate="5514"
SET PAR[23].rate="s"
SET PAR[24].rate="5514"

SET PAR[0].create="y"
SET PAR[1].create="y"
SET PAR[2].create="y"
SET PAR[3].create="y"
SET PAR[4].create="n"
SET PAR[5].create="n"
SET PAR[6].create="y"
SET PAR[7].create="y"
SET PAR[8].create="y"
SET PAR[9].create="y"
SET PAR[10].create="y"
SET PAR[11].create="y"
SET PAR[12].create="y"
SET PAR[13].create="y"
SET PAR[14].create="y"
SET PAR[15].create="n"
SET PAR[16].create="y"
SET PAR[17].create="n"
SET PAR[18].create="y"
SET PAR[19].create="n"
SET PAR[20].create="y"
SET PAR[21].create="y"
REM !@ New Data
SET PAR[22].create="y"
SET PAR[23].create="y"
SET PAR[24].create="y"

SET PAR[0].addr=0
SET PAR[1].addr=0
SET PAR[2].addr=0
SET PAR[3].addr=0
SET PAR[4].addr=0
SET PAR[5].addr=0
SET PAR[6].addr=0
SET PAR[7].addr=0
SET PAR[8].addr=0
SET PAR[9].addr=0
SET PAR[10].addr=0
SET PAR[11].addr=0
SET PAR[12].addr=0
SET PAR[13].addr=0
SET PAR[14].addr=0
SET PAR[15].addr=0
SET PAR[16].addr=0
SET PAR[17].addr=0
SET PAR[18].addr=0
SET PAR[19].addr=0
SET PAR[20].addr=0
SET PAR[21].addr=0
REM !@ New Data. Manually force this sample to addr of ROMEnd ($300000) - size at end of ROM
SET PAR[22].addr=222FE63C
SET PAR[23].addr=222FDAC8
SET PAR[24].addr=222FDD70

REM Create header of SMPSPlay PWM.INI 
call create_PWM_INI_Hdr.bat

ECHO Creating meat of PWM INI file for SMPSPlay (for each PWM slot)

REM Iterate through each struct array index
FOR /L %%G IN (0,1,!LEN!) DO (	
	REM Get each element from the current struct array element, cache %%G iterator into _id
	Set _file=!PAR[%%G].file!
	Set _dfile=!PAR[%%G].dfile!
	Set _rate=!PAR[%%G].rate!
	Set _create=!PAR[%%G].create!
	Set _addr=!PAR[%%G].addr!
	Set _id=%%~G	
	
	REM Create a PWM entry
	ECHO call create_PWM_INI_Meat.bat !_file! !_dfile! !_rate! !_create! !_addr! !_id!
	call create_PWM_INI_Meat.bat !_file! !_dfile! !_rate! !_create! !_addr! !_id!
)

REM Copy over finalized PWM.ini to SMPSPlay preview folder
Echo Done! Copying over PWM.ini to SMPSPlay preview folder
copy /y "PWM.ini" "..\Preview\Data\Knuckles Maniax"

REM Create a new PWM table for Sound Driver
Cls
Echo Create new PWM Table for Sound Driver...
REM Change data files to bin variety set, starting at 81.bin (for Sound Driver)
SET PAR[0].dfile=81.bin
SET PAR[1].dfile=82.bin
SET PAR[2].dfile=83.bin
SET PAR[3].dfile=84.bin
SET PAR[4].dfile=85-87.bin
SET PAR[5].dfile=85-87.bin
SET PAR[6].dfile=85-87.bin
SET PAR[7].dfile=88.bin
SET PAR[8].dfile=89.bin
SET PAR[9].dfile=8A.bin
SET PAR[10].dfile=8B.bin
SET PAR[11].dfile=8C.bin
SET PAR[12].dfile=8D.bin
SET PAR[13].dfile=8E.bin
SET PAR[14].dfile=8F.bin
SET PAR[15].dfile=90-91.bin
SET PAR[16].dfile=90-91.bin
SET PAR[17].dfile=92-93.bin
SET PAR[18].dfile=92-93.bin
SET PAR[19].dfile=94-95.bin
SET PAR[20].dfile=94-95.bin
SET PAR[21].dfile=96.bin
REM !@ New Data
SET PAR[22].dfile=97.bin
SET PAR[23].dfile=98.bin
SET PAR[24].dfile=99.bin

REM Base SH-2 virtual addr for raw ROM addr ($580000)
REM Offset from base for PWMTable.bin (array entries * 8 bc longwords)
REM Set baseaddr += offset
REM Temp file for hex bytecodes for PWMTable 
SET BaseAddr=0x22058000
SET /a Offset=(!LEN!+1)*16
SET /a BaseAddr=!BaseAddr!+!Offset!
del /Q PWMTable.txt

REM Iterate through all PWM slots
FOR /L %%G IN (0,1,%LEN%) DO (
	REM Get each element from this struct array index
	Set _file=!PAR[%%G].file!
	Set _dfile=!PAR[%%G].dfile!
	Set _rate=!PAR[%%G].rate!
	Set _create=!PAR[%%G].create!	
	Set _addr=!PAR[%%G].addr!
	
	REM Get filesize of this data file
	SET FZ=0
	call filesize.bat !_dfile! FZ
	
	REM Create a PWM entry in the table
	ECHO Call create_PWM_Table_Meat.bat !_file! !_dfile! !_rate! !_create! !_addr! !BaseAddr!
	call create_PWM_Table_Meat.bat !_file! !_dfile! !_rate! !_create! !_addr! !BaseAddr!
	
	REM Increment NewAddr (if "y" new file), ID		
	Set _create=!PAR[%%G].create!
	IF !_create! EQU "y" (
		REM Get filesize of file		
		SET /a BaseAddr=!BaseAddr!+!FZ!
	)
)

REM Compile the temp Table text file into a binary file
call create_PWM_Table_End.bat
EndLocal

REM Copy all LPCM/PWM Table file to Sound Driver staging
cls
ECHO Copy all LCPM files to Sound Driver staging...
del PWM_*.bin
Copy /Y *.bin ..\..\..\Sound\PWM\

ECHO(
ECHO Delete all temp files...
del *.ini
del *.bin
del *.wav
del PWMTable.txt
ECHO Done!
cls
@Echo off