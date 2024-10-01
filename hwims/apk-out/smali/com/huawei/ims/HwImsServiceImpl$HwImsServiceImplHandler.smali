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
    .locals 0

    .line 1301
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1302
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1303
    return-void
.end method

.method private broadcastSpeechCodecNotification(I)V
    .locals 5
    .param p1, "speechCodec"    # I

    .line 2109
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 2110
    .local v0, "subId":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSpeechCodecNotification speechCodec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2111
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "EVSBroadcastReceiverPkg"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2112
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.intent.action.AUDIO_QUALITY_SET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2113
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2114
    const-string v3, "AUDIO_QUALITY_TYPE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2115
    const-string v3, "subscription"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2116
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "com.huawei.ims.permission.AUDIO_QUALITY_GET"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2117
    return-void
.end method

.method private createRegCallBackThread(I)V
    .locals 3
    .param p1, "registrationState"    # I

    .line 1311
    new-instance v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;-><init>(Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;I)V

    .line 1362
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "HwImsServiceImplRegCallbackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1363
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1364
    return-void
.end method

.method private detectImsRegisterState(II)I
    .locals 3
    .param p1, "dataRegState"    # I
    .param p2, "rilRat"    # I

    .line 2471
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

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2474
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2475
    return v0

    .line 2478
    :cond_0
    const/16 v1, 0xe

    if-ne p2, v1, :cond_1

    .line 2481
    const/4 v0, 0x3

    return v0

    .line 2484
    :cond_1
    return v0
.end method

