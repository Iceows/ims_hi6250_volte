.class Lcom/huawei/ims/ImsUtListenerProxy$1;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsUtListenerProxy;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsUtListenerProxy;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .line 36
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy$1;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iput p2, p0, Lcom/huawei/ims/ImsUtListenerProxy$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy$1;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    # getter for: Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v0}, Lcom/huawei/ims/ImsUtListenerProxy;->access$000(Lcom/huawei/ims/ImsUtListenerProxy;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$1;->val$id:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    .line 40
    return-void
.end method
