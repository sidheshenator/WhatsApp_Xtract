rem If you want to decrypt android whatsapp msgtore.db.crypt files, then you need to run this (after installing ActivePython)

@ECHO OFF
set AppPath=%ProgramFiles(x86)%
if "%ProgramFiles(x86)%XXX"=="XXX" set AppPath=%ProgramFiles%
if not exist "%AppPath%\Python27\Scripts" if not exist "%AppPath%\Python32\Scripts" goto NoPython
if not exist "%AppPath%\Python27\Scripts" goto Check32

:Python27
@ECHO ON
"%AppPath%\Python27\Scripts\pypm" install pycrypto
"%AppPath%\Python27\Scripts\pypm" show pycrypto
@ECHO OFF
set pythonpath=
@ECHO ON
setx pythonpath "%AppPath%\Python27"
@ECHO OFF

:Check32
if not exist "%AppPath%\Python32\Scripts" goto Quit

:Python32
@ECHO ON
"%AppPath%\Python32\Scripts\pypm" install pycrypto
"%AppPath%\Python32\Scripts\pypm" show pycrypto
@ECHO OFF
set pythonpath=
@ECHO ON
setx pythonpath "%AppPath%\Python32"
@ECHO OFF
goto Quit

:NoPython
echo _
echo Could not find the Python directory. Please make sure that ActivePython is installed in either %AppPath%\Python27 or %AppPath%\Python32

:Quit
echo _ 
pause

