@echo off
REM https://stackoverflow.com/a/66843795
echo Set fso=CreateObject("Scripting.FileSystemObject") > read.vbs
echo Set f=fso.OpenTextFile("%~1"):buf=f.Read(2):f.Close >> read.vbs
REM OpenTextFile opens any file as a binary stream; f.read(n) reads the first n bytes of that stream
echo wscript.echo Hex(ASCb(mid(buf,1,1))) ^& "," ^& Hex(ASCb(mid(buf,2,1))) >> read.vbs

for /f "tokens=1-2 delims=," %%A in ('cscript //nologo read.vbs') do (
   set byte1=0%%A
   set byte2=0%%B
   )
echo %byte1:~-2%%byte2:~-2%