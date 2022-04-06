
xcopy /Y "C:\GitRepo\iceows\treble_app\app\build\outputs\apk\release\app-release-unsigned.apk" .
java.exe -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out "TrebleApp.apk" "app-release-unsigned.apk"
xcopy /Y TrebleApp.apk "C:\Users\MOUNIERR\Documents\Personnel\Huawei\LeaOS\VoLTE-FIX-A11-Altair-V1.5\system\priv-app\TrebleApp"

adb root
adb remount rw, /system
adb push TrebleApp.apk /system/priv-app/TrebleApp
adb shell chmod 644 /system/priv-app/TrebleApp/TrebleApp.apk 


adb reboot
