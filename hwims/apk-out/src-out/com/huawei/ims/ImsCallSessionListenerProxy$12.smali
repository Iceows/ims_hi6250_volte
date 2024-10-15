.class Lcom/huawei/ims/ImsCallSessionListenerProxy$12;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$profile:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 316
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;->val$profile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    # getter for: Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;->val$profile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 320
    return-void
.end method
