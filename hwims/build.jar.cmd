
del HwIms_classes-dex2jar.jar
".\dex2jar\d2j-dex2jar.bat" "./HwIms_classes.dex"

del vendor.huawei.hardware.radio-java.jar
".\dex2jar\d2j-class-version-switch.bat" 8 HwIms_classes-dex2jar.jar "vendor.huawei.hardware.radio-java.jar"

".\zip.exe" -qd vendor.huawei.hardware.radio-java.jar "android/*" "com/*"

pause

