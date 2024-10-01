.class Lcom/huawei/ims/ImsUtListenerProxy$2;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsUtListenerProxy;

.field final synthetic val$error:Landroid/telephony/ims/ImsReasonInfo;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsUtListenerProxy;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .line 49
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy$2;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iput p2, p0, Lcom/huawei/ims/ImsUtListenerProxy$2;->val$id:I

    iput-object p3, p0, Lcom/huawei/ims/ImsUtListenerProxy$2;->val$error:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy$2;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iget-object v0, v0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$2;->val$id:I

    iget-object v2, p0, Lcom/huawei/ims/ImsUtListenerProxy$2;->val$error:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$2;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    const-string v2, "utConfigurationUpdateFailed()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->access$000(Lcom/huawei/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 57
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
