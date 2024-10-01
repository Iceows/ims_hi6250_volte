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
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .line 179
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->val$ssData:Landroid/telephony/ims/ImsSsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iget-object v0, v0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->val$ssData:Landroid/telephony/ims/ImsSsData;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsUtListener;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$8;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    const-string v2, "onSupplementaryServiceIndication()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->access$000(Lcom/huawei/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 187
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
