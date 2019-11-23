@echo off
REM Converts an integer ROM location to a Little-Endian Z80 pointer, used for the Music Pointer Table
REM Input: %1=Absolute ROM location (decimal)
REM Output: %2=ByRef Little Endian pointer (decimal)
set addr=%1
set /a "ptr=(((addr<<8)&0xFF00)|((addr>>8)&0x7F)|0x80)"
set %2=%ptr%