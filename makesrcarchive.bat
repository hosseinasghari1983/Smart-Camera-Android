rd /S /Q c:\temp\opencameratestsrc\

mkdir c:\temp\opencameratestsrc\

set src="."
set dst="c:\temp\opencameratestsrc"

copy %src%\makesrcarchive.bat %dst%
REM copy %src%\opencamera_source.txt %dst%
copy %src%\gpl-3.0.txt %dst%

copy %src%\.classpath %dst%
copy %src%\.project %dst%
copy %src%\AndroidManifest.xml %dst%
copy %src%\proguard-project.txt %dst%
copy %src%\project.properties %dst%

mkdir %dst%\.settings
xcopy %src%\.settings %dst%\.settings /E /Y

mkdir %dst%\gen
xcopy %src%\gen %dst%\gen /E /Y

REM mkdir %dst%\libs
REM xcopy %src%\libs %dst%\libs /E /Y

mkdir %dst%\res
xcopy %src%\res %dst%\res /E /Y

mkdir %dst%\src
xcopy %src%\src %dst%\src /E /Y

REM exit
