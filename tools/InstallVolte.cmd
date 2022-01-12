#xcopy "C:\GitRepo\iceows\ims_hi6250_volte\app\build\outputs\apk\debug\app-debug.apk" .
#java.exe -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out "HuaweiIMS.apk" "app-debug.apk"
#xcopy HuaweiIMS.apk "C:\Users\MOUNIERR\Documents\Personnel\Huawei\LeaOS\VoLTE-FIX-A11-Altair-V1.4\system\app\HuaweiIMS"

xcopy "C:\GitRepo\iceows\treble_app\app\build\outputs\apk\debug\app-debug.apk" .
java.exe -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out "TrebleApp.apk" "app-debug.apk"
xcopy TrebleApp.apk "C:\Users\MOUNIERR\Documents\Personnel\Huawei\LeaOS\VoLTE-FIX-A11-Altair-V1.4\system\priv-app\TrebleApp"

xcopy treble-overlay-telephony-hw-ims.apk "C:\Users\MOUNIERR\Documents\Personnel\Huawei\LeaOS\VoLTE-FIX-A11-Altair-V1.4\system\app\treble-overlay-telephony-hw-ims"

adb root
adb remount rw, /system
adb shell mkdir /system/app/HuaweiIMS
adb push HuaweiIMS.apk /system/app/HuaweiIMS
adb shell chmod 644 /system/app/HuaweiIMS/HuaweiIMS.apk 

adb push TrebleApp.apk /system/priv-app/TrebleApp
adb shell chmod 644 /system/priv-app/TrebleApp/TrebleApp.apk 

adb shell mkdir /system/app/treble-overlay-telephony-hw-ims
adb push treble-overlay-telephony-hw-ims.apk /system/app/treble-overlay-telephony-hw-ims/treble-overlay-telephony-hw-ims.apk
adb shell chmod 644 /system/app/treble-overlay-telephony-hw-ims/treble-overlay-telephony-hw-ims.apk

adb reboot
