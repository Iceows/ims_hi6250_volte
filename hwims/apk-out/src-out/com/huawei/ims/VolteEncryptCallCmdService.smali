.class public Lcom/huawei/ims/VolteEncryptCallCmdService;
.super Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub;
.source "VolteEncryptCallCmdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/VolteEncryptCallCmdService$MyHandler;
    }
.end annotation


# static fields
.field private static final ENCRYPT_DEVICE_FLAG_DISABLED:I = 0x0

.field private static final EVT_SET_ENCRYPT_DEVICE_VALID_FLAG:I = 0x64

.field private static final EVT_SET_ENCRYPT_DEVICE_VALID_RIL_RETURN:I = 0x65

.field private static final IMS_SERVICE_SUB_ARRAY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_LOCK:Ljava/lang/Object;

.field private static final SETTINGS_URI_SWITCH_CARD:Ljava/lang/String; = "switch_dual_card_slots"

.field private static final TAG:Ljava/lang/String; = "VolteEncryptCallCmdService"

.field private static sInstance:Lcom/huawei/ims/VolteEncryptCallCmdService;


# instance fields
.field private mAuto4gSlotChangeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceValidFlag:I

.field private mMyHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/VolteEncryptCallCmdService;->SERVICE_LOCK:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/ims/VolteEncryptCallCmdService;->IMS_SERVICE_SUB_ARRAY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mCurrentDeviceValidFlag:I

    .line 53
    new-instance v0, Lcom/huawei/ims/VolteEncryptCallCmdService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/VolteEncryptCallCmdService$1;-><init>(Lcom/huawei/ims/VolteEncryptCallCmdService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mAuto4gSlotChangeObserver:Landroid/database/ContentObserver;

    .line 62
    iput-object p1, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/huawei/ims/VolteEncryptCallCmdService$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/VolteEncryptCallCmdService$MyHandler;-><init>(Lcom/huawei/ims/VolteEncryptCallCmdService;Lcom/huawei/ims/VolteEncryptCallCmdService$1;)V

    iput-object v0, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mMyHandler:Landroid/os/Handler;

    .line 64
    invoke-direct {p0}, Lcom/huawei/ims/VolteEncryptCallCmdService;->registerAuto4gSlotChangeObserver()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/VolteEncryptCallCmdService;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/VolteEncryptCallCmdService;

    .line 26
    iget v0, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mCurrentDeviceValidFlag:I

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/VolteEncryptCallCmdService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/VolteEncryptCallCmdService;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/huawei/ims/VolteEncryptCallCmdService;->setDeviceValidFlag(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/ims/VolteEncryptCallCmdService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/VolteEncryptCallCmdService;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/huawei/ims/VolteEncryptCallCmdService;->onSetDeviceValidFlag(I)V

    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/VolteEncryptCallCmdService;
    .registers 1

    .line 90
    sget-object v0, Lcom/huawei/ims/VolteEncryptCallCmdService;->sInstance:Lcom/huawei/ims/VolteEncryptCallCmdService;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hwMmTelFeature"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 74
    sget-object v0, Lcom/huawei/ims/VolteEncryptCallCmdService;->SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    sget-object v1, Lcom/huawei/ims/VolteEncryptCallCmdService;->IMS_SERVICE_SUB_ARRAY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 76
    sget-object v1, Lcom/huawei/ims/VolteEncryptCallCmdService;->IMS_SERVICE_SUB_ARRAY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_10
    sget-object v1, Lcom/huawei/ims/VolteEncryptCallCmdService;->sInstance:Lcom/huawei/ims/VolteEncryptCallCmdService;

    if-nez v1, :cond_1b

    .line 79
    new-instance v1, Lcom/huawei/ims/VolteEncryptCallCmdService;

    invoke-direct {v1, p0}, Lcom/huawei/ims/VolteEncryptCallCmdService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/ims/VolteEncryptCallCmdService;->sInstance:Lcom/huawei/ims/VolteEncryptCallCmdService;

    .line 81
    :cond_1b
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private onSetDeviceValidFlag(I)V
    .registers 4
    .param p1, "flag"    # I

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDeviceValidFlag flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolteEncryptCallCmdService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/huawei/ims/VolteEncryptCallCmdService;->setDeviceValidFlag(I)V

    .line 135
    iput p1, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mCurrentDeviceValidFlag:I

    .line 136
    return-void
.end method

.method private registerAuto4gSlotChangeObserver()V
    .registers 5

    .line 162
    const-string v0, "VolteEncryptCallCmdService"

    const-string v1, "registerAuto4GSlotChangeObserver"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    const-string v1, "switch_dual_card_slots"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mAuto4gSlotChangeObserver:Landroid/database/ContentObserver;

    .line 164
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    :cond_1b
    return-void
.end method

.method private setDeviceValidFlag(I)V
    .registers 12
    .param p1, "flag"    # I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDeviceValidFlag: flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolteEncryptCallCmdService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Lcom/huawei/ims/VolteEncryptCallCmdService;->IMS_SERVICE_SUB_ARRAY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 141
    .local v0, "len":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 142
    .local v2, "default4gSlotId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v0, :cond_9a

    .line 143
    sget-object v4, Lcom/huawei/ims/VolteEncryptCallCmdService;->IMS_SERVICE_SUB_ARRAY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsServiceImpl;

    .line 144
    .local v4, "hwImsServiceImpl":Lcom/huawei/ims/HwImsServiceImpl;
    const-string v5, " is NULL."

    if-nez v4, :cond_4b

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSetDeviceValidFlag: hwImsServiceImpl "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_97

    .line 148
    :cond_4b
    iget-object v6, v4, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 149
    .local v6, "ril":Lcom/huawei/ims/ImsRIL;
    if-nez v6, :cond_67

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSetDeviceValidFlag: ril "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    goto :goto_97

    .line 153
    :cond_67
    iget-object v5, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mMyHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 154
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v4}, Lcom/huawei/ims/HwImsServiceImpl;->getSubscription()I

    move-result v7

    if-ne v7, v2, :cond_77

    .line 155
    move v7, p1

    goto :goto_78

    :cond_77
    const/4 v7, 0x0

    .line 156
    .local v7, "newFlag":I
    :goto_78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSetDeviceValidFlag: slot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " set flag to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v6, v7, v5}, Lcom/huawei/ims/ImsRIL;->setEncryptVolteCallSwitch(ILandroid/os/Message;)V

    .line 142
    .end local v4    # "hwImsServiceImpl":Lcom/huawei/ims/HwImsServiceImpl;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "ril":Lcom/huawei/ims/ImsRIL;
    .end local v7    # "newFlag":I
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 159
    .end local v3    # "i":I
    :cond_9a
    return-void
.end method


# virtual methods
.method public setEncryptDeviceValidFlag(I)V
    .registers 6
    .param p1, "validFlag"    # I

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEncryptDeviceValidFlag Flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolteEncryptCallCmdService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/huawei/ims/VolteEncryptCallCmdService;->mMyHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 103
    return-void
.end method
