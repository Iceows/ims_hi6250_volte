
xcopy /Y "C:\GitHub\iceows\ims_hi6250_volte\app\build\outputs\apk\debug\app-debug.apk" .
java.exe -jar "ApkSigner.jar" sign  --key platform.pk8 --cert platform.x509.pem  --v4-signing-enabled false --out "HuaweiIMS.apk" "app-debug.apk"

adb root
adb remount rw, /system
adb shell mkdir /system/app/HuaweiIMS
adb shell chmod 755 /system/app/HuaweiIMS
adb push HuaweiIMS.apk /system/app/HuaweiIMS/
adb shell chmod 644 /system/app/HuaweiIMS/HuaweiIMS.apk 

rem echo "(allow radio default_android_service (service_manager (add)))" >> /system/etc/selinux/plat_sepolicy.cil
rem echo "(allow radio default_hisi_hwservice (hwservice_manager (find)))" >> /system/etc/selinux/plat_sepolicy.cil

adb reboot
