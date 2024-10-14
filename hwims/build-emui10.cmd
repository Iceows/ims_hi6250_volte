REM Remove apk temp file
rmdir /q /s "./apk-out/"

REM extract ressource file and manifest
java -jar apktool_2.9.3.jar decode -s -f -o .\apk-out .\HwIms-emui10\HwIms.apk
.\vdexExtractor_winx86_64\vdexExtractor-windows-amd64.exe -f -v 4 -i .\HwIms-emui10/oat/arm64/HwIms.vdex -o .\apk-out

REM Convert to CDEX

REM Convert to smali
java -jar baksmali-2.5.2.jar deodex  -o .\src-out  .\apk-out\HwIms_classes.dex

