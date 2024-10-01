.class public Lcom/huawei/ims/ImsUtListenerProxy;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtListenerProxy"


# instance fields
.field public mListener:Landroid/telephony/ims/ImsUtListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsUtListenerProxy;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .line 203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 204
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_1
    :goto_0
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .line 199
    const-string v0, "ImsUtListenerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method


# virtual methods
.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 1
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 176
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 178
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsUtListenerProxy$8;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V

    .line 189
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 191
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method startThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 194
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ImsUtListenerProxyThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 195
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void
.end method

.method public utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 109
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 111
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$5;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 122
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 124
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 131
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 133
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$6;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 144
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 146
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 153
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 155
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$7;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 166
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 168
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationQueried(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "ssInfo"    # Landroid/os/Bundle;

    .line 68
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 70
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$3;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;ILandroid/os/Bundle;)V

    .line 81
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 83
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 87
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 89
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$4;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 100
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 102
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 46
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 48
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$2;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 59
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 61
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationUpdated(I)V
    .locals 1
    .param p1, "id"    # I

    .line 27
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 29
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsUtListenerProxy$1;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;I)V

    .line 40
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 42
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
