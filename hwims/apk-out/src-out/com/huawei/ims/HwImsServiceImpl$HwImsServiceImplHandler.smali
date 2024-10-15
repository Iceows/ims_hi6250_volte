.class Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;
.super Landroid/os/Handler;
.source "HwImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwImsServiceImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsServiceImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 2

    .line 1241
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1242
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1243
    return-void
.end method

.method static synthetic access$1100(Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1240
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastSpeechCodecNotification(I)V
    .registers 7
    .param p1, "speechCodec"    # I

    .line 1938
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 1939
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSpeechCodecNotification speechCodec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1940
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 1941
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "EVSBroadcastReceiverPkg"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1942
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.intent.action.AUDIO_QUALITY_SET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1943
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1944
    const-string v3, "AUDIO_QUALITY_TYPE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1945
    const-string v3, "subscription"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1946
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "com.huawei.ims.permission.AUDIO_QUALITY_GET"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1947
    return-void
.end method

.method private detectImsRegisterState(II)I
    .registers 6
    .param p1, "dataRegState"    # I
    .param p2, "rilRat"    # I

    .line 2241
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter detectImsRegisterState, dataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rilRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2245
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 2246
    return v0

    .line 2249
    :cond_22
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isRadioTechnologyLteOrNr(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2252
    const/4 v0, 0x3

    return v0

    .line 2255
    :cond_2a
    return v0
.end method

.method private getAccessRechModeByRadioRechnology(I)I
    .registers 5
    .param p1, "rilRat"    # I

    .line 2282
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter getAccessRechModeByRadioRechnology, rilRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2284
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isRadioTechnologyLteOrNr(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2285
    const/4 v0, 0x0

    return v0

    .line 2286
    :cond_1e
    const/16 v0, 0x12

    if-ne p1, v0, :cond_24

    .line 2287
    const/4 v0, 0x1

    return v0

    .line 2289
    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method private getPhoneId(Lcom/android/internal/telephony/Connection;)I
    .registers 5
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .line 2203
    const/4 v0, -0x1

    .line 2204
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2205
    .local v1, "call":Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 2206
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_12

    .line 2207
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2208
    if-eqz v2, :cond_12

    .line 2209
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 2213
    :cond_12
    return v0
.end method

.method private handleAccessRechModeByRadioRechnology()I
    .registers 5

    .line 2271
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2272
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_15

    .line 2273
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 2275
    .local v1, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 2276
    .local v2, "rilRat":I
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->getAccessRechModeByRadioRechnology(I)I

    move-result v3

    return v3

    .line 2278
    .end local v1    # "serviceState":Landroid/telephony/ServiceState;
    .end local v2    # "rilRat":I
    :cond_15
    const/4 v1, -0x1

    return v1
.end method

.method private handleBatteryStatus(Landroid/os/AsyncResult;)V
    .registers 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1893
    if-eqz p1, :cond_10

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_10

    .line 1894
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mNewBatteryStatus:I
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v1

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mCurrentBatteryStatus:I
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$4202(Lcom/huawei/ims/HwImsServiceImpl;I)I

    goto :goto_26

    .line 1896
    :cond_10
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error EVENT_SEND_BATTERY_STATUS AsyncResult ar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1898
    :goto_26
    return-void
.end method

.method private handleExtendMethod(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1733
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_41

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_39

    packed-switch v0, :pswitch_data_52

    goto :goto_51

    .line 1755
    :pswitch_16
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->handleSetVoNrSwitchDone(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3800(Lcom/huawei/ims/HwImsServiceImpl;Landroid/os/Message;)V

    .line 1756
    goto :goto_51

    .line 1752
    :pswitch_1c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleMessage EVENT_VOWIFI_REG_ERR_REPORT,Do Nothing"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1753
    goto :goto_51

    .line 1748
    :pswitch_24
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleMessage EVENT_UNSOL_VOWIF_REG_ERR_REPORT"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1749
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleUnsolVoWiFiRegErrReport(Landroid/os/Message;)V

    .line 1750
    goto :goto_51

    .line 1735
    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1736
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->handleImsRegMode(Landroid/os/AsyncResult;)V

    .line 1737
    goto :goto_51

    .line 1742
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_39
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSetSmsConfig(Landroid/os/Message;)V

    .line 1743
    goto :goto_51

    .line 1745
    :cond_3d
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleGetDmUserData(Landroid/os/Message;)V

    .line 1746
    goto :goto_51

    .line 1758
    :cond_41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1759
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->hanldeGetCurrentCallsAndHangup(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3900(Lcom/huawei/ims/HwImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1760
    goto :goto_51

    .line 1739
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4b
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->queryCameraStatus()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3700(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1740
    nop

    .line 1764
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x44e
        :pswitch_2f
        :pswitch_24
        :pswitch_1c
        :pswitch_16
    .end packed-switch
.end method

.method private handleGetDmParamsDone(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2354
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2356
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2357
    .local v2, "cmdType":I
    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2358
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2359
    .local v3, "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_48

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_48

    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_48

    .line 2360
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetDmParamsDone success !type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2361
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "data"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5e

    .line 2363
    :cond_48
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetDmParamsDone fail !type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2365
    :goto_5e
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2366
    return-void
.end method

.method private handleGetDmUserData(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1882
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1883
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2f

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2f

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2f

    .line 1884
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    .line 1885
    const-string v3, "dm_user_ims_value"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1884
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1886
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleGetDmUserData success."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_36

    .line 1888
    :cond_2f
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleGetDmUserData fail!"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1890
    :goto_36
    return-void
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .registers 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1365
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleHandover"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, "handover":Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
    if-eqz p1, :cond_2d

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2d

    .line 1368
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;

    .line 1370
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1371
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->handleHandover(Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;)V

    goto :goto_34

    .line 1373
    :cond_25
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleHandover:Message for non-registered service class"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1374
    return-void

    .line 1377
    :cond_2d
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "AsyncResult exception in handleHandover."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1379
    :goto_34
    return-void
.end method

.method private handleImsDmcn()V
    .registers 8

    .line 1831
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_DMCN "

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1834
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/huawei/ims/HwImsConfigImpl;->IS_ATT:Z

    if-nez v1, :cond_21

    sget-boolean v1, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v1, :cond_17

    goto :goto_21

    .line 1837
    :cond_17
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "component":Landroid/content/ComponentName;
    goto :goto_2a

    .line 1835
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_21
    :goto_21
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.rcsserviceapplication"

    const-string v3, "com.huawei.rcs.service.RcsGlobalBroadcastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    .restart local v1    # "component":Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1840
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1841
    const/16 v2, 0xa

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1843
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1844
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1845
    .local v3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    if-eqz v2, :cond_50

    .line 1846
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1847
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v6, "EVENT_IMS_DMCN, queryBroadcastReceivers done"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1849
    :cond_50
    if-eqz v3, :cond_6d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_59

    goto :goto_6d

    .line 1857
    :cond_59
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v6, "EVENT_IMS_DMCN, send BROADCAST_IMS_TO_DMSYNCSERVICE"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1858
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v5, v5, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1859
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I
    invoke-static {v5, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$4102(Lcom/huawei/ims/HwImsServiceImpl;I)I

    goto :goto_9e

    .line 1850
    :cond_6d
    :goto_6d
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # operator++ for: Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$4108(Lcom/huawei/ims/HwImsServiceImpl;)I

    .line 1851
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_DMCN, no receiver of BROADCAST_DMSYNCSERVICE_TO_IMS found, try again later, count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1852
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I
    invoke-static {v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$4100(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1851
    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1853
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mDmSyncRetryCount:I
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$4100(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_9e

    .line 1854
    const/16 v4, 0x3f8

    const-wide/16 v5, 0x7d0

    invoke-virtual {p0, v4, v5, v6}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1861
    :cond_9e
    :goto_9e
    return-void
.end method

.method private handleImsNotRegistered(I)V
    .registers 8
    .param p1, "oldState"    # I

    .line 2000
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->IS_VOWIFI_PROP_ON:Z
    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$4700()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_72

    .line 2001
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsEmergencyUnderWifi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v2

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 2003
    .local v0, "isEmergencyUnderWifi":Z
    :goto_3b
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3fc

    .line 2004
    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_55

    :cond_4d
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_55
    move v3, v2

    goto :goto_58

    :cond_57
    move v3, v1

    .line 2005
    .local v3, "isMsgSos":Z
    :goto_58
    if-eqz v0, :cond_64

    if-eqz v3, :cond_64

    .line 2006
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v5, "sos pending, not disable vowifi capability."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_72

    .line 2008
    :cond_64
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$1900(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2009
    const-string v4, "UNREGISTERED"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 2012
    .end local v0    # "isEmergencyUnderWifi":Z
    .end local v3    # "isMsgSos":Z
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->isVolteSwitchOn()Z
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4800(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_99

    if-eq p1, v2, :cond_82

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->sIsFirstReg:Z
    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$300()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2013
    :cond_82
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x11170

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2015
    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->sIsFirstReg:Z
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$302(Z)Z

    .line 2017
    :cond_99
    return-void
.end method

.method private handleImsRegistered(I)Ljava/lang/String;
    .registers 9
    .param p1, "oldState"    # I

    .line 2021
    const-string v0, "REGISTERED"

    .line 2023
    .local v0, "imsState":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->optimizeImsRegisterState()Z
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$4900(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v1

    .line 2024
    .local v1, "isOptimize":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_3a

    if-eqz v1, :cond_3a

    .line 2025
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2026
    .local v2, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_3a

    .line 2027
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 2029
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    .line 2030
    .local v4, "dataRegState":I
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 2031
    .local v5, "rilRat":I
    invoke-direct {p0, v4, v5}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->detectImsRegisterState(II)I

    move-result v6

    if-nez v6, :cond_3a

    .line 2032
    const-string v0, "UNREGISTERED"

    .line 2037
    .end local v2    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":Landroid/telephony/ServiceState;
    .end local v4    # "dataRegState":I
    .end local v5    # "rilRat":I
    :cond_3a
    if-nez p1, :cond_79

    .line 2038
    const/4 v2, 0x0

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->sIsFirstReg:Z
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$302(Z)Z

    .line 2039
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isImpuConfigured()Z

    move-result v3

    if-nez v3, :cond_68

    .line 2040
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v4, "get IMPU from modem"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2041
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/huawei/ims/ImsRIL;->getImsImpu(ILandroid/os/Message;)V

    .line 2043
    :cond_68
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 2044
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToImsSdk()V

    .line 2049
    :cond_79
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "volte_vt_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2051
    const-string v2, "REGISTERED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 2052
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;
    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$5000()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v5, v5, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    aget-object v4, v4, v5

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2055
    :cond_a4
    return-object v0
.end method

.method private handleImsStateDone(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1950
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1952
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    .line 1953
    const/4 v1, 0x0

    .line 1955
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_18

    .line 1956
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 1959
    :cond_18
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_34

    .line 1960
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v4, "Radio is not available"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1962
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I
    invoke-static {v3, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2802(Lcom/huawei/ims/HwImsServiceImpl;I)I

    .line 1964
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1965
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->imsRegStateChangeCallBack(I)V

    .line 1967
    :cond_33
    return-void

    .line 1971
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_34
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_9e

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_9e

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_9e

    .line 1972
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1973
    .local v1, "responseArray":[I
    aget v2, v1, v2

    .line 1974
    .local v2, "imsRegisterState":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS registration state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1976
    const-string v3, "UNREGISTERED"

    .line 1977
    .local v3, "imsState":Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$2800(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v4

    .line 1979
    .local v4, "oldState":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->setImsRegisterState(I)V
    invoke-static {v5, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$4600(Lcom/huawei/ims/HwImsServiceImpl;I)V

    .line 1981
    const/4 v5, 0x1

    if-ne v2, v5, :cond_77

    .line 1982
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleImsRegistered(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7a

    .line 1984
    :cond_77
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleImsNotRegistered(I)V

    .line 1987
    :goto_7a
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I
    invoke-static {v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8c

    .line 1988
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleAccessRechModeByRadioRechnology()I

    move-result v6

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I
    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$1202(Lcom/huawei/ims/HwImsServiceImpl;I)I

    .line 1990
    :cond_8c
    const-string v5, "REGISTERED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1991
    .local v5, "imsRegState":I
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v6

    if-eqz v6, :cond_9d

    .line 1992
    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->imsRegStateChangeCallBack(I)V

    .line 1994
    .end local v1    # "responseArray":[I
    .end local v2    # "imsRegisterState":I
    .end local v3    # "imsState":Ljava/lang/String;
    .end local v4    # "oldState":I
    .end local v5    # "imsRegState":I
    :cond_9d
    goto :goto_a5

    .line 1995
    :cond_9e
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "IMS State query failed!"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1997
    :goto_a5
    return-void
.end method

.method private handleLtePdcpInfo(Landroid/os/AsyncResult;)V
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2302
    if-eqz p1, :cond_f

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    goto :goto_f

    .line 2306
    :cond_7
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleLtePdcpInfo([I)V

    .line 2307
    return-void

    .line 2303
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "LTE_PDCP_INFO report failed!"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2304
    return-void
.end method

.method private handleLtePdcpInfo([I)V
    .registers 11
    .param p1, "ret"    # [I

    .line 2310
    if-eqz p1, :cond_19

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 2311
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v1, v0

    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-long v3, v0

    const/4 v0, 0x2

    aget v0, p1, v0

    int-to-long v5, v0

    const/4 v0, 0x3

    aget v0, p1, v0

    int-to-long v7, v0

    invoke-static/range {v1 .. v8}, Lcom/huawei/vtproxy/ImsThinClient;->setBuffInfo(JJJJ)I

    .line 2315
    :cond_19
    return-void
.end method

.method private handleLteRrcInfo(Landroid/os/AsyncResult;)V
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2318
    if-eqz p1, :cond_f

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    goto :goto_f

    .line 2322
    :cond_7
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleLteRrcInfo([I)V

    .line 2323
    return-void

    .line 2319
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "LTE_RRC_INFO report failed!"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2320
    return-void
.end method

.method private handleLteRrcInfo([I)V
    .registers 6
    .param p1, "ret"    # [I

    .line 2326
    if-eqz p1, :cond_15

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 2327
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/vtproxy/ImsThinClient;->setRlQualInfo(IIII)I

    .line 2330
    :cond_15
    return-void
.end method

.method private handleMtNewRingReport(Lcom/android/internal/telephony/Connection;)V
    .registers 6
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .line 2217
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMtNewRingReport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2219
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    if-nez v0, :cond_26

    .line 2220
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleMtNewRingReport: mMtStatusMgr is null"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2221
    return-void

    .line 2224
    :cond_26
    if-eqz p1, :cond_78

    .line 2225
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallEnded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2233
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "open do-recovery"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2234
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2236
    :cond_67
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->getPhoneId(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/MtStatusManager;->notifyRingCall(Ljava/lang/String;I)V

    .line 2238
    :cond_78
    return-void
.end method

.method private handleMtStatusReport(Lcom/huawei/ims/MtStatusReport;)V
    .registers 5
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 2176
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMtStatusReport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2178
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    if-nez v0, :cond_26

    .line 2179
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleMtStatusReport: mMtStatusMgr is null"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2180
    return-void

    .line 2183
    :cond_26
    if-eqz p1, :cond_91

    .line 2184
    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getCallStatus()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_59

    .line 2185
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getCallNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2186
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "close do-recovery"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2189
    :cond_4f
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/MtStatusManager;->addIncomingCall(Lcom/huawei/ims/MtStatusReport;)V

    goto :goto_91

    .line 2190
    :cond_59
    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getCallStatus()I

    move-result v0

    if-ne v0, v1, :cond_8a

    .line 2191
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/ims/MtStatusReport;->getCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallEnded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2192
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "open do-recovery"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2193
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2195
    :cond_80
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMtStatusMgr:Lcom/huawei/ims/MtStatusManager;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$5300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/MtStatusManager;->addFailCall(Lcom/huawei/ims/MtStatusReport;)V

    goto :goto_91

    .line 2197
    :cond_8a
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "status not supported. "

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2200
    :cond_91
    :goto_91
    return-void
.end method

.method private handleNetworkStateChanged(II)V
    .registers 10
    .param p1, "dataRegState"    # I
    .param p2, "rilRat"    # I

    .line 2131
    const/4 v0, 0x0

    .line 2132
    .local v0, "isChangedBetweenLteAndNr":Z
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsNrModeSa:Z
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$2000(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-nez p1, :cond_1a

    .line 2133
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsRilTech:I
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$5100(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isChangeBetweenLteAndNr(II)Z

    move-result v0

    .line 2134
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsRilTech:I
    invoke-static {v1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->access$5102(Lcom/huawei/ims/HwImsServiceImpl;I)I

    .line 2139
    :cond_1a
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 2140
    if-nez p1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 2141
    .local v1, "isDataReg":Z
    :goto_30
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->setIsDataReg(Z)V

    .line 2142
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsUtImpl;->isSimCardCheckedByUt()Z

    move-result v3

    .line 2143
    .local v3, "isSimCardCheckedByUt":Z
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNetworkStateChanged: isSimCardCheckedByUt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isDataReg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2145
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUse403ForLocalCw()Z

    move-result v4

    if-eqz v4, :cond_7a

    if-nez v3, :cond_7a

    if-eqz v1, :cond_7a

    .line 2146
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl;->detectSimCardSubscriptionStatus()V

    .line 2149
    .end local v1    # "isDataReg":Z
    .end local v3    # "isSimCardCheckedByUt":Z
    :cond_7a
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->optimizeImsRegisterState()Z
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$4900(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 2150
    return-void

    .line 2152
    :cond_83
    if-nez p2, :cond_ba

    .line 2153
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PS abnormal, rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2154
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isHangUpWhenLostNet()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 2155
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->hangupCallsWhenNoService()V

    .line 2159
    :cond_ba
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v1

    if-eqz v1, :cond_126

    .line 2160
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->detectImsRegisterState(II)I

    move-result v1

    .line 2161
    .local v1, "imsRegistration":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After detect, ims register state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2162
    if-nez v1, :cond_f6

    .line 2163
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v3

    if-eqz v3, :cond_126

    .line 2164
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->imsRegStateChangeCallBack(I)V

    goto :goto_126

    .line 2166
    :cond_f6
    const/4 v2, 0x3

    if-ne v1, v2, :cond_126

    .line 2167
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsNrModeSa:Z
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$2000(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_11b

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsCurrentHaveCall:Z
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$5200(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_11b

    if-eqz v0, :cond_11b

    .line 2168
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 2170
    :cond_11b
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 2173
    .end local v1    # "imsRegistration":I
    :cond_126
    :goto_126
    return-void
.end method

.method private handleOnHoldTone(Landroid/os/AsyncResult;)V
    .registers 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1328
    const-string v0, "HwImsServiceImpl"

    const-string v1, "handleOnHoldTone..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 1331
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1332
    .local v1, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_16

    .line 1333
    return-void

    .line 1336
    :cond_16
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v2

    .line 1337
    .local v2, "slotId":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1338
    .local v3, "bundle":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_5e

    const-string v4, "support_hold_tone_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_5e

    .line 1343
    :cond_31
    if-nez p1, :cond_34

    .line 1344
    return-void

    .line 1347
    :cond_34
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_58

    .line 1348
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1349
    .local v4, "startOnHoldLocalTone":Z
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 1350
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/huawei/ims/ImsServiceCallTracker;->handleOnHoldTone(Z)V

    goto :goto_57

    .line 1352
    :cond_52
    const-string v5, "handleOnHoldTone:Message for non-registered service class"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    .end local v4    # "startOnHoldLocalTone":Z
    :goto_57
    goto :goto_5d

    .line 1355
    :cond_58
    const-string v4, "AsyncResult exception in handleOnHoldTone."

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_5d
    return-void

    .line 1339
    :cond_5e
    :goto_5e
    const-string v4, "handleOnHoldTone,current carrier not support holdtone"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return-void
.end method

.method private handleReadDomainName(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1807
    const/4 v0, 0x0

    .line 1808
    .local v0, "domainName":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1809
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_10

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 1810
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1812
    :cond_10
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1813
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setDomainNameFromSim(Ljava/lang/String;)V

    .line 1814
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->setHomeDomainName()I

    .line 1816
    :cond_32
    return-void
.end method

.method private handleReadIsimImpi(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, "impi":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1821
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_10

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 1822
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1824
    :cond_10
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1825
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setImpiFromSim(Ljava/lang/String;)V

    .line 1826
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 1828
    :cond_32
    return-void
.end method

.method private handleSetDmParamsDone(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 2333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2334
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2336
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2337
    .local v2, "cmdType":I
    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2338
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2339
    .local v3, "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_29

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_29

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    .line 2340
    .local v4, "result":[I
    :goto_2a
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_34

    iget-object v7, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_34

    move v7, v6

    goto :goto_35

    :cond_34
    move v7, v5

    .line 2341
    .local v7, "isArCheck":Z
    :goto_35
    if-eqz v4, :cond_3f

    array-length v8, v4

    if-lez v8, :cond_3f

    aget v8, v4, v5

    if-ne v8, v6, :cond_3f

    move v5, v6

    .line 2342
    .local v5, "isResultCheck":Z
    :cond_3f
    const-string v8, "ret"

    if-eqz v7, :cond_5f

    if-eqz v5, :cond_5f

    .line 2343
    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSetDmParamsDone success!type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2344
    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_79

    .line 2346
    :cond_5f
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSetDmParamsDone fail!type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v6, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2347
    const/4 v6, -0x1

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2349
    :goto_79
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v6, v6, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2350
    return-void
.end method

.method private handleSetSmsConfig(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1864
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_SET_SMS_CONFIG"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1865
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1866
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_19

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_19

    .line 1867
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleSetSmsConfig success! "

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_56

    .line 1869
    :cond_19
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleSetSmsConfig fail!"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1870
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    const-string v2, "sms_ims_set_value"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1871
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 1872
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3c

    move v2, v3

    goto :goto_3d

    :cond_3c
    move v2, v4

    .line 1873
    .local v2, "isSmsImsSet":Z
    :goto_3d
    if-eqz v2, :cond_4b

    .line 1874
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_56

    .line 1876
    :cond_4b
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1879
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "isSmsImsSet":Z
    :goto_56
    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsServiceState;",
            ">;)V"
        }
    .end annotation

    .line 1390
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ImsServiceState;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1391
    .local v1, "updateListSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    if-ge v2, v1, :cond_277

    .line 1392
    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsServiceState;

    .line 1393
    .local v4, "update":Lcom/huawei/ims/ImsServiceState;
    if-eqz v4, :cond_271

    iget v5, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    invoke-direct {v0, v5}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isSrvTypeValid(I)Z

    move-result v5

    if-eqz v5, :cond_271

    .line 1394
    const/4 v5, 0x0

    .line 1395
    .local v5, "srvSt":Lcom/huawei/ims/ImsServiceState;
    iget v6, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    const/4 v7, 0x4

    const/16 v8, 0xb

    if-ne v6, v8, :cond_2c

    .line 1396
    iget-object v6, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;
    invoke-static {v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$1800(Lcom/huawei/ims/HwImsServiceImpl;)[Lcom/huawei/ims/ImsServiceState;

    move-result-object v6

    aget-object v5, v6, v7

    goto :goto_36

    .line 1398
    :cond_2c
    iget-object v6, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mServiceState:[Lcom/huawei/ims/ImsServiceState;
    invoke-static {v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$1800(Lcom/huawei/ims/HwImsServiceImpl;)[Lcom/huawei/ims/ImsServiceState;

    move-result-object v6

    iget v9, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    aget-object v5, v6, v9

    .line 1400
    :goto_36
    iget-boolean v6, v4, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    iput-boolean v6, v5, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    .line 1401
    iget v6, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    iput v6, v5, Lcom/huawei/ims/ImsServiceState;->type:I

    .line 1402
    iget-object v6, v4, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    if-eqz v6, :cond_54

    .line 1403
    iget-object v6, v4, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    array-length v6, v6

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    .line 1404
    iget-object v6, v4, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    iget-object v9, v4, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    array-length v9, v9

    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, v5, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    .line 1406
    :cond_54
    iget-object v6, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    if-eqz v6, :cond_26e

    iget-object v6, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v6, v6

    if-lez v6, :cond_26e

    .line 1407
    iget-object v6, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v6, v6

    new-array v6, v6, [Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    iput-object v6, v5, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    .line 1409
    iget-object v6, v5, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    .line 1411
    .local v6, "actSt":[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_67
    iget-object v10, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v10, v10

    if-ge v9, v10, :cond_26b

    .line 1412
    iget-object v10, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    aget-object v10, v10, v9

    .line 1413
    .local v10, "actUpdate":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    new-instance v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    invoke-direct {v11}, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;-><init>()V

    aput-object v11, v6, v9

    .line 1414
    aget-object v11, v6, v9

    iget v12, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    iput v12, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    .line 1415
    aget-object v11, v6, v9

    iget v12, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->registered:I

    iput v12, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->registered:I

    .line 1416
    iget v11, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v11, v12, :cond_92

    iget v11, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    if-eqz v11, :cond_92

    .line 1418
    aget-object v11, v6, v9

    iput v13, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    goto :goto_98

    .line 1420
    :cond_92
    aget-object v11, v6, v9

    iget v14, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    iput v14, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    .line 1422
    :goto_98
    aget-object v11, v6, v9

    iget v11, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    iput v11, v5, Lcom/huawei/ims/ImsServiceState;->state:I

    .line 1423
    aget-object v11, v6, v9

    iget v14, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    iput v14, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    .line 1424
    const/4 v11, -0x1

    .line 1425
    .local v11, "feature":I
    aget-object v14, v6, v9

    iget v14, v14, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x12

    if-eq v14, v15, :cond_b8

    aget-object v14, v6, v9

    iget v14, v14, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x13

    if-ne v14, v15, :cond_b6

    goto :goto_b8

    :cond_b6
    const/4 v14, 0x0

    goto :goto_b9

    :cond_b8
    :goto_b8
    move v14, v13

    .line 1427
    .local v14, "isModeWifi":Z
    :goto_b9
    aget-object v15, v6, v9

    iget v15, v15, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/4 v7, -0x1

    if-eq v15, v7, :cond_cb

    aget-object v7, v6, v9

    iget v7, v7, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/16 v15, 0xe

    if-ne v7, v15, :cond_c9

    goto :goto_cb

    :cond_c9
    const/4 v7, 0x0

    goto :goto_cc

    :cond_cb
    :goto_cb
    move v7, v13

    .line 1429
    .local v7, "isModeLte":Z
    :goto_cc
    aget-object v15, v6, v9

    iget v15, v15, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/16 v12, 0x14

    if-ne v15, v12, :cond_d6

    move v12, v13

    goto :goto_d7

    :cond_d6
    const/4 v12, 0x0

    .line 1430
    .local v12, "isModeNr":Z
    :goto_d7
    if-nez v14, :cond_e2

    if-nez v7, :cond_e2

    if-eqz v12, :cond_de

    goto :goto_e2

    :cond_de
    move-object/from16 v16, v4

    goto/16 :goto_260

    .line 1431
    :cond_e2
    :goto_e2
    iget v15, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    if-nez v15, :cond_ff

    .line 1432
    if-eqz v7, :cond_ea

    const/4 v15, 0x0

    goto :goto_eb

    .line 1433
    :cond_ea
    const/4 v15, 0x2

    :goto_eb
    move v11, v15

    .line 1434
    iget-object v15, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v14, :cond_f8

    aget-object v8, v6, v9

    iget v8, v8, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    if-ne v8, v13, :cond_f8

    move v8, v13

    goto :goto_f9

    :cond_f8
    const/4 v8, 0x0

    :goto_f9
    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z
    invoke-static {v15, v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$1502(Lcom/huawei/ims/HwImsServiceImpl;Z)Z

    const/16 v15, 0xb

    goto :goto_112

    .line 1436
    :cond_ff
    iget v8, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    const/16 v15, 0xb

    if-ne v8, v15, :cond_10c

    .line 1437
    if-eqz v7, :cond_109

    const/4 v8, 0x4

    goto :goto_10a

    .line 1438
    :cond_109
    const/4 v8, 0x5

    :goto_10a
    move v11, v8

    goto :goto_112

    .line 1440
    :cond_10c
    if-eqz v7, :cond_110

    move v8, v13

    goto :goto_111

    .line 1441
    :cond_110
    const/4 v8, 0x3

    :goto_111
    move v11, v8

    .line 1443
    :goto_112
    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v8, v8, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x3fc

    if-eqz v8, :cond_132

    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v8, v8, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_132

    .line 1444
    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v8, v8, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1445
    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v15, "remove sos pending msg!"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v8, v15}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1447
    :cond_132
    aget-object v8, v6, v9

    iget v8, v8, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const-string v15, "UNREGISTERED"

    const/4 v13, 0x2

    if-eq v8, v13, :cond_1ae

    aget-object v8, v6, v9

    iget v8, v8, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const/4 v13, 0x1

    if-ne v8, v13, :cond_145

    move-object/from16 v16, v4

    goto :goto_1b0

    .line 1476
    :cond_145
    aget-object v8, v6, v9

    iget v8, v8, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    if-eqz v8, :cond_185

    aget-object v8, v6, v9

    iget v8, v8, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const/4 v13, 0x3

    if-ne v8, v13, :cond_155

    move-object/from16 v16, v4

    goto :goto_187

    .line 1484
    :cond_155
    aget-object v8, v6, v9

    iget v8, v8, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const/16 v13, 0x8

    if-ne v8, v13, :cond_181

    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v8, v8, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_181

    .line 1485
    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v13, "current service status is sos pending !"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v8, v13}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1486
    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v8, v8, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x3fc

    invoke-virtual {v8, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1487
    .local v8, "msg":Landroid/os/Message;
    iget-object v13, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v13, v13, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v4

    .end local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    .local v16, "update":Lcom/huawei/ims/ImsServiceState;
    const-wide/16 v3, 0x7530

    invoke-virtual {v13, v8, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_260

    .line 1484
    .end local v8    # "msg":Landroid/os/Message;
    .end local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    :cond_181
    move-object/from16 v16, v4

    .end local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    goto/16 :goto_260

    .line 1476
    .end local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    :cond_185
    move-object/from16 v16, v4

    .line 1478
    .end local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    :goto_187
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disabledFeature = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1479
    if-eqz v14, :cond_260

    .line 1480
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1900(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v3

    .line 1481
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 1482
    invoke-direct {v0, v15}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    goto/16 :goto_260

    .line 1447
    .end local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    :cond_1ae
    move-object/from16 v16, v4

    .line 1449
    .end local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    :goto_1b0
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabledFeature = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mIsEmergencyUnderWifi = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1450
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z
    invoke-static {v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",getImsRegisterState() = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegisterState()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1449
    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1451
    if-eqz v14, :cond_225

    .line 1452
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    if-eqz v3, :cond_210

    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v3

    if-eqz v3, :cond_210

    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1453
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_210

    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegisterState()I

    move-result v3

    if-nez v3, :cond_210

    .line 1454
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v4, "Emergency call under vowifi and ims is unregisterd, not notify vowifi state."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_260

    .line 1457
    :cond_210
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1900(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v3

    .line 1458
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1459
    const-string v3, "REGISTERED"

    invoke-direct {v0, v3}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1460
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$1202(Lcom/huawei/ims/HwImsServiceImpl;I)I

    goto :goto_260

    .line 1462
    :cond_225
    const/4 v4, 0x1

    if-eqz v7, :cond_23b

    .line 1463
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1900(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v3

    .line 1464
    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1465
    invoke-direct {v0, v15}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1466
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v4, 0x0

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$1202(Lcom/huawei/ims/HwImsServiceImpl;I)I

    goto :goto_260

    .line 1467
    :cond_23b
    if-eqz v12, :cond_259

    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsNrModeSa:Z
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$2000(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_259

    .line 1468
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1900(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v3

    .line 1469
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1470
    invoke-direct {v0, v15}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1472
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v4, 0x0

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$1202(Lcom/huawei/ims/HwImsServiceImpl;I)I

    goto :goto_260

    .line 1474
    :cond_259
    iget-object v3, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v4, "Nothing to do, just log"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1411
    .end local v7    # "isModeLte":Z
    .end local v10    # "actUpdate":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    .end local v11    # "feature":I
    .end local v12    # "isModeNr":Z
    .end local v14    # "isModeWifi":Z
    :cond_260
    :goto_260
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    const/4 v7, 0x4

    const/16 v8, 0xb

    goto/16 :goto_67

    .end local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    :cond_26b
    move-object/from16 v16, v4

    .end local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    goto :goto_273

    .line 1406
    .end local v6    # "actSt":[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    .end local v9    # "i":I
    .end local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    :cond_26e
    move-object/from16 v16, v4

    .end local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    goto :goto_273

    .line 1393
    .end local v5    # "srvSt":Lcom/huawei/ims/ImsServiceState;
    .end local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    :cond_271
    move-object/from16 v16, v4

    .line 1391
    .end local v4    # "update":Lcom/huawei/ims/ImsServiceState;
    .restart local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    :goto_273
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 1494
    .end local v2    # "j":I
    .end local v16    # "update":Lcom/huawei/ims/ImsServiceState;
    :cond_277
    return-void
.end method

.method private handleSrvccStateChanged([I)V
    .registers 4
    .param p1, "ret"    # [I

    .line 2294
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleSrvccStateChanged"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2295
    if-eqz p1, :cond_16

    array-length v0, p1

    if-eqz v0, :cond_16

    .line 2296
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 2297
    .local v0, "state":I
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/HwVolteChrManager;->notifySrvccState(I)V

    .line 2299
    .end local v0    # "state":I
    :cond_16
    return-void
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .registers 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1311
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleSuppSvc"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1312
    const/4 v0, 0x0

    .line 1313
    .local v0, "notification":Lcom/huawei/ims/HwImsSuppServiceNotification;
    if-eqz p1, :cond_2d

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2d

    .line 1314
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/huawei/ims/HwImsSuppServiceNotification;

    .line 1316
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1317
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->handleSuppSvcUnsol(Lcom/huawei/ims/HwImsSuppServiceNotification;)V

    goto :goto_34

    .line 1319
    :cond_25
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleSuppSvc:Message for non-registered service class"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1320
    return-void

    .line 1323
    :cond_2d
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "AsyncResult exception in handleSuppSvc."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1325
    :goto_34
    return-void
.end method

.method private handleUnsolSimNvCfgFinished(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1791
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1792
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_38

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_38

    .line 1793
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1794
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_37

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_37

    .line 1795
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1796
    .local v2, "result":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUnsolSimNvCfgFinished: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1797
    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    .line 1798
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->setVtCapabilityToModem()V
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$2200(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1801
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "result":I
    :cond_37
    goto :goto_3f

    .line 1802
    :cond_38
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "AsyncResult exception in handleUnsolSimNvCfgFinished"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1804
    :goto_3f
    return-void
.end method

.method private handleUnsolSpeechInfo(I)V
    .registers 9
    .param p1, "speechCodec"    # I

    .line 1901
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_AMR_WB_SHOW_HD_VOLTE:Z

    if-eqz v0, :cond_9

    .line 1902
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->setSpeechCodec(I)V
    invoke-static {v0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->access$4400(Lcom/huawei/ims/HwImsServiceImpl;I)V

    .line 1904
    :cond_9
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUnsolSpeechInfo speechCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1905
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->broadcastSpeechCodecNotification(I)V

    .line 1906
    move v0, p1

    .line 1907
    .local v0, "tmpSpeechCodec":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_49

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3d

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3d

    .line 1919
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$4500(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_54

    .line 1915
    :cond_3d
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$4500(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "Codec=AMR_WB"

    aput-object v3, v1, v2

    .line 1916
    const/4 v0, 0x2

    .line 1917
    goto :goto_54

    .line 1909
    :cond_49
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$4500(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "Codec=AMR_NB"

    aput-object v3, v1, v2

    .line 1910
    nop

    .line 1922
    :goto_54
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current speechInfoCodec is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mSpeechInfoCodec:[Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$4500(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1923
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1924
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_b6

    .line 1925
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->setSpeechInfoCodec(I)V

    .line 1927
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1928
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSpeechInfoCodec()Ljava/lang/String;

    move-result-object v3

    .line 1929
    .local v3, "speechInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAudioParameters speechInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1930
    if-eqz v2, :cond_b6

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b6

    .line 1931
    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 1932
    .local v4, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1935
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "speechInfo":Ljava/lang/String;
    .end local v4    # "audioManager":Landroid/media/AudioManager;
    :cond_b6
    return-void
.end method

.method private handleUnsolVoWiFiRegErrReport(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1767
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1768
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v1

    .line 1769
    .local v1, "slotId":I
    if-eqz v0, :cond_7f

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_7f

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7f

    .line 1770
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/huawei/ims/ImsRegErrReport;

    if-eqz v2, :cond_66

    .line 1771
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/ImsRegErrReport;

    .line 1772
    .local v2, "result":Lcom/huawei/ims/ImsRegErrReport;
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRegErrReport;->getErrDomain()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_60

    .line 1773
    new-instance v3, Landroid/content/Intent;

    const-string v4, "huawei.intent.action.IMS_REG_ERROR_REPORT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1774
    .local v3, "voWiFiReportIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRegErrReport;->getErrDomain()I

    move-result v4

    const-string v5, "errDomain"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1775
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRegErrReport;->getErrStage()I

    move-result v4

    const-string v5, "errStage"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRegErrReport;->getFailCause()I

    move-result v4

    const-string v5, "failcause"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1777
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRegErrReport;->getFailString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failstring"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    const-string v4, "subscription"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1779
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1781
    .end local v3    # "voWiFiReportIntent":Landroid/content/Intent;
    :cond_60
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->handleIllegalmeFailCause(Lcom/huawei/ims/ImsRegErrReport;)V
    invoke-static {v3, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$4000(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsRegErrReport;)V

    .line 1782
    .end local v2    # "result":Lcom/huawei/ims/ImsRegErrReport;
    goto :goto_95

    .line 1783
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUnsolVoWiFiRegErrReport ar.result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HwImsServiceImpl"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 1786
    :cond_7f
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error EVENT_UNSOL_VOWIF_REG_ERR_REPORT AsyncResult ar= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1788
    :goto_95
    return-void
.end method

.method private hangupCallsWhenNoService()V
    .registers 13

    .line 2059
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2060
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v1, :cond_12

    .line 2061
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "get imsphone fails."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2062
    return-void

    .line 2065
    :cond_12
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2066
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    .line 2067
    .local v2, "foregroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    .line 2068
    .local v3, "ringingCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    .line 2070
    .local v4, "backgroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    const/4 v5, 0x0

    .line 2071
    .local v5, "isForegroundCallPresent":Z
    const/4 v6, 0x0

    .line 2072
    .local v6, "isBackgroundCallPresent":Z
    const/4 v7, 0x0

    .line 2074
    .local v7, "isRingCallPresent":Z
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v7

    .line 2075
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v6

    .line 2076
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v5

    .line 2078
    if-nez v5, :cond_36

    if-nez v6, :cond_36

    if-eqz v7, :cond_3d

    .line 2079
    :cond_36
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v8

    invoke-interface {v8, v2, v3, v4}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerNoServiceDuringCallEvent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 2083
    :cond_3d
    if-eqz v7, :cond_65

    .line 2084
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v9, "reject call since lost network."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2086
    :try_start_46
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_49
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 2089
    goto :goto_65

    .line 2087
    :catch_4a
    move-exception v8

    .line 2088
    .local v8, "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hangup ring call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2092
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_65
    :goto_65
    if-eqz v6, :cond_8d

    .line 2093
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v9, "hang up bg call since lost network."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2095
    :try_start_6e
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_71
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_6e .. :try_end_71} :catch_72

    .line 2098
    goto :goto_8d

    .line 2096
    :catch_72
    move-exception v8

    .line 2097
    .restart local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hangup bg call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2101
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_8d
    :goto_8d
    if-eqz v5, :cond_b5

    .line 2102
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v9, "hang up fg call since lost network."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2104
    :try_start_96
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_99
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 2107
    goto :goto_b5

    .line 2105
    :catch_9a
    move-exception v8

    .line 2106
    .restart local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hangup fg call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2109
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_b5
    :goto_b5
    return-void
.end method

.method private imsRegStateChangeCallBack(I)V
    .registers 9
    .param p1, "registrationState"    # I

    .line 1251
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAccessTechMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mIsCarrierConfigChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1252
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsCarrierConfigChange:Z
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1300(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1251
    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1254
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_89

    if-eq p1, v1, :cond_4c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3c

    goto :goto_ae

    .line 1271
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1400(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistering(I)V

    .line 1272
    goto :goto_ae

    .line 1256
    :cond_4c
    sget-boolean v2, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1257
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getIccId()Ljava/lang/String;

    move-result-object v3

    .line 1256
    invoke-static {v2, v3}, Lcom/huawei/ims/cust/HwCustUtil;->isVzwCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 1258
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/huawei/ims/cust/HwCustVzwIms;->cleanVzwImsRegMode(Landroid/content/Context;I)V

    .line 1260
    :cond_79
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1400(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mAccessTechMode:I
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(I)V

    .line 1261
    goto :goto_ae

    .line 1263
    :cond_89
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1265
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    sget-boolean v3, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v3, :cond_a4

    .line 1266
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/huawei/ims/cust/HwCustVzwIms;->cleanVzwImsRegMode(Landroid/content/Context;I)V

    .line 1268
    :cond_a4
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsRegistrationImpl:Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1400(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_ad
    .catchall {:try_start_3c .. :try_end_ad} :catchall_af

    .line 1269
    nop

    .line 1278
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_ae
    goto :goto_c6

    .line 1276
    :catchall_af
    move-exception v2

    .line 1277
    .local v2, "throwable":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "imsRegStateChangeCallBack()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1280
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_c6
    const-string v2, "REGISTERED"

    if-ne p1, v1, :cond_cc

    move-object v3, v2

    goto :goto_ce

    :cond_cc
    const-string v3, "UNREGISTERED"

    .line 1281
    .local v3, "imsState":Ljava/lang/String;
    :goto_ce
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v4

    if-eqz v4, :cond_e4

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v4

    if-eqz v4, :cond_e4

    move v4, v1

    goto :goto_e5

    :cond_e4
    move v4, v0

    .line 1282
    .local v4, "isEmergencyUnderWifi":Z
    :goto_e5
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v5, v5, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_f7

    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v5, v5, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3fc

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_ff

    :cond_f7
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1283
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z
    invoke-static {v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v5

    if-eqz v5, :cond_101

    :cond_ff
    move v5, v1

    goto :goto_102

    :cond_101
    move v5, v0

    .line 1284
    .local v5, "isMsgSosPending":Z
    :goto_102
    if-eqz v4, :cond_12b

    if-eqz v5, :cond_12b

    .line 1285
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not notify ims state change, imsState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsEmergencyUnderWifi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1286
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsEmergencyUnderWifi:Z
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1285
    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_156

    .line 1288
    :cond_12b
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsCarrierConfigChange:Z
    invoke-static {v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$1300(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_139

    .line 1289
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->notifyImsState(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_156

    .line 1290
    :cond_139
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 1294
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsImsStateRegBeforeCarrierConfig:Z
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1602(Lcom/huawei/ims/HwImsServiceImpl;Z)Z

    .line 1295
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "ims state broadcast will send when carrierconfig is ok!"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_156

    .line 1299
    :cond_14c
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->notifyImsState(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsImsStateRegBeforeCarrierConfig:Z
    invoke-static {v1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$1602(Lcom/huawei/ims/HwImsServiceImpl;Z)Z

    .line 1303
    :goto_156
    return-void
.end method

.method private isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z
    .registers 3
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2112
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2113
    const/4 v0, 0x1

    return v0

    .line 2115
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private isChangeBetweenLteAndNr(II)Z
    .registers 6
    .param p1, "oldRilTech"    # I
    .param p2, "newRilTech"    # I

    .line 2119
    const/4 v0, 0x1

    const/16 v1, 0xe

    const/16 v2, 0x14

    if-ne p1, v2, :cond_a

    if-ne p2, v1, :cond_a

    .line 2121
    return v0

    .line 2123
    :cond_a
    if-ne p1, v1, :cond_f

    if-ne p2, v2, :cond_f

    .line 2125
    return v0

    .line 2127
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private isRadioTechnologyLteOrNr(I)Z
    .registers 3
    .param p1, "rilRat"    # I

    .line 2266
    const/16 v0, 0xe

    if-eq p1, v0, :cond_b

    const/16 v0, 0x14

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private isSrvTypeValid(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 1382
    if-nez p1, :cond_4

    .line 1383
    const/4 v0, 0x1

    return v0

    .line 1385
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private notifyImsVoWiFiState(Ljava/lang/String;)V
    .registers 6
    .param p1, "state"    # Ljava/lang/String;

    .line 1497
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsRemoveVowifiIconFlag:Z
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2100(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1498
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "IMS-VoWiFi state,there is CS call now to keep remove vowifi icon."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1499
    return-void

    .line 1501
    :cond_10
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 1502
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify IMS-VoWiFi state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", slot is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1503
    const-string v1, "REGISTERED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1504
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->setVtCapabilityToModem()V
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$2200(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1506
    :cond_43
    new-instance v1, Landroid/content/Intent;

    const-string v2, "huawei.intent.action.IMS_SERVICE_VOWIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v1, "imsVoWiFiStateIntent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    const-string v2, "subscription"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1509
    const-string v2, "slot"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1510
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1512
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 1513
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsServiceCallTracker;->getFeatureCapabilityListener()Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    move-result-object v3

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->imsFeatureCapabilityChangeCallBack(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$2300(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V

    .line 1515
    :cond_77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1519
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1521
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_373

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_355

    if-eq v0, v4, :cond_351

    const/4 v3, 0x4

    if-eq v0, v3, :cond_322

    if-eq v0, v1, :cond_318

    const/16 v1, 0x8

    if-eq v0, v1, :cond_310

    const/16 v1, 0xc

    if-eq v0, v1, :cond_307

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2d6

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2d1

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_2a0

    const/16 v1, 0x3fa

    if-eq v0, v1, :cond_290

    const/16 v1, 0x3fc

    if-eq v0, v1, :cond_279

    const v1, 0x9c41

    if-eq v0, v1, :cond_257

    const/16 v1, 0x44c

    if-eq v0, v1, :cond_24e

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_240

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_384

    packed-switch v0, :pswitch_data_396

    .line 1726
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleExtendMethod(Landroid/os/Message;)V

    goto/16 :goto_383

    .line 1679
    :pswitch_5e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleImsDmcn()V

    .line 1680
    goto/16 :goto_383

    .line 1685
    :pswitch_63
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleGetDmParamsDone(Landroid/os/Message;)V

    .line 1686
    goto/16 :goto_383

    .line 1682
    :pswitch_68
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSetDmParamsDone(Landroid/os/Message;)V

    .line 1683
    goto/16 :goto_383

    .line 1542
    :pswitch_6d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1543
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleLteRrcInfo(Landroid/os/AsyncResult;)V

    .line 1544
    goto/16 :goto_383

    .line 1538
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1539
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleLtePdcpInfo(Landroid/os/AsyncResult;)V

    .line 1540
    goto/16 :goto_383

    .line 1669
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7f
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, " handleMessage (EVENT_UNSOl_SPEECH_INFO)"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1670
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1671
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_9f

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_9f

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_9f

    .line 1672
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1673
    .local v2, "intResult":[I
    aget v1, v2, v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleUnsolSpeechInfo(I)V

    .line 1674
    .end local v2    # "intResult":[I
    goto/16 :goto_383

    .line 1675
    :cond_9f
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "EVENT_UNSOL_SPEECH_INFO exception"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1677
    goto/16 :goto_383

    .line 1658
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a8
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_SRVCC_STATE_CHANGED"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1659
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->getImsStateBindRat()I
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3600(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v0

    if-ne v0, v2, :cond_383

    .line 1660
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1661
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_ca

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_ca

    .line 1662
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSrvccStateChanged([I)V

    goto/16 :goto_383

    .line 1664
    :cond_ca
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "Srvcc occurs exception."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_383

    .line 1652
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d3
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_CS_REDIAL"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->getImsStateBindRat()I
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3600(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v0

    if-ne v0, v2, :cond_383

    .line 1654
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwVolteChrManager;->notifyCSRedial()V

    goto/16 :goto_383

    .line 1646
    :pswitch_eb
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_REGISTERED_TO_NETWORK"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    if-eqz v0, :cond_383

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isAirModeResetCwInModem()Z

    move-result v0

    if-eqz v0, :cond_383

    .line 1648
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsUtImpl:Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    goto/16 :goto_383

    .line 1616
    :pswitch_111
    :try_start_111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1617
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 1618
    .local v1, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1619
    .local v2, "dataRegState":I
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1620
    .local v3, "rilRat":I
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED, dataRegState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Ril RAT is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleNetworkStateChanged(II)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_14a} :catch_14c

    .line 1625
    .end local v1    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "dataRegState":I
    .end local v3    # "rilRat":I
    goto/16 :goto_383

    .line 1623
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_14c
    move-exception v0

    .line 1624
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "[error]parse message of EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED fail"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1626
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_383

    .line 1637
    :pswitch_156
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_MT_NEW_RING_REPORT"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1638
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1639
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_174

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_174

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_174

    .line 1640
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleMtNewRingReport(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_383

    .line 1642
    :cond_174
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MT_NEW_RING_REPORT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1644
    goto/16 :goto_383

    .line 1628
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_18c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_MT_STATUS_REPORT"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1629
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1630
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1aa

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1aa

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1aa

    .line 1631
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/MtStatusReport;

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleMtStatusReport(Lcom/huawei/ims/MtStatusReport;)V

    goto/16 :goto_383

    .line 1633
    :cond_1aa
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MT_STATUS_REPORT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1635
    goto/16 :goto_383

    .line 1720
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c2
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleReadIsimImpi(Landroid/os/Message;)V

    .line 1721
    goto/16 :goto_383

    .line 1717
    :pswitch_1c7
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleReadDomainName(Landroid/os/Message;)V

    .line 1718
    goto/16 :goto_383

    .line 1706
    :pswitch_1cc
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, " handleMessage (EVENT_IMS_SET_VT_CAPABILITY)"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1707
    goto/16 :goto_383

    .line 1564
    :pswitch_1d5
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_REG_FAIL_DELAY"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1566
    .local v0, "imsphone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_1ff

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsRegisterState:I
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$2800(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v1

    if-eq v1, v2, :cond_1ff

    .line 1568
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerImsRegFailEvent(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v1

    .line 1567
    xor-int/2addr v1, v2

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->sIsFirstReg:Z
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$302(Z)Z

    goto/16 :goto_383

    .line 1570
    :cond_1ff
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "get imsphone fail, can\'t trigger Ims Reg Fail Event "

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1572
    goto/16 :goto_383

    .line 1609
    .end local v0    # "imsphone":Lcom/android/internal/telephony/Phone;
    :pswitch_208
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleImsGetImpuDone(Landroid/os/Message;)V

    .line 1610
    goto/16 :goto_383

    .line 1612
    :pswitch_20f
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->onUpdateIccAvailability()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3400(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1613
    goto/16 :goto_383

    .line 1599
    :pswitch_216
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->IS_FEATURE_VOLTE_DYN:Z

    if-nez v0, :cond_220

    .line 1600
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimRecordsLoaded()V

    goto :goto_239

    .line 1601
    :cond_220
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsMainSlotChange:Z
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3200(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_239

    .line 1602
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "main slot changed, handle sim records loaded."

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimRecordsLoaded()V

    .line 1604
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mIsMainSlotChange:Z
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3202(Lcom/huawei/ims/HwImsServiceImpl;Z)Z

    .line 1606
    :cond_239
    :goto_239
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->registerReceiverForBattery()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3300(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1607
    goto/16 :goto_383

    .line 1709
    :cond_240
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_RADIO_ON"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->setVtCapabilityToModem()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2200(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1711
    goto/16 :goto_383

    .line 1713
    :cond_24e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1714
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleOnHoldTone(Landroid/os/AsyncResult;)V

    .line 1715
    goto/16 :goto_383

    .line 1698
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_257
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "VT_FLOW_INFO_REPORT"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1699
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1700
    .local v0, "asyncresult":Landroid/os/AsyncResult;
    if-eqz v0, :cond_383

    .line 1701
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1702
    .local v1, "data":J
    invoke-static {}, Lcom/huawei/ims/vt/ImsMediaProvider;->getInstance()Lcom/huawei/ims/vt/ImsMediaProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/huawei/ims/vt/ImsMediaProvider;->vtFlowInfoReport(IJ)V

    .line 1703
    .end local v1    # "data":J
    goto/16 :goto_383

    .line 1693
    .end local v0    # "asyncresult":Landroid/os/AsyncResult;
    :cond_279
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, " handleMessage (EVENT_VOWIFI_SOS_PENDING_TIMEOUT)"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$1900(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 1695
    const-string v0, "UNREGISTERED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1696
    goto/16 :goto_383

    .line 1688
    :cond_290
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, " handleMessage (EVENT_SEND_BATTERY_STATUS)"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1689
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1690
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleBatteryStatus(Landroid/os/AsyncResult;)V

    .line 1691
    goto/16 :goto_383

    .line 1591
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2a0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1592
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2b9

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2b9

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2b9

    .line 1593
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->handleModifyCallResult([I)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$3100(Lcom/huawei/ims/HwImsServiceImpl;[I)V

    goto/16 :goto_383

    .line 1595
    :cond_2b9
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MODIFY_RESULT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1597
    goto/16 :goto_383

    .line 1723
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2d1
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleUnsolSimNvCfgFinished(Landroid/os/Message;)V

    .line 1724
    goto/16 :goto_383

    .line 1583
    :cond_2d6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1584
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2ef

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2ef

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2ef

    .line 1585
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/ImsCallAdapter$CallModify;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$3000(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    goto/16 :goto_383

    .line 1587
    :cond_2ef
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1589
    goto/16 :goto_383

    .line 1546
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_307
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1547
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleHandover(Landroid/os/AsyncResult;)V

    .line 1548
    goto/16 :goto_383

    .line 1550
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_310
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1551
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSuppSvc(Landroid/os/AsyncResult;)V

    .line 1552
    goto :goto_383

    .line 1579
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_318
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1580
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->handleCalls(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1581
    goto :goto_383

    .line 1523
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_322
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "Received event: EVENT_SRV_STATUS_UPDATE"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1524
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1525
    .local v0, "arResult":Landroid/os/AsyncResult;
    if-eqz v0, :cond_344

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_344

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_344

    .line 1526
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1527
    .local v1, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ImsServiceState;>;"
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    .line 1531
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->getCurrentCallFromModem()V
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2400(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1532
    .end local v1    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ImsServiceState;>;"
    goto :goto_383

    .line 1533
    :cond_344
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "IMS Service Status Update failed!"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1534
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->initServiceState()V
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$2500(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1536
    goto :goto_383

    .line 1560
    .end local v0    # "arResult":Landroid/os/AsyncResult;
    :cond_351
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleImsStateDone(Landroid/os/Message;)V

    .line 1561
    goto :goto_383

    .line 1554
    :cond_355
    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->IS_HARMONY_WATCH:Z
    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_363

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->isEuiccProvisioned()Z
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2700(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_383

    .line 1555
    :cond_363
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_383

    .line 1575
    :cond_373
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 1576
    nop

    .line 1729
    :cond_383
    :goto_383
    return-void

    :pswitch_data_384
    .packed-switch 0xf
        :pswitch_216
        :pswitch_20f
        :pswitch_208
        :pswitch_1d5
        :pswitch_1cc
        :pswitch_1c7
        :pswitch_1c2
    .end packed-switch

    :pswitch_data_396
    .packed-switch 0x3ed
        :pswitch_18c
        :pswitch_156
        :pswitch_111
        :pswitch_eb
        :pswitch_d3
        :pswitch_a8
        :pswitch_7f
        :pswitch_76
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
    .end packed-switch
.end method
