.class Lcom/huawei/ims/ImsCallSessionListenerProxy$8;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTtyModeReceived(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$ttyMode:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 197
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;->val$ttyMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 201
    :try_start_0
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionTtyModeReceived"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;->val$ttyMode:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTtyModeReceived(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const-string v2, "onCallSessionTtyModeReceived()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 206
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
