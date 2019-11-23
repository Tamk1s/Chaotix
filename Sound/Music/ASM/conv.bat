REM Batch script which will convert SMPS2ASM macro function naming
REM from MDMusicPlayer's Chaotix format to the more-standardized version
REM to match those in my custom SMPS2ASM_S1KC.asm SMPS2ASM include file

REM Used by split_conv.bat to convert extracted, vaniall Natsumi songs from vanilla Chaotix driver
REM to S1KC format. Used for converting to standard denominator

REM Inputs:
REM %~1 = Input ASM file to convert to S1KC format
REM %~2 = Where to relocate this song to (ex, input "$40000" to target Bank 0 at start $8000)
SET ASMFILE=%~1
SET BANK=%~2
ECHO ON
ECHO Convert %ASMFILE% to S1KC Format
ECHO OFF

REM https://regex101.com/
REM Header fixing
REM Replace sHeaderInit cmd with define for target ROM bank location (Target	EQU	$offset)
call JREPL.bat "(sHeaderInit)*?(; Z80 offset is )" "Target\tEQU\t" /XSEQ /f "%ASMFILE%" /o -
call JREPL.bat ".(sHeaderInit).*(Target)" "Target" /XSEQ /f "%ASMFILE%" /o -
call JREPL.bat "Target\tEQU\t\x24...." "Target\tEQU\t%BANK%" /XSEQ /f "%ASMFILE%" /o -
call JREPL.bat ".*_Header:" "" /f "%ASMFILE%" /o -

REM Rename sHeaderPatch to smpsHeaderVoice
REM Append Target param to smpsHeaderVoice cmd
call JREPL.bat "sHeaderPatch" "smpsHeaderVoice" /f "%ASMFILE%" /o -
call JREPL.bat "(smpsHeaderVoice.*)" "$1, Target" /f "%ASMFILE%" /o -

REM Rename sHeaderCh to smpsHeaderChan
call JREPL.bat "sHeaderCh" "smpsHeaderChan" /f "%ASMFILE%" /o -

REM Rename sHeaderSFX to smpsHeaderSFX
REM Add songstart after EOL
call JREPL.bat "sHeaderSFX" "smpsHeaderSFX" /f "%ASMFILE%" /o -
call JREPL.bat "(smpsHeaderSFX.*)" "$1, Target" /f "%ASMFILE%" /o -

REM Rename sHeaderTempo to smpsHeaderTempo
REM We don't need to convert tempo, since it is absolute and already in S3K format for KC
call JREPL.bat "sHeaderTempo" "smpsHeaderTempo" /f "%ASMFILE%" /o -

REM Rename sHeaderFM to smpsHeaderFM
REM Add Target param after 1st (comma)
REM https://superuser.com/questions/266732/matching-only-the-first-occurrence-in-a-line-with-regex
call JREPL.bat "sHeaderFM" "smpsHeaderFM" /f "%ASMFILE%" /o -
call JREPL.bat "(smpsHeaderFM([^,]+),)" "$1 Target," /f "%ASMFILE%" /o -

REM Rename sHeaderPSG to smpsHeaderPSG
REM Add Target param after 1st (comma)
call JREPL.bat "sHeaderPSG" "smpsHeaderPSG" /f "%ASMFILE%" /o -
call JREPL.bat "(smpsHeaderPSG([^,]+),)" "$1 Target," /f "%ASMFILE%" /o -

REM Rename sHeaderPWM to smpsHeaderPWM
REM Add Target param after 1st (comma)
call JREPL.bat "sHeaderPWM" "smpsHeaderPWM" /f "%ASMFILE%" /o -
call JREPL.bat "(smpsHeaderPWM([^,]+),)" "$1 Target," /f "%ASMFILE%" /o -


REM Rename some constants (volume, mod, PWM)
REM Rename any v0/v1 PSG voice constants
call JREPL.bat "v0" "$$0" /f "%ASMFILE%" /o -
call JREPL.bat "v1" "$$1" /f "%ASMFILE%" /o -

REM Rename any m0/m1 PSG voice constants
call JREPL.bat "m0" "$$0" /f "%ASMFILE%" /o -

REM Rename any p8/p9 PWM constants
call JREPL.bat "p8" "$$8" /f "%ASMFILE%" /o -
call JREPL.bat "p9" "$$9" /f "%ASMFILE%" /o -


REM SMPS Cmds with songStart needed

