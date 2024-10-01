.class Lcom/huawei/ims/ImsCallSessionListenerProxy$2;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$profile:Landroid/telephony/ims/ImsStreamMediaProfile;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 78
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;->val$profile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 82
    :try_start_0
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionProgressing()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;->val$profile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const-string v2, "onCallSessionProgressing()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 87
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
