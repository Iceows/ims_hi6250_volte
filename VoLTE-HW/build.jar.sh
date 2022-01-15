#!/bin/bash

set -e

if [ "$#" -ne 1 ];then
	echo "Usage: $0 /path/to/HwIms/folder"
	exit 1
fi

app_folder="$(realpath $1)"

rm -f HwIms_classes.dex
../vdexExtractor -i "$app_folder"/oat/arm64/HwIms.vdex -o .

rm -f HwIms_classes-dex2jar.jar
../dex2jar/d2j-dex2jar.sh HwIms_classes.dex

rm -f vendor.huawei.hardware.radio-java.jar
../dex2jar/d2j-class-version-switch.sh 8 HwIms_classes-dex2jar.jar vendor.huawei.hardware.radio-java.jar
zip -qd vendor.huawei.hardware.radio-java.jar 'android/*' 'com/*'

