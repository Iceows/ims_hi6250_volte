.class Lcom/huawei/ims/ImsUtListenerProxy$3;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsUtListenerProxy;

.field final synthetic val$id:I

.field final synthetic val$ssInfo:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsUtListenerProxy;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .line 71
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iput p2, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->val$id:I

    iput-object p3, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->val$ssInfo:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iget-object v0, v0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->val$id:I

    iget-object v2, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->val$ssInfo:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    const-string v2, "utConfigurationQueried()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->access$000(Lcom/huawei/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 79
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
