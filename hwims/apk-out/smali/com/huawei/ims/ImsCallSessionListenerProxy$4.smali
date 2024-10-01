.class Lcom/huawei/ims/ImsCallSessionListenerProxy$4;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$reason:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 117
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;->val$reason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 121
    :try_start_0
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionTerminated()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;->val$reason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const-string v2, "onCallSessionTerminated()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 126
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
