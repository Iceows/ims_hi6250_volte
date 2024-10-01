.class Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;
.super Ljava/lang/Object;
.source "HwImsServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->createRegCallBackThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

.field final synthetic val$registrationState:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    .line 1311
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iput p2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->val$registrationState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1314
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->val$registrationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAccessTechMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1300(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1316
    const/16 v0, 0x3fc

    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->val$registrationState:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 1338
    :pswitch_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1400(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1300(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistering(I)V

    .line 1339
    goto :goto_0

    .line 1319
    :pswitch_1
    sget-boolean v2, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1320
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/ims/cust/HwCustUtil;->isVzwCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1321
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/huawei/ims/cust/HwCustVZWIms;->cleanVZWImsRegMode(Landroid/content/Context;I)V

    .line 1324
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1400(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1300(Lcom/huawei/ims/HwImsServiceImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(I)V

    .line 1325
    goto :goto_0

    .line 1327
    :pswitch_2
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1331
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    sget-boolean v3, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v3, :cond_1

    .line 1332
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v4, v4, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/huawei/ims/cust/HwCustVZWIms;->cleanVZWImsRegMode(Landroid/content/Context;I)V

    .line 1334
    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1400(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    nop

    .line 1347
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->val$registrationState:I

    if-ne v1, v2, :cond_2

    const-string v1, "REGISTERED"

    goto :goto_1

    :cond_2
    const-string v1, "UNREGISTERED"

    .line 1349
    .local v1, "imsState":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    .line 1350
    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1351
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1352
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .end local v1    # "imsState":Ljava/lang/String;
    :goto_2
    const-string v3, "not notify ims state change, imsState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mEmergencyUnderWifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1353
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1352
    invoke-static {v0, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_3

    .line 1355
    .restart local v1    # "imsState":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$300(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1358
    .end local v1    # "imsState":Ljava/lang/String;
    :goto_3
    goto :goto_5

    .line 1347
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 1343
    :catch_0
    move-exception v2

    .line 1344
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " createRegCallBackThread()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    .end local v2    # "t":Ljava/lang/Throwable;
    iget v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->val$registrationState:I

    if-ne v1, v2, :cond_6

    const-string v1, "REGISTERED"

    goto :goto_4

    :cond_6
    const-string v1, "UNREGISTERED"

    .line 1349
    .restart local v1    # "imsState":Ljava/lang/String;
    :goto_4
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v2, v2, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    .line 1350
    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1351
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1352
    :cond_8
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    .line 1360
    .end local v1    # "imsState":Ljava/lang/String;
    :goto_5
    return-void

    .line 1347
    :goto_6
    iget v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->val$registrationState:I

    if-ne v1, v3, :cond_9

    const-string v1, "REGISTERED"

    goto :goto_7

    :cond_9
    const-string v1, "UNREGISTERED"

    .line 1349
    .restart local v1    # "imsState":Ljava/lang/String;
    :goto_7
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, v3, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    .line 1350
    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1351
    invoke-static {v0}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1352
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not notify ims state change, imsState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mEmergencyUnderWifi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v4, v4, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1353
    invoke-static {v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$1500(Lcom/huawei/ims/HwImsServiceImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1352
    invoke-static {v0, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto :goto_8

    .line 1355
    :cond_c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler$1;->this$1:Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl$HwImsServiceImplHandler;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$300(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1358
    .end local v1    # "imsState":Ljava/lang/String;
    :goto_8
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