REM Rename sJump to smpsJump
REM Add Target param to EOL
call JREPL.bat "sJump" "smpsJump" /f "%ASMFILE%" /o -
call JREPL.bat "(smpsJump.*)" "$1, Target" /f "%ASMFILE%" /o -

REM Rename sLoop to smpsLoop
REM Add Target param to EOL
call JREPL.bat "sLoop" "smpsLoop" /f "%ASMFILE%" /o -
call JREPL.bat "(smpsLoop.*)" "$1, Target" /f "%ASMFILE%" /o -

REM Rename sCall to smpsCall
REM Add Target param to EOL
call JREPL.bat "sCall" "smpsCall" /f "%ASMFILE%" /o -
call JREPL.bat "(smpsCall.*)" "$1, Target" /f "%ASMFILE%" /o -


REM Rename mostly everything else
REM The following are CFs common to both S1/Nat and S1KC; a few have different names, but same usage

REM Rename the pan constants
call JREPL.bat "sPan" "smpsPan" /f "%ASMFILE%" /o -
call JREPL.bat "spNone" "panNone" /f "%ASMFILE%" /o -
call JREPL.bat "spRight" "panRight" /f "%ASMFILE%" /o -
call JREPL.bat "spLeft" "panLeft" /f "%ASMFILE%" /o -
call JREPL.bat "spCentre" "panCentre" /f "%ASMFILE%" /o -
call JREPL.bat "spCenter" "panCenter" /f "%ASMFILE%" /o -

REM Rename ssDetune to smpsAlterNote
call JREPL.bat "ssDetune" "smpsAlterNote" /f "%ASMFILE%" /o -
REM Rename sComm to smpsE2
call JREPL.bat "sComm" "smpsE2" /f "%ASMFILE%" /o -

REM Rename sRet/sStopFM to smpsReturn
REM call JREPL.bat "sRet" "smpsReturn" /f "%ASMFILE%" /o -
call JREPL.bat "sRet" "smpsReturn" /f "%ASMFILE%" /o -
call JREPL.bat "sStopFM" "smpsReturn" /f "%ASMFILE%" /o -

REM Rename saVolFM to smpsAlterVol
call JREPL.bat "saVolFM" "smpsAlterVol" /f "%ASMFILE%" /o -
REM Rename sHold to smpsNoAttack
call JREPL.bat "sHold" "smpsNoAttack" /f "%ASMFILE%" /o -
REM Rename sNoteTimeOut to smpsNoteFill
call JREPL.bat "sNoteTimeOut" "smpsNoteFill" /f "%ASMFILE%" /o -
REM Rename saVolPSG to smpsSetVol
call JREPL.bat "saVolPSG" "smpsSetVol" /f "%ASMFILE%" /o -
REM Rename ssModZ80 to smpsModSet
call JREPL.bat "ssModZ80" "smpsModSet" /f "%ASMFILE%" /o -
REM Rename sPatFM to smpsFMvoice
call JREPL.bat "sPatFM" "smpsFMvoice" /f "%ASMFILE%" /o -
REM Rename sStop to smpsStop
call JREPL.bat "sStop" "smpsStop" /f "%ASMFILE%" /o -
REM Rename sNoisePSG to smpsPSGform
call JREPL.bat "sNoisePSG" "smpsPSGform" /f "%ASMFILE%" /o -
REM Rename sVolEnvPSG to smpsPSGvoice
call JREPL.bat "sVolEnvPSG" "smpsPSGvoice" /f "%ASMFILE%" /o -
REM Rename ssTickMulCh smpsChanTempoDiv
call JREPL.bat "ssTickMulCh" "smpsChanTempoDiv" /f "%ASMFILE%" /o -
REM Rename saTranspose to smpsAlterPitch
call JREPL.bat "saTranspose" "smpsAlterPitch" /f "%ASMFILE%" /o -
REM Rename ssTempo to smpsSetTempoMod
call JREPL.bat "ssTempo" "smpsSetTempoMod" /f "%ASMFILE%" /o -
REM Rename ssTickMul to smpsSetTempoDiv
call JREPL.bat "ssTickMul" "smpsSetTempoDiv" /f "%ASMFILE%" /o -
 

REM The following CFs are either EXCLUSIVE to KC, or have new params
REM They are only renamed here and used for the specific KC purpose of compiling stock KC files from ASM
REM Usage of these new flags will require manual placement into S1->KC songs (due to S1 sound tools not handling these new flags)


