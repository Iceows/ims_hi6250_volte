.class Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;
.super Landroid/database/ContentObserver;
.source "HwImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoNrSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsService;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 263
    iput-object p1, p0, Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;->this$0:Lcom/huawei/ims/HwImsService;

    .line 264
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 265
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "isSelfChange"    # Z

    .line 269
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManagerInner;->getDefault4GSlotId()I

    move-result v0

    .line 270
    .local v0, "defaultSlotId":I
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSlotId(I)Z

    move-result v1

    const-string v2, "HwImsService"

    if-nez v1, :cond_25

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoNrSwitch: Invalid slotId, slotId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 274
    :cond_25
    iget-object v1, p0, Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;->this$0:Lcom/huawei/ims/HwImsService;

    .line 275
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "vonr_hd_call"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 276
    .local v1, "vonrSwitch":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vonr switch changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v2, p0, Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;->this$0:Lcom/huawei/ims/HwImsService;

    # getter for: Lcom/huawei/ims/HwImsService;->mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;
    invoke-static {v2}, Lcom/huawei/ims/HwImsService;->access$000(Lcom/huawei/ims/HwImsService;)[Lcom/huawei/ims/HwImsServiceImpl;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsServiceImpl;->setVoNrSwitch(I)V

    .line 278
    return-void
.end method
