REM Remove apk temp file
rmdir /q /s "./apk-out/"

REM extract ressource file and manifest
java -jar apktool_2.9.3.jar decode -s -f -o .\apk-out .\HwIms-emui12\HwIms.apk
.\vdexExtractor_winx86_64\vdexExtractor-windows-amd64.exe -f -v 4 -i .\HwIms-emui12/oat/arm64/HwIms.vdex -o .\apk-out

REM Convert to CDEX - only under linux system

REM Convert to smali
java -jar baksmali-2.5.2.jar deodex -a 24 -o .\apk-out\src-out -b  ..\..\huawei-emui9\framework\arm64\boot.oat ".\apk-out\HwIms_classes.dex"

