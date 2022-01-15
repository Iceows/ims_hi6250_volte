#!/bin/bash

set -e

if [ "$#" -ne 1 ];then
	echo "Usage: $0 /path/to/HwIms/folder"
	exit 1
fi

app_folder="$(realpath $1)"
libdst="HwIms/lib/arm64-v8a/"

rm -Rf HwIms
java -jar ../apktool.jar d "$app_folder"/HwIms.apk
if [ ! -d HwIms/smali ];then
	(
	cd HwIms
	../../vdexExtractor -i "$app_folder"/oat/arm64/HwIms.vdex -o .
	java -jar ../../baksmali.jar d HwIms_classes.dex
	mv out smali
        cd ..
	)
fi
mkdir -p "$libdst"
find "$app_folder"/lib/arm64 -type f -exec cp '{}' "$libdst" \;

(
set -x
rm -Rf build
mkdir build
javac -Xlint:unchecked -cp ../libs/framework.jar:../libs/telephony-common.jar:../libs/ims-common.jar -d build $(find src -name \*.java)
$ANDROID_HOME/build-tools/28.0.3/d8 --output build/ --lib ../libs/framework.jar --lib ../libs/telephony-common.jar --lib ../libs/ims-common.jar $(find build -name \*.class)
java -jar ../baksmali.jar d build/classes.dex -o HwIms/smali
)

perl -0777 -i -p -e 's|invoke-virtual \{([pv0-9]+)\}, Lcom/android/internal/telephony/Phone;->getImsSwitch\(\)Z\s+move-result ([pv0-9]+)|const/4 \2, 0x1|g' HwIms/smali/com/huawei/ims/HwImsUtImpl.smali HwIms/smali/com/huawei/ims/ImsServiceSub.smali

sed -i -E \
	-e 's; android:process="com.huawei.telephony.ims";;g' \
	-e 's;android.telephony.ims.ImsService;android.telephony.ims.compat.ImsService;g' \
	HwIms/AndroidManifest.xml

sed -i -E \
	-e 's;Lcom/android/ims/ImsReasonInfo;Landroid/telephony/ims/ImsReasonInfo;g' \
	-e 's;Landroid/telephony/ims/feature/;Landroid/telephony/ims/compat/feature/;g' \
	-e 's;Landroid/telephony/ims/stub/;Landroid/telephony/ims/compat/stub/;g' \
	-e 's;Landroid/telephony/ims/ImsService;Landroid/telephony/ims/compat/ImsService;g' \
	-e 's;Lcom/huawei/telephony/HuaweiTelephonyManager;Landroid/telephony/HwTelephonyManager;g' \
	-e 's;Lcom/android/ims/internal/ImsVideoCallProvider;Landroid/telephony/ims/ImsVideoCallProvider;g' \
	$(find HwIms -name \*.smali)

sed -i -E \
	-e 's|iget ([pv0-9]+), ([pv0-9]+), Lcom/huawei/ims/feature/HwMMTelFeature;->mSlotId:I|iget \1, \2, Lcom/huawei/ims/feature/HwMMTelFeature;->mySlotId:I|g' \
	-e '4i.field private mySlotId:I' \
	HwIms/smali/com/huawei/ims/feature/HwMMTelFeature.smali

perl -0777 -i -p -e 's|^(\s+)iput ([pv0-9]+), ([pv0-9]+), Lcom/huawei/ims/feature/HwMMTelFeature;->mSlotId:I|\1iput \2, \3, Lcom/huawei/ims/feature/HwMMTelFeature;->mySlotId:I\n\1invoke-virtual \{p0, \2\}, Lcom/huawei/ims/feature/HwMMTelFeature;->setSlotId(I)V|gm' HwIms/smali/com/huawei/ims/feature/HwMMTelFeature.smali

java -jar ../apktool.jar b HwIms
LD_LIBRARY_PATH=../signapk/ java -jar ../signapk/signapk.jar -a 4096\
	../keys/platform.x509.pem \
	../keys/platform.pk8 \
	HwIms/dist/HwIms.apk HwIms.apk