.method private getPhoneId(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 2433
    const/4 v0, -0x1

    .line 2434
    .local v0, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2435
    .local v1, "call":Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 2436
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 2437
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2438
    if-eqz v2, :cond_0

    .line 2439
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 2443
    :cond_0
    return v0
.end method

.method private handleBatteryStatus(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2048
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3400(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3302(Lcom/huawei/ims/HwImsServiceImpl;I)I

    goto :goto_0

    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error EVENT_SEND_BATTERY_STATUS AsyncResult ar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2053
    :goto_0
    return-void
.end method

.method private handleExtendMethod(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1886
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1909
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleMessage EVENT_VOWIFI_REG_ERR_REPORT,Do Nothing"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1910
    goto :goto_0

    .line 1905
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleMessage EVENT_UNSOL_VOWIF_REG_ERR_REPORT"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1906
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleUnsolVoWiFiRegErrReport(Landroid/os/Message;)V

    .line 1907
    goto :goto_0

    .line 1888
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1889
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->handleImsRegMode(Landroid/os/AsyncResult;)V

    .line 1890
    goto :goto_0

    .line 1898
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSetSmsConfig(Landroid/os/Message;)V

    .line 1899
    goto :goto_0

    .line 1901
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleGetDMUserData(Landroid/os/Message;)V

    .line 1902
    goto :goto_0

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3100(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1894
    nop

    .line 1916
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleGetDMParamsDone(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2552
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2554
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2557
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2558
    .local v2, "cmdType":I
    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2559
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2560
    .local v3, "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 2561
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetDMParamsDone success !type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2562
    const-string v4, "data"

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2564
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetDMParamsDone fail !type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2566
    :goto_0
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2567
    return-void
.end method

.method private handleGetDMUserData(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2036
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2037
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    const-string v3, "dm_user_ims_value"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2039
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleGetDMUserData success."

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 2041
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleGetDMUserData fail!"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2043
    :goto_0
    return-void
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1432
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleHandover"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1433
    const/4 v0, 0x0

    .line 1434
    .local v0, "handover":Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1435
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;

    .line 1437
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1600(Lcom/huawei/ims/HwImsServiceImpl;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1438
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v1, :cond_0

    .line 1439
    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->handleHandover(Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;)V

    .line 1445
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    goto :goto_0

    .line 1442
    .restart local v1    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1443
    return-void

    .line 1447
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "AsyncResult exception in handleHandover."

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1450
    :goto_0
    return-void
.end method

.method private handleImsDMCN()V
    .locals 7

    .line 1982
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_DMCN "

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1983
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1987
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/huawei/ims/HwImsConfigImpl;->isATT:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1990
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1988
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.rcsserviceapplication"

    const-string v3, "com.huawei.rcs.service.RcsGlobalBroadcastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    .local v1, "component":Landroid/content/ComponentName;
    :goto_1
    nop

    .line 1992
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1995
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1996
    const-string v2, "type"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1999
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2000
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 2001
    .local v3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 2002
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 2003
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v6, "EVENT_IMS_DMCN, queryBroadcastReceivers done"

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2005
    :cond_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 2012
    :cond_3
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v6, "EVENT_IMS_DMCN, send BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2013
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v5, v5, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2014
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v5, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$3202(Lcom/huawei/ims/HwImsServiceImpl;I)I

    goto :goto_3

    .line 2006
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$3208(Lcom/huawei/ims/HwImsServiceImpl;)I

    .line 2007
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_DMCN, no receiver of BROADCAST_DMSYNCSERVICE_TO_IMS found, try again later, count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$3200(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2008
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$3200(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_5

    .line 2009
    const/16 v4, 0x3f8

    const-wide/16 v5, 0x7d0

    invoke-virtual {p0, v4, v5, v6}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2017
    :cond_5
    :goto_3
    return-void
.end method

.method private handleImsStateDone(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 2121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2124
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2125
    const/4 v1, 0x0

    .line 2127
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 2128
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 2131
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_2

    .line 2132
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v4, "Radio is not available"

    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2134
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2202(Lcom/huawei/ims/HwImsServiceImpl;I)I

    .line 2139
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1600(Lcom/huawei/ims/HwImsServiceImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2140
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->createRegCallBackThread(I)V

    .line 2141
    goto :goto_0

    .line 2143
    :cond_1
    return-void

    .line 2148
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_10

    .line 2151
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2153
    .local v1, "responseArray":[I
    aget v3, v1, v2

    .line 2154
    .local v3, "imsRegisterState":I
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS registration state is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2157
    const-string v4, "UNREGISTERED"

    .line 2158
    .local v4, "imsState":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$2200(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v5

    .line 2161
    .local v5, "oldState":I
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v6, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$3700(Lcom/huawei/ims/HwImsServiceImpl;I)V

    .line 2163
    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    .line 2165
    const-string v4, "REGISTERED"

    .line 2170
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$3800(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v7

    .line 2172
    .local v7, "optimize":Z
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 2175
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 2176
    .local v8, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_3

    .line 2178
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 2180
    .local v9, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v10

    .line 2181
    .local v10, "dataRegState":I
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v11

    .line 2182
    .local v11, "rilRat":I
    invoke-direct {p0, v10, v11}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->detectImsRegisterState(II)I

    move-result v12

    if-nez v12, :cond_3

    .line 2183
    const-string v4, "UNREGISTERED"

    .line 2191
    .end local v8    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v9    # "serviceState":Landroid/telephony/ServiceState;
    .end local v10    # "dataRegState":I
    .end local v11    # "rilRat":I
    :cond_3
    if-nez v5, :cond_5

    .line 2193
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$402(Z)Z

    .line 2198
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsConfigImpl;->isIMPUConfigured()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2201
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v9, "get IMPU from modem"

    invoke-static {v8, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2202
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v8, v8, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/16 v9, 0x11

    invoke-virtual {p0, v9}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lcom/huawei/ims/ImsRIL;->getImsImpu(ILandroid/os/Message;)V

    .line 2208
    :cond_4
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2210
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToImsSdk()V

    .line 2218
    :cond_5
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 2219
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "volte_vt_enabled"

    .line 2218
    invoke-static {v2, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2221
    const-string v2, "REGISTERED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2222
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    .line 2223
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2224
    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$3900()[Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v8, v8, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    aget-object v6, v6, v8

    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$4000()I

    move-result v8

    .line 2222
    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2228
    .end local v7    # "optimize":Z
    :cond_6
    goto/16 :goto_2

    .line 2230
    :cond_7
    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$4100()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2233
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mEmergencyUnderWifi:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2235
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v7, v7, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v7, v7, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3fc

    .line 2236
    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 2237
    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2238
    :cond_9
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v8, "sos pending, not disable vowifi capability."

    invoke-static {v7, v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 2240
    :cond_a
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 2241
    const-string v7, "UNREGISTERED"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 2250
    :cond_b
    :goto_1
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "before check ims reg fail, mfirstReg is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$400()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2252
    :cond_c
    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$4200(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eq v5, v6, :cond_d

    invoke-static {}, Lcom/huawei/ims/HwImsServiceImpl;->access$400()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2253
    :cond_d
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v6, v6, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v7, v7, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x11170

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2254
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$402(Z)Z

    .line 2265
    :cond_e
    :goto_2
    const-string v2, "REGISTERED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2266
    .local v2, "imsRegState":I
    iget-object v6, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$1600(Lcom/huawei/ims/HwImsServiceImpl;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2267
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->createRegCallBackThread(I)V

    .line 2268
    goto :goto_3

    .line 2269
    .end local v1    # "responseArray":[I
    .end local v2    # "imsRegState":I
    .end local v3    # "imsRegisterState":I
    .end local v4    # "imsState":Ljava/lang/String;
    .end local v5    # "oldState":I
    :cond_f
    goto :goto_4

    .line 2270
    :cond_10
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "IMS State query failed!"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2272
    :goto_4
    return-void
.end method

.method private handleLtePDCPInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2503
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2507
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleLtePDCPInfo([I)V

    .line 2508
    return-void

    .line 2504
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "LTE_PDCP_INFO report failed!"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2505
    return-void
.end method

.method private handleLtePDCPInfo([I)V
    .locals 9
    .param p1, "ret"    # [I

    .line 2520
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2521
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

    .line 2524
    :cond_0
    return-void
.end method

.method private handleLteRRCInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2511
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2515
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleLteRRCInfo([I)V

    .line 2516
    return-void

    .line 2512
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "LTE_RRC_INFO report failed!"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2513
    return-void
.end method

.method private handleLteRRCInfo([I)V
    .locals 4
    .param p1, "ret"    # [I

    .line 2526
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2527
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/vtproxy/ImsThinClient;->setRlQualInfo(IIII)I

    .line 2529
    :cond_0
    return-void
.end method

.method private handleMtNewRingReport(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .line 2448
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMtNewRingReport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2451
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleMtNewRingReport: mMtStatusMgr is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2453
    return-void

    .line 2457
    :cond_0
    if-eqz p1, :cond_1

    .line 2458
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

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2462
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->getPhoneId(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/MtStatusManager;->notifyRingCall(Ljava/lang/String;I)V

    .line 2466
    :cond_1
    return-void
.end method

.method private handleMtStatusReport(Lcom/huawei/ims/MtStatusReport;)V
    .locals 3
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .line 2398
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMtStatusReport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleMtStatusReport: mMtStatusMgr is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2404
    return-void

    .line 2408
    :cond_0
    if-eqz p1, :cond_5

    .line 2409
    iget v0, p1, Lcom/huawei/ims/MtStatusReport;->call_status:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2410
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    iget-object v2, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "close do-recovery"

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2413
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/MtStatusManager;->addIncomingCall(Lcom/huawei/ims/MtStatusReport;)V

    goto :goto_0

    .line 2417
    :cond_2
    iget v0, p1, Lcom/huawei/ims/MtStatusReport;->call_status:I

    if-ne v1, v0, :cond_4

    .line 2418
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    iget-object v1, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallEnded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2419
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "open do-recovery"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2421
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2424
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$4300(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/MtStatusManager;->addFailCall(Lcom/huawei/ims/MtStatusReport;)V

    goto :goto_0

    .line 2426
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "status not supported. "

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2429
    :cond_5
    :goto_0
    return-void
.end method

.method private handleNetworkStateChanged(II)V
    .locals 6
    .param p1, "dataRegState"    # I
    .param p2, "rilRat"    # I

    .line 2341
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2342
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2343
    .local v0, "isDataReg":Z
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsUtImpl;->setIsDataReg(Z)V

    .line 2344
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->isSIMCardCheckedByUT()Z

    move-result v2

    .line 2345
    .local v2, "isSIMCardCheckedByUT":Z
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNetworkStateChanged: isSIMCardCheckedByUT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isDataReg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2347
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUse403ForLocalCW()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 2348
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsUtImpl;->detectSimCardSubscriptionStatus()V

    .line 2353
    .end local v0    # "isDataReg":Z
    .end local v2    # "isSIMCardCheckedByUT":Z
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3800(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    .line 2354
    .local v0, "optimize":Z
    if-nez v0, :cond_2

    .line 2355
    return-void

    .line 2360
    :cond_2
    if-nez p2, :cond_3

    .line 2361
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

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

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2363
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isHangUpWhenLostNet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2365
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->hangupCallsWhenNoService()V

    .line 2373
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2376
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->detectImsRegisterState(II)I

    move-result v2

    .line 2377
    .local v2, "imsRegistration":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After detect, ims register state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2378
    if-nez v2, :cond_4

    .line 2383
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1600(Lcom/huawei/ims/HwImsServiceImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2384
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->createRegCallBackThread(I)V

    .line 2385
    goto :goto_1

    .line 2387
    :cond_4
    const/4 v1, 0x3

    if-ne v1, v2, :cond_5

    .line 2388
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 2393
    .end local v2    # "imsRegistration":I
    :cond_5
    return-void
.end method

.method private handleOnHoldTone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1394
    const-string v0, "HwImsServiceImpl"

    const-string v1, "handleOnHoldTone..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1397
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1398
    .local v0, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_0

    .line 1399
    return-void

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1403
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_5

    const-string v2, "support_hold_tone_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 1408
    :cond_1
    if-nez p1, :cond_2

    .line 1409
    return-void

    .line 1412
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    .line 1413
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1414
    .local v2, "startOnHoldLocalTone":Z
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1600(Lcom/huawei/ims/HwImsServiceImpl;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1415
    .local v3, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v3, :cond_3

    .line 1416
    invoke-virtual {v3, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->handleOnHoldTone(Z)V

    goto :goto_0

    .line 1418
    :cond_3
    const-string v4, "HwImsServiceImpl"

    const-string v5, "Message for non-registered service class"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .end local v2    # "startOnHoldLocalTone":Z
    .end local v3    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    :goto_0
    goto :goto_1

    .line 1421
    :cond_4
    const-string v2, "HwImsServiceImpl"

    const-string v3, "AsyncResult exception in handleOnHoldTone."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :goto_1
    return-void

    .line 1404
    :cond_5
    :goto_2
    const-string v2, "HwImsServiceImpl"

    const-string v3, "handleOnHoldTone,current carrier not support holdtone"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    return-void
.end method

.method private handleReadDomainName(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1960
    const/4 v0, 0x0

    .line 1961
    .local v0, "domainName":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1962
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1963
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1965
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1966
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setDomainNameFromSIM(Ljava/lang/String;)V

    .line 1967
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->setHomeDomainName()I

    .line 1969
    :cond_1
    return-void
.end method

.method private handleReadIsimIMPI(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1971
    const/4 v0, 0x0

    .line 1972
    .local v0, "impi":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1973
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1974
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1976
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1977
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setImpiFromSIM(Ljava/lang/String;)V

    .line 1978
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 1980
    :cond_1
    return-void
.end method

.method private handleSetDMParamsDone(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2535
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.dm"

    const-string v3, "com.android.providers.dm.DmReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2538
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2539
    .local v2, "cmdType":I
    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2540
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2541
    .local v3, "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2542
    .local v4, "result":[I
    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2543
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSetDMParamsDone  success!type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2544
    const-string v5, "ret"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2546
    :cond_1
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetDMParamsDone  fail!type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2547
    const-string v5, "ret"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2549
    :goto_1
    iget-object v5, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v5, v5, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2550
    return-void
.end method

.method private handleSetSmsConfig(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2020
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_SET_SMS_CONFIG"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2021
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2022
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 2023
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleSetSmsConfig success! "

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 2025
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "handleSetSmsConfig fail!"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2026
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    const-string v2, "sms_ims_set_value"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2027
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 2028
    .local v2, "smsImsSet":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 2029
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 2031
    :cond_2
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2034
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "smsImsSet":Z
    :goto_1
    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsServiceState;",
            ">;)V"
        }
    .end annotation

    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ImsServiceState;>;"
    move-object/from16 v0, p0

    .line 1464
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1465
    .local v1, "updateListSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_1a

    .line 1466
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsServiceState;

    .line 1468
    .local v5, "update":Lcom/huawei/ims/ImsServiceState;
    if-eqz v5, :cond_19

    iget v6, v5, Lcom/huawei/ims/ImsServiceState;->type:I

    invoke-direct {v0, v6}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isSrvTypeValid(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1469
    iget-object v6, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v6}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1470
    iget-object v6, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/huawei/ims/ImsServiceState;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/huawei/ims/ImsServiceState;->state:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " isValid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1473
    :cond_0
    const/4 v6, 0x0

    .line 1474
    .local v6, "srvSt":Lcom/huawei/ims/ImsServiceState;
    iget v7, v5, Lcom/huawei/ims/ImsServiceState;->type:I

    const/4 v8, 0x4

    const/16 v9, 0xb

    if-ne v7, v9, :cond_1

    .line 1475
    iget-object v7, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$1800(Lcom/huawei/ims/HwImsServiceImpl;)[Lcom/huawei/ims/ImsServiceState;

    move-result-object v7

    aget-object v6, v7, v8

    goto :goto_1

    .line 1477
    :cond_1
    iget-object v7, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$1800(Lcom/huawei/ims/HwImsServiceImpl;)[Lcom/huawei/ims/ImsServiceState;

    move-result-object v7

    iget v10, v5, Lcom/huawei/ims/ImsServiceState;->type:I

    aget-object v6, v7, v10

    .line 1479
    :goto_1
    iget-boolean v7, v5, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    iput-boolean v7, v6, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    .line 1480
    iget v7, v5, Lcom/huawei/ims/ImsServiceState;->type:I

    iput v7, v6, Lcom/huawei/ims/ImsServiceState;->type:I

    .line 1481
    iget-object v7, v5, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    if-eqz v7, :cond_2

    .line 1482
    iget-object v7, v5, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    array-length v7, v7

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    .line 1483
    iget-object v7, v5, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    iget-object v10, v5, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    array-length v10, v10

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    iput-object v7, v6, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    .line 1485
    :cond_2
    iget-object v7, v5, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    if-eqz v7, :cond_19

    iget-object v7, v5, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v7, v7

    if-lez v7, :cond_19

    .line 1486
    iget-object v7, v5, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v7, v7

    new-array v7, v7, [Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    iput-object v7, v6, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    .line 1488
    iget-object v7, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v7}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1489
    iget-object v7, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Call Type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/huawei/ims/ImsServiceState;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "has num updates = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1491
    :cond_3
    iget-object v7, v6, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    .line 1493
    .local v7, "actSt":[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    iget-object v11, v5, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v11, v11

    if-ge v10, v11, :cond_19

    .line 1494
    iget-object v11, v5, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    aget-object v11, v11, v10

    .line 1496
    .local v11, "actUpdate":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    iget-object v12, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v12}, Lcom/huawei/ims/HwImsServiceImpl;->access$1700(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1497
    iget-object v12, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "StatusForAccessTech networkMode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " registered = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->registered:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " restrictCause = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1502
    :cond_4
    new-instance v12, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    invoke-direct {v12}, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;-><init>()V

    aput-object v12, v7, v10

    .line 1503
    aget-object v12, v7, v10

    iget v13, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    iput v13, v12, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    .line 1504
    aget-object v12, v7, v10

    iget v13, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->registered:I

    iput v13, v12, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->registered:I

    .line 1505
    iget v12, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ne v12, v13, :cond_5

    iget v12, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    if-eqz v12, :cond_5

    .line 1507
    aget-object v12, v7, v10

    iput v14, v12, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    goto :goto_3

    .line 1509
    :cond_5
    aget-object v12, v7, v10

    iget v15, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    iput v15, v12, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    .line 1511
    :goto_3
    aget-object v12, v7, v10

    iget v12, v12, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    iput v12, v6, Lcom/huawei/ims/ImsServiceState;->state:I

    .line 1512
    aget-object v12, v7, v10

    iget v15, v11, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    iput v15, v12, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    .line 1513
    const/4 v12, -0x1

    .line 1514
    .local v12, "feature":I
    aget-object v15, v7, v10

    iget v15, v15, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/16 v8, 0x12

    if-eq v15, v8, :cond_7

    aget-object v8, v7, v10

    iget v8, v8, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x13

    if-ne v8, v15, :cond_6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move v8, v14

    .line 1516
    .local v8, "modeWifi":Z
    :goto_5
    aget-object v15, v7, v10

    iget v15, v15, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/4 v2, -0x1

    if-eq v15, v2, :cond_9

    aget-object v2, v7, v10

    iget v2, v2, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    const/16 v15, 0xe

    if-ne v2, v15, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move v2, v14

    .line 1518
    .local v2, "modeLte":Z
    :goto_7
    if-nez v8, :cond_b

    if-eqz v2, :cond_a

    goto :goto_9

    .line 1493
    .end local v2    # "modeLte":Z
    .end local v8    # "modeWifi":Z
    .end local v11    # "actUpdate":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    .end local v12    # "feature":I
    :cond_a
    :goto_8
    const/4 v13, 0x0

    goto/16 :goto_11

    .line 1519
    .restart local v2    # "modeLte":Z
    .restart local v8    # "modeWifi":Z
    .restart local v11    # "actUpdate":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    .restart local v12    # "feature":I
    :cond_b
    :goto_9
    iget v15, v5, Lcom/huawei/ims/ImsServiceState;->type:I

    if-nez v15, :cond_e

    .line 1520
    if-eqz v2, :cond_c

    .line 1521
    nop

    .line 1522
    const/4 v15, 0x0

    goto :goto_a

    :cond_c
    const/4 v15, 0x2

    :goto_a
    move v12, v15

    .line 1524
    iget-object v15, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v8, :cond_d

    aget-object v13, v7, v10

    iget v13, v13, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    if-ne v13, v14, :cond_d

    move v13, v14

    goto :goto_b

    :cond_d
    const/4 v13, 0x0

    :goto_b
    invoke-static {v15, v13}, Lcom/huawei/ims/HwImsServiceImpl;->access$1502(Lcom/huawei/ims/HwImsServiceImpl;Z)Z

    goto :goto_e

    .line 1527
    :cond_e
    iget v13, v5, Lcom/huawei/ims/ImsServiceState;->type:I

    if-ne v13, v9, :cond_10

    .line 1528
    if-eqz v2, :cond_f

    .line 1529
    nop

    .line 1530
    const/4 v13, 0x4

    goto :goto_c

    :cond_f
    const/4 v13, 0x5

    :goto_c
    move v12, v13

    goto :goto_e

    .line 1532
    :cond_10
    if-eqz v2, :cond_11

    .line 1533
    nop

    .line 1534
    move v13, v14

    goto :goto_d

    :cond_11
    const/4 v13, 0x3

    :goto_d
    move v12, v13

    .line 1537
    :goto_e
    iget-object v13, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v13, v13, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x3fc

    if-eqz v13, :cond_12

    iget-object v13, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v13, v13, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1538
    iget-object v13, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v13, v13, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1539
    iget-object v13, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v9, "remove sos pending msg!"

    invoke-static {v13, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1542
    :cond_12
    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const/4 v13, 0x2

    if-eq v9, v13, :cond_16

    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    if-ne v9, v14, :cond_13

    goto :goto_10

    .line 1562
    :cond_13
    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    if-eqz v9, :cond_15

    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const/4 v13, 0x3

    if-ne v9, v13, :cond_14

    goto :goto_f

    .line 1571
    :cond_14
    aget-object v9, v7, v10

    iget v9, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    const/16 v13, 0x8

    if-ne v9, v13, :cond_a

    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v9, v9, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_a

    .line 1572
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v13, "current service status is sos pending !"

    invoke-static {v9, v13}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1573
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v9, v9, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1574
    .local v9, "m":Landroid/os/Message;
    iget-object v13, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v13, v13, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x7530

    invoke-virtual {v13, v9, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v2    # "modeLte":Z
    .end local v8    # "modeWifi":Z
    .end local v9    # "m":Landroid/os/Message;
    .end local v11    # "actUpdate":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    .end local v12    # "feature":I
    goto/16 :goto_8

    .line 1565
    .restart local v2    # "modeLte":Z
    .restart local v8    # "modeWifi":Z
    .restart local v11    # "actUpdate":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    .restart local v12    # "feature":I
    :cond_15
    :goto_f
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "disabledFeature = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1566
    if-eqz v8, :cond_a

    .line 1567
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 1568
    const-string v9, "UNREGISTERED"

    invoke-direct {v0, v9}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1545
    :cond_16
    :goto_10
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enabledFeature = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", mEmergencyUnderWifi = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v15}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ",getImsRegisterState() = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1546
    invoke-virtual {v15}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegisterState()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1545
    invoke-static {v9, v13}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1547
    if-eqz v8, :cond_18

    .line 1548
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v9

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1549
    invoke-static {v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegisterState()I

    move-result v9

    if-nez v9, :cond_17

    .line 1550
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v13, "Emergency call under vowifi and ims is unregisterd, not notify vowifi state."

    invoke-static {v9, v13}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1552
    :cond_17
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 1553
    const-string v9, "REGISTERED"

    invoke-direct {v0, v9}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1554
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v9, v14}, Lcom/huawei/ims/HwImsServiceImpl;->access$1302(Lcom/huawei/ims/HwImsServiceImpl;I)I

    goto/16 :goto_8

    .line 1557
    :cond_18
    if-eqz v2, :cond_a

    .line 1558
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 1559
    const-string v9, "UNREGISTERED"

    invoke-direct {v0, v9}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1560
    iget-object v9, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v13, 0x0

    invoke-static {v9, v13}, Lcom/huawei/ims/HwImsServiceImpl;->access$1302(Lcom/huawei/ims/HwImsServiceImpl;I)I

    .line 1493
    .end local v2    # "modeLte":Z
    .end local v8    # "modeWifi":Z
    .end local v11    # "actUpdate":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    .end local v12    # "feature":I
    :goto_11
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x4

    const/16 v9, 0xb

    goto/16 :goto_2

    .line 1465
    .end local v6    # "srvSt":Lcom/huawei/ims/ImsServiceState;
    .end local v7    # "actSt":[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    .end local v10    # "i":I
    :cond_19
    const/4 v13, 0x0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1582
    .end local v3    # "j":I
    .end local v5    # "update":Lcom/huawei/ims/ImsServiceState;
    :cond_1a
    move-object/from16 v4, p1

    return-void
.end method

.method private handleSrvccStateChanged([I)V
    .locals 2
    .param p1, "ret"    # [I

    .line 2493
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleSrvccStateChanged"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2494
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2495
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 2496
    .local v0, "state":I
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/HwVolteChrManager;->notifySrvccState(I)V

    .line 2498
    .end local v0    # "state":I
    :cond_0
    return-void
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1372
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "handleSuppSvc"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, "supp_svc_unsol":Lcom/huawei/ims/HwImsSuppServiceNotification;
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1375
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/huawei/ims/HwImsSuppServiceNotification;

    .line 1377
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1600(Lcom/huawei/ims/HwImsServiceImpl;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1378
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    if-eqz v1, :cond_0

    .line 1379
    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->handleSuppSvcUnsol(Lcom/huawei/ims/HwImsSuppServiceNotification;)V

    .line 1385
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    goto :goto_0

    .line 1382
    .restart local v1    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1383
    return-void

    .line 1387
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceCallTracker;
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "AsyncResult exception in handleSuppSvc."

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1389
    :goto_0
    return-void
.end method

.method private handleUnsolSimNvCfgFinished(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1943
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1944
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1945
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1946
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1947
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1948
    .local v2, "result":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUnsolSimNvCfgFinished: result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1949
    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1950
    .local v3, "needSetVolteSwitchToModem":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1951
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$500(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1954
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "result":I
    .end local v3    # "needSetVolteSwitchToModem":Z
    :cond_1
    goto :goto_1

    .line 1955
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "AsyncResult exception in handleUnsolSimNvCfgFinished"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1957
    :goto_1
    return-void
.end method

.method private handleUnsolSpeechInfo(I)V
    .locals 6
    .param p1, "speechCodec"    # I

    .line 2060
    sget-boolean v0, Lcom/huawei/ims/HwImsServiceImpl;->IS_AMR_WB_SHOW_HD_VOLTE:Z

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3500(Lcom/huawei/ims/HwImsServiceImpl;I)V

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUnsolSpeechInfo speechCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2073
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->broadcastSpeechCodecNotification(I)V

    .line 2074
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2086
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3600(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    .line 2082
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3600(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "Codec=AMR_WB"

    aput-object v2, v1, v0

    .line 2083
    const/4 p1, 0x2

    .line 2084
    goto :goto_0

    .line 2076
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$3600(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "Codec=AMR_NB"

    aput-object v2, v1, v0

    .line 2077
    nop

    .line 2090
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current speechInfoCodec is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$3600(Lcom/huawei/ims/HwImsServiceImpl;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2092
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2093
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2094
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setSpeechInfoCodec(I)V

    .line 2096
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2097
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSpeechInfoCodec()Ljava/lang/String;

    move-result-object v2

    .line 2098
    .local v2, "speechInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioParameters speechInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2099
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2100
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 2101
    .local v3, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2104
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "speechInfo":Ljava/lang/String;
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleUnsolVoWiFiRegErrReport(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1920
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1921
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1922
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/huawei/ims/VoWiFiRegErrReport;

    if-eqz v1, :cond_1

    .line 1923
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/VoWiFiRegErrReport;

    .line 1924
    .local v1, "result":Lcom/huawei/ims/VoWiFiRegErrReport;
    iget v2, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->errDomain:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1925
    new-instance v2, Landroid/content/Intent;

    const-string v3, "huawei.intent.action.IMS_REG_ERROR_REPORT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1926
    .local v2, "voWiFiReportIntent":Landroid/content/Intent;
    const-string v3, "errDomain"

    iget v4, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->errDomain:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1927
    const-string v3, "errStage"

    iget v4, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->errStage:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1928
    const-string v3, "failcause"

    iget v4, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->failCause:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1929
    const-string v3, "failstring"

    iget-object v4, v1, Lcom/huawei/ims/VoWiFiRegErrReport;->failString:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1930
    const-string v3, "subscription"

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "com.huawei.ims.permission.GET_IMS_REG_ERROR_REPORT"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1933
    .end local v1    # "result":Lcom/huawei/ims/VoWiFiRegErrReport;
    .end local v2    # "voWiFiReportIntent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 1934
    :cond_1
    const-string v1, "HwImsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUnsolVoWiFiRegErrReport ar.result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1937
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_UNSOL_VOWIF_REG_ERR_REPORT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1939
    :goto_0
    return-void
.end method

.method private hangupCallsWhenNoService()V
    .locals 12

    .line 2276
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2277
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v1, :cond_0

    .line 2278
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "get imsphone fails."

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2279
    return-void

    .line 2282
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2283
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    .line 2284
    .local v2, "foregroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    .line 2285
    .local v3, "ringingCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    .line 2287
    .local v4, "backgroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    const/4 v5, 0x0

    .line 2288
    .local v5, "isForegroundCallPresent":Z
    const/4 v6, 0x0

    .line 2289
    .local v6, "isBackgroundCallPresent":Z
    const/4 v7, 0x0

    .line 2291
    .local v7, "isRingCallPresent":Z
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v7

    .line 2292
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v6

    .line 2293
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v5

    .line 2295
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-eqz v7, :cond_2

    .line 2296
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v8

    invoke-interface {v8, v2, v3, v4}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerNoServiceDuringCallEvent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 2301
    :cond_2
    if-eqz v7, :cond_3

    .line 2302
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v9, "reject call since lost network."

    invoke-static {v8, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2304
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2307
    goto :goto_0

    .line 2305
    :catch_0
    move-exception v8

    .line 2306
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

    invoke-static {v9, v10}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2310
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    .line 2311
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v9, "hang up bg call since lost network."

    invoke-static {v8, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2313
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2316
    goto :goto_1

    .line 2314
    :catch_1
    move-exception v8

    .line 2315
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

    invoke-static {v9, v10}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2319
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 2320
    iget-object v8, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v9, "hang up fg call since lost network."

    invoke-static {v8, v9}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2322
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2325
    goto :goto_2

    .line 2323
    :catch_2
    move-exception v8

    .line 2324
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

    invoke-static {v9, v10}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 2327
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_5
    :goto_2
    return-void
.end method

.method private isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 2330
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    const/4 v0, 0x1

    return v0

    .line 2333
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSrvTypeValid(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 1453
    if-nez p1, :cond_0

    .line 1454
    const/4 v0, 0x1

    return v0

    .line 1456
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyImsVoWiFiState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .line 1586
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v0

    .line 1588
    .local v0, "subId":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify IMS-VoWiFi state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sub is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1590
    const-string v1, "REGISTERED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$500(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1594
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "huawei.intent.action.IMS_SERVICE_VOWIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v1, "imsVoWiFiStateIntent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    const-string v2, "subscription"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1599
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1600(Lcom/huawei/ims/HwImsServiceImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1600
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceCallTracker;>;"
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsServiceCallTracker;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceCallTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$1900(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V

    .line 1601
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceCallTracker;>;"
    goto :goto_0

    .line 1602
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1607
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1609
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    sparse-switch v0, :sswitch_data_0

    .line 1876
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleExtendMethod(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1840
    :sswitch_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "VT_FLOW_INFO_REPORT"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1842
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1844
    .local v0, "asyncresult":Landroid/os/AsyncResult;
    if-eqz v0, :cond_a

    .line 1845
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1846
    .local v1, "data":J
    invoke-static {}, Lcom/huawei/ims/vt/ImsMediaProvider;->getInstance()Lcom/huawei/ims/vt/ImsMediaProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-virtual {v3, v4, v1, v2}, Lcom/huawei/ims/vt/ImsMediaProvider;->vtFlowInfoReport(IJ)V

    .line 1847
    .end local v1    # "data":J
    goto/16 :goto_1

    .line 1833
    .end local v0    # "asyncresult":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, " handleMessage (EVENT_VOWIFI_SOS_PENDING_TIMEOUT)"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 1835
    const-string v0, "UNREGISTERED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1836
    goto/16 :goto_1

    .line 1826
    :sswitch_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, " handleMessage (EVENT_SEND_BATTERY_STATUS)"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1827
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1828
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleBatteryStatus(Landroid/os/AsyncResult;)V

    .line 1829
    goto/16 :goto_1

    .line 1691
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1692
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1693
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2500(Lcom/huawei/ims/HwImsServiceImpl;[I)V

    goto/16 :goto_1

    .line 1695
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MODIFY_RESULT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1697
    goto/16 :goto_1

    .line 1872
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleUnsolSimNvCfgFinished(Landroid/os/Message;)V

    .line 1873
    goto/16 :goto_1

    .line 1855
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_RADIO_ON"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1856
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$500(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1857
    goto/16 :goto_1

    .line 1861
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1862
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleOnHoldTone(Landroid/os/AsyncResult;)V

    .line 1863
    goto/16 :goto_1

    .line 1815
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleImsDMCN()V

    .line 1816
    goto/16 :goto_1

    .line 1821
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleGetDMParamsDone(Landroid/os/Message;)V

    .line 1822
    goto/16 :goto_1

    .line 1818
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSetDMParamsDone(Landroid/os/Message;)V

    .line 1819
    goto/16 :goto_1

    .line 1635
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1637
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleLteRRCInfo(Landroid/os/AsyncResult;)V

    .line 1638
    goto/16 :goto_1

    .line 1630
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1632
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleLtePDCPInfo(Landroid/os/AsyncResult;)V

    .line 1633
    goto/16 :goto_1

    .line 1803
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, " handleMessage (EVENT_UNSOl_SPEECH_INFO)"

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1804
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1805
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1806
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1807
    .local v2, "intResult":[I
    aget v1, v2, v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleUnsolSpeechInfo(I)V

    .line 1808
    .end local v2    # "intResult":[I
    goto/16 :goto_1

    .line 1809
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "EVENT_UNSOl_SPEECH_INFO exception"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1811
    goto/16 :goto_1

    .line 1786
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_SRVCC_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3000(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v0

    if-ne v2, v0, :cond_a

    .line 1791
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1792
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1793
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSrvccStateChanged([I)V

    goto/16 :goto_1

    .line 1795
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "Srvcc occurs exception."

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1776
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_CS_REDIAL"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$3000(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v0

    if-ne v2, v0, :cond_a

    .line 1781
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwVolteChrManager;->notifyCSRedial()V

    goto/16 :goto_1

    .line 1766
    :pswitch_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_REGISTERED_TO_NETWORK"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1768
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isAirModeResetCWInModem()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1769
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2900(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    goto/16 :goto_1

    .line 1728
    :pswitch_b
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1729
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 1731
    .local v1, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1732
    .local v2, "dataRegState":I
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1733
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

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1736
    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleNetworkStateChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    .end local v1    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "dataRegState":I
    .end local v3    # "rilRat":I
    goto/16 :goto_1

    .line 1739
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "[error]parse message of EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED fail"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1742
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 1755
    :pswitch_c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_MT_NEW_RING_REPORT"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1756
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1757
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 1758
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleMtNewRingReport(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    .line 1760
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MT_NEW_RING_REPORT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1762
    goto/16 :goto_1

    .line 1746
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_MT_STATUS_REPORT"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1747
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1748
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 1749
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/MtStatusReport;

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleMtStatusReport(Lcom/huawei/ims/MtStatusReport;)V

    goto/16 :goto_1

    .line 1751
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MT_STATUS_REPORT AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1753
    goto/16 :goto_1

    .line 1869
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleReadIsimIMPI(Landroid/os/Message;)V

    .line 1870
    goto/16 :goto_1

    .line 1866
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleReadDomainName(Landroid/os/Message;)V

    .line 1867
    goto/16 :goto_1

    .line 1852
    :pswitch_10
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, " handleMessage (EVENT_IMS_SET_VT_CAPABILITY)"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1853
    goto/16 :goto_1

    .line 1661
    :pswitch_11
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "EVENT_IMS_REG_FAIL_DELAY"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1662
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1664
    .local v0, "imsphone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$2200(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v1

    if-eq v2, v1, :cond_5

    .line 1666
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerImsRegFailEvent(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$402(Z)Z

    goto/16 :goto_1

    .line 1668
    :cond_5
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "get imsphone fail, can\'t trigger Ims Reg Fail Event "

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1670
    goto/16 :goto_1

    .line 1719
    .end local v0    # "imsphone":Lcom/android/internal/telephony/Phone;
    :pswitch_12
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/HwImsServiceImpl;->handleImsGetImpuDone(Landroid/os/Message;)V

    .line 1720
    goto/16 :goto_1

    .line 1723
    :pswitch_13
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2800(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1724
    goto/16 :goto_1

    .line 1702
    :pswitch_14
    sget-boolean v0, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    if-nez v0, :cond_6

    .line 1704
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimRecordsLoaded()V

    goto :goto_0

    .line 1706
    :cond_6
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2600(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1707
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "main slot changed, handle sim records loaded."

    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1708
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimRecordsLoaded()V

    .line 1709
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$2602(Lcom/huawei/ims/HwImsServiceImpl;Z)Z

    .line 1714
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2700(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1716
    goto/16 :goto_1

    .line 1683
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1684
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 1685
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2400(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    goto/16 :goto_1

    .line 1687
    :cond_8
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1689
    goto/16 :goto_1

    .line 1641
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1642
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleHandover(Landroid/os/AsyncResult;)V

    .line 1643
    goto :goto_1

    .line 1647
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1648
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSuppSvc(Landroid/os/AsyncResult;)V

    .line 1649
    goto :goto_1

    .line 1678
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1679
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1, v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$2300(Lcom/huawei/ims/HwImsServiceImpl;Landroid/os/AsyncResult;)V

    .line 1680
    goto :goto_1

    .line 1612
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "Received event: EVENT_SRV_STATUS_UPDATE"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1613
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1614
    .local v0, "arResult":Landroid/os/AsyncResult;
    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 1615
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1617
    .local v1, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ImsServiceState;>;"
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    .line 1621
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$2000(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1623
    .end local v1    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ImsServiceState;>;"
    goto :goto_1

    .line 1624
    :cond_9
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "IMS Service Status Update failed!"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1625
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$2100(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 1627
    goto :goto_1

    .line 1656
    .end local v0    # "arResult":Landroid/os/AsyncResult;
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->handleImsStateDone(Landroid/os/Message;)V

    .line 1657
    goto :goto_1

    .line 1652
    :pswitch_1b
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 1653
    goto :goto_1

    .line 1674
    :pswitch_1c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    .line 1675
    nop

    .line 1881
    :cond_a
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3ed
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x44c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_4
        0x3eb -> :sswitch_3
        0x3fa -> :sswitch_2
        0x3fc -> :sswitch_1
        0x9c41 -> :sswitch_0
    .end sparse-switch
.end method
