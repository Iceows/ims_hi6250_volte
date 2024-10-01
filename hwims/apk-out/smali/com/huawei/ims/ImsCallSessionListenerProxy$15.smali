.class Lcom/huawei/ims/ImsCallSessionListenerProxy$15;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$newSession:Lcom/android/ims/internal/IImsCallSession;

.field final synthetic val$profile:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 348
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;->val$newSession:Lcom/android/ims/internal/IImsCallSession;

    iput-object p3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;->val$profile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 352
    :try_start_0
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionMergeStarted()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;->val$newSession:Lcom/android/ims/internal/IImsCallSession;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;->val$profile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const-string v2, "onCallSessionMergeStarted()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 357
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
