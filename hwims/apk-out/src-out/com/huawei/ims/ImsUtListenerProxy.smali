.class public Lcom/huawei/ims/ImsUtListenerProxy;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtListenerProxy"


# instance fields
.field private mListener:Landroid/telephony/ims/ImsUtListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsUtListenerProxy;)Landroid/telephony/ims/ImsUtListener;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .line 22
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    return-object v0
.end method

.method private static checkAccessPermission()V
    .registers 3

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 192
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 196
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .registers 3
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 172
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 174
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_f

    .line 175
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsUtListenerProxy$8;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V

    .line 181
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 183
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public setImsUtListener(Landroid/telephony/ims/ImsUtListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 205
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 206
    return-void
.end method

.method startThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 186
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ImsUtListenerProxyThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 187
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method public utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 113
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 115
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_f

    .line 116
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$5;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 122
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 124
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 133
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 135
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_f

    .line 136
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$6;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 142
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 144
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 153
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 155
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_f

    .line 156
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$7;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 162
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 164
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public utConfigurationQueried(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "ssInfo"    # Landroid/os/Bundle;

    .line 73
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 75
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_f

    .line 76
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$3;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;ILandroid/os/Bundle;)V

    .line 82
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 84
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 93
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 95
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_f

    .line 96
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$4;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 102
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 104
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 53
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 55
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_f

    .line 56
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$2;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 62
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 64
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public utConfigurationUpdated(I)V
    .registers 3
    .param p1, "id"    # I

    .line 33
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 35
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_f

    .line 36
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsUtListenerProxy$1;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;I)V

    .line 42
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 44
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method
