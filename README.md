# ims_hi6250_volte
 IMS for VOLTE (Huawei device)

Voici un IMS qui permet d'utiliser la voip sur une porteuse LTE (4G) pour les telephones Huawei hi6250 (PRA-LX1, WAS_LX1 etc..)

Pour l'installer il faut installer l'overlay suivant, puis lui donner les droits

	chmod 644 /system/overlay/treble-overlay-hw-ims.apk
	restorecon /system/overlay/treble-overlay-hw-ims.apk

Et executer ce script sous TWRP :

    	echo " " >> /system/build.prop;
    	echo "# Ims" >> /system/build.prop;
    	echo "persist.sys.phh.ims.hw=true" >> /system/build.prop;
	echo "persist.radio.calls.on.ims=1" >> /system/build.prop;
    	echo "persist.dbg.ims_volte_enable=1" >> /system/build.prop;
    	echo "persist.dbg.volte_avail_ovr=1" >> /system/build.prop;
    	echo "persist.dbg.vt_avail_ovr=1" >> /system/build.prop;
    	echo "persist.dbg.wfc_avail_ovr=1" >> /system/build.prop;
	
	# Huawei config specific on EMUI 8 (Android 8)
	echo "ro.config.hw_volte_dyn=true" >> /system/build.prop;
    	echo "ro.config.hw_volte_on=true" >> /system/build.prop;
    	echo "ro.config.hw_volte_icon_rule=0" >> /system/build.prop;	
	
	# Iceows enable volte for my IMS Huawei
	echo "ro.hw.volte.enable=1" >> /system/build.prop;
