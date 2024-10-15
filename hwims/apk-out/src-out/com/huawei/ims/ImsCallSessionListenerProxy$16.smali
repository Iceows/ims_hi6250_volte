.class Lcom/huawei/ims/ImsCallSessionListenerProxy$16;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$newSession:Landroid/telephony/ims/stub/ImsCallSessionImplBase;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 394
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;->val$newSession:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 397
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionMergeComplete()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    # getter for: Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;->val$newSession:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 399
    return-void
.end method
