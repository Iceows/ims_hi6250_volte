.class Lcom/huawei/ims/ImsCallSessionListenerProxy$19;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$state:Landroid/telephony/ims/ImsConferenceState;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 535
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;->val$state:Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 538
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionConferenceStateUpdated()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    # getter for: Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;->val$state:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 540
    return-void
.end method
