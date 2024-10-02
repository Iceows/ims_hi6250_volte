
xcopy /Y "C:\GitHub\iceows\ims_hi6250_volte\app\build\outputs\apk\debug\app-debug.apk" .
java.exe -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out "HuaweiIMS.apk" "app-debug.apk"

adb root
adb remount rw, /system
adb shell mkdir /system/app/HuaweiIMS
adb push HuaweiIMS.apk /system/app/HuaweiIMS
adb shell chmod 644 /system/app/HuaweiIMS/HuaweiIMS.apk 


adb reboot