REM Rename sHeaderTick to smpsHeaderTick
call JREPL.bat "sHeaderTick" "smpsHeaderTick" /f "%ASMFILE%" /o -
REM Rename sPanAni to KC_smpsPanAni
call JREPL.bat "sPanAni" "KC_smpsPanAni" /f "%ASMFILE%" /o -
REM Rename saVolFMP to KC_smpsFMAlterVol
call JREPL.bat "saVolFMP" "KC_smpsFMAlterVol" /f "%ASMFILE%" /o -
REM Rename ssLFO to KC_smpsSetLFO
call JREPL.bat "ssLFO" "KC_smpsSetLFO" /f "%ASMFILE%" /o -
REM Rename sPlayDAC to KC_smpsPlayDACSample
call JREPL.bat "sPlayDAC" "KC_smpsPlayDACSample" /f "%ASMFILE%" /o -

REM Rename sLoopExit to KC_smpsConditionalJump songstart
REM Add songstart param to EOL
call JREPL.bat "sLoopExit" "KC_smpsConditionalJump" /f "%ASMFILE%" /o -
call JREPL.bat "(KC_smpsConditionalJump.*)" "$1, Target" /f "%ASMFILE%" /o -

REM Rename sYMcmd to KC_smpsSetNote	
call JREPL.bat "sYMcmd" "KC_smpsSetNote" /f "%ASMFILE%" /o -
REM Rename sYM1cmd to KC_smpsFMICommand
call JREPL.bat "sYM1cmd" "KC_smpsFMICommand" /f "%ASMFILE%" /o -

REM Rename all sModEnv to KC_smpsModChange
call JREPL.bat "sModEnv" "KC_smpsModChange" /f "%ASMFILE%" /o -
REM Rename certain KC_smpsModChange with 2 params
call JREPL.bat "((KC_smpsModChange)([^,]+),)" "KC_smpsModChange2 $3" /f "%ASMFILE%" /o -

REM Rename sPitchSlide to KC_smpsPitchSlide	
call JREPL.bat "sPitchSlide" "KC_smpsPitchSlide" /f "%ASMFILE%" /o -
REM Rename sRawFreq to KC_smpsAlternateSMPS
call JREPL.bat "sRawFreq" "KC_smpsAlternateSMPS" /f "%ASMFILE%" /o -
REM Rename sSpecFM3 to KC_smpsFM3SpecialMode
call JREPL.bat "sSpecFM3" "KC_smpsFM3SpecialMode" /f "%ASMFILE%" /o -
REM Rename sPlaySound to KC_smpsPlaySound
call JREPL.bat "sPlaySound" "KC_smpsPlaySound" /f "%ASMFILE%" /o -
REM Rename sMusPause to KC_smpsHaltMusic
call JREPL.bat "sMusPause" "KC_smpsHaltMusic" /f "%ASMFILE%" /o -
REM Rename KC_smpsCopyData to sCopyMem
call JREPL.bat "KC_smpsCopyData" "sCopyMem" /f "%ASMFILE%" /o -
REM Rename sSSGEG to KC_smpsSSGEG
call JREPL.bat "sSSGEG" "KC_smpsSSGEG" /f "%ASMFILE%" /o -
REM Rename sVolEnvFM to KC_smpsFMVolEnv
call JREPL.bat "sVolEnvFM" "KC_smpsFMVolEnv" /f "%ASMFILE%" /o -

REM Cleanup FM voices. Removed all macros, just allow the comments on each line
REM (which have the macros contents already expanded as pure byte array)
call JREPL.bat "(spAlgorithm.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spFeedback.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spDetune.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spMultiple.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spRateScale.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spAttackRt.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spAmpMod.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spSustainRt.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spSustainLv.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spDecayRt.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spReleaseRt.*)" " " /f "%ASMFILE%" /o -
call JREPL.bat "(spTotalLv.*)" " " /f "%ASMFILE%" /o -

REM Remove all comments containing "Patch", then Find all comments with $ signs
REM Only line with $ signs should be the FM voice definitions;
REM we need to add a dc.b to initalize a byte array (for the expanded macro contents)
call JREPL.bat ";.*Patch.*" "" /f "%ASMFILE%" /o -
call JREPL.bat ";(.*\x24)" "dc.b\t$1" /XSEQ /f "%ASMFILE%" /o -
call JREPL.bat "dc.b\t " "dc.b\t" /XSEQ /f "%ASMFILE%" /o -
call JREPL.bat "dc.b " "dc.b\t" /XSEQ /f "%ASMFILE%" /o -