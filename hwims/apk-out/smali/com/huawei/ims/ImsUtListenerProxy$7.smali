.class Lcom/huawei/ims/ImsUtListenerProxy$7;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsUtListenerProxy;

.field final synthetic val$cwInfo:[Landroid/telephony/ims/ImsSsInfo;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsUtListenerProxy;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .line 156
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy$7;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iput p2, p0, Lcom/huawei/ims/ImsUtListenerProxy$7;->val$id:I

    iput-object p3, p0, Lcom/huawei/ims/ImsUtListenerProxy$7;->val$cwInfo:[Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsUtListenerProxy$7;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iget-object v0, v0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Landroid/telephony/ims/ImsUtListener;

    iget v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$7;->val$id:I

    iget-object v2, p0, Lcom/huawei/ims/ImsUtListenerProxy$7;->val$cwInfo:[Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$7;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    const-string v2, "utConfigurationCallWaitingQueried()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->access$000(Lcom/huawei/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 164
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
