
del HwIms_classes-dex2jar.jar
"./dex2jar/d2j-dex2jar.bat" "./HwIms_classes.dex"

del com.hisi.mapcon-java.jar
"./dex2jar/d2j-class-version-switch.bat" 8 "HwIms_classes-dex2jar.jar" "com.hisi.mapcon-java.jar"

"zip.exe" -qd com.hisi.mapcon-java.jar "android/*" "vendor/*" "com/huawei/*" "com/android/*"
