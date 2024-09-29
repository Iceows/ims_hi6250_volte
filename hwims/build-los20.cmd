REM extract dex file
java -jar apktool_2.9.3.jar decode -s -f -o .\apk-out .\HwIms-LOS20\HwIms.apk

REM Convert dex to jar
del classes-dex2jar.jar
"./dex2jar/d2j-dex2jar.bat" "./apk-out/classes.dex"

REM Change class java version
del com.hisi.mapcon-java.jar
"./dex2jar/d2j-class-version-switch.bat" 8 "classes-dex2jar.jar" "com.hisi.mapcon-java.jar"

REM Remove unused class for this mapcom.jar
"zip.exe" -qd com.hisi.mapcon-java.jar "android/*" "vendor/*" "com/huawei/*" "com/android/*"

REM Change class java version
del vendor.huawei.hardware.radio-java.jar
".\dex2jar\d2j-class-version-switch.bat" 8 classes-dex2jar.jar "vendor.huawei.hardware.radio-java.jar"

REM Remove unused class for this vendor.huawei.hardware.radio-java.jar
".\zip.exe" -qd vendor.huawei.hardware.radio-java.jar "android/*" "com/*"

REM Remove apk temp fil
rm -rf "./apk-out/"