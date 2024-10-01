.class final Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRIL.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsRIL;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsRIL;

    .line 496
    iput-object p1, p0, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;->this$0:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 499
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    .line 500
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 499
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 502
    return-void
.end method
