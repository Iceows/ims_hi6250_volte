.class public Lcom/huawei/ims/HwImsEcbmImpl;
.super Landroid/telephony/ims/stub/ImsEcbmImplBase;
.source "HwImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I = 0x1

.field private static final EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HwImsEcbmImpl"


# instance fields
.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .registers 6
    .param p1, "ci"    # Lcom/huawei/ims/ImsRIL;

    .line 41
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    .line 32
    new-instance v0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;-><init>(Lcom/huawei/ims/HwImsEcbmImpl;Lcom/huawei/ims/HwImsEcbmImpl$1;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 43
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsEcbmImpl;

    .line 23
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/HwImsEcbmImpl;
    .param p1, "x1"    # Lcom/android/ims/internal/IImsEcbmListener;
    .param p2, "x2"    # Z

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V

    return-void
.end method

.method private static checkAccessPermission()V
    .registers 3

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 67
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 70
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_15
    :goto_15
    return-void
.end method

.method private createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
    .registers 6
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;
    .param p2, "isEntered"    # Z

    .line 80
    new-instance v0, Lcom/huawei/ims/HwImsEcbmImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/huawei/ims/HwImsEcbmImpl$1;-><init>(Lcom/huawei/ims/HwImsEcbmImpl;ZLcom/android/ims/internal/IImsEcbmListener;)V

    .line 94
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "HwImsEcbmImplEcbmCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 95
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .registers 4

    .line 61
    invoke-static {}, Lcom/huawei/ims/HwImsEcbmImpl;->checkAccessPermission()V

    .line 62
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 63
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;

    .line 53
    invoke-static {}, Lcom/huawei/ims/HwImsEcbmImpl;->checkAccessPermission()V

    .line 54
    iput-object p1, p0, Lcom/huawei/ims/HwImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 55
    return-void
.end method
