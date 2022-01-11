xcopy "C:\GitRepo\iceows\ims_hi6250_volte\app\build\outputs\apk\debug\app-debug.apk" .
java.exe -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out "HuaweiIMS.apk" "app-debug.apk"
xcopy HuaweiIMS.apk "C:\Users\MOUNIERR\Documents\Personnel\Huawei\LeaOS\VoLTE-FIX-A11-Altair-V1.4\system\app\HuaweiIMS"

adb root
adb remount rw, /system
adb push HuaweiIMS.apk /system/app/HuaweiIMS
adb shell chmod 644 /system/app/HuaweiIMS/HuaweiIMS.apk 
adb reboot
