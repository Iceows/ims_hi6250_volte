.class Lcom/huawei/ims/ImsUtListenerProxy$8;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsUtListenerProxy;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsUtListenerProxy;

.field final synthetic val$ssData:Landroid/telephony/ims/ImsSsData;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsUtListenerProxy;Landroid/telephony/ims/ImsSsData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .line 175
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->val$ssData:Landroid/telephony/ims/ImsSsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    # getter for: Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v0}, Lcom/huawei/ims/ImsUtListenerProxy;->access$000(Lcom/huawei/ims/ImsUtListenerProxy;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->val$ssData:Landroid/telephony/ims/ImsSsData;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsUtListener;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 179
    return-void
.end method
