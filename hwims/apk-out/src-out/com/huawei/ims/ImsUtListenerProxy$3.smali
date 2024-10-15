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
    .registers 4
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .line 76
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iput p2, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->val$id:I

    iput-object p3, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->val$ssInfo:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    # getter for: Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v0}, Lcom/huawei/ims/ImsUtListenerProxy;->access$000(Lcom/huawei/ims/ImsUtListenerProxy;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->val$id:I

    iget-object v2, p0, Lcom/huawei/ims/ImsUtListenerProxy$3;->val$ssInfo:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 80
    return-void
.end method
