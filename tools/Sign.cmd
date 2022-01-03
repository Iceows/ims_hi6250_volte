xcopy "C:\GitRepo\iceows\ims_hi6250_volte\app\build\outputs\apk\debug\app-debug.apk" .
java.exe -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out "HuaweiIMS.apk" "app-debug.apk"
xcopy HuaweiIMS.apk C":\Users\MOUNIERR\Documents\Personnel\Huawei\Lineage\Android 11\VoLTE-FIX-A11-Altair-V1.3\system\app\HuaweiIMS\"

REM xcopy  "C:\Users\MOUNIERR\Documents\Personnel\Huawei\Lineage\Android 11\VoLTE-FIX-A11-Altair-V1.3\system\app\HuaweiIMS\HuaweiIMS.apk"