.class Lcom/huawei/ims/VolteEncryptCallCmdService$1;
.super Landroid/database/ContentObserver;
.source "VolteEncryptCallCmdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/VolteEncryptCallCmdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/VolteEncryptCallCmdService;


# direct methods
.method constructor <init>(Lcom/huawei/ims/VolteEncryptCallCmdService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/ims/VolteEncryptCallCmdService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/huawei/ims/VolteEncryptCallCmdService$1;->this$0:Lcom/huawei/ims/VolteEncryptCallCmdService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "isSelfChange"    # Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuto4gSlotChangeObserver onChange, selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolteEncryptCallCmdService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/huawei/ims/VolteEncryptCallCmdService$1;->this$0:Lcom/huawei/ims/VolteEncryptCallCmdService;

    # getter for: Lcom/huawei/ims/VolteEncryptCallCmdService;->mCurrentDeviceValidFlag:I
    invoke-static {v0}, Lcom/huawei/ims/VolteEncryptCallCmdService;->access$000(Lcom/huawei/ims/VolteEncryptCallCmdService;)I

    move-result v1

    # invokes: Lcom/huawei/ims/VolteEncryptCallCmdService;->setDeviceValidFlag(I)V
    invoke-static {v0, v1}, Lcom/huawei/ims/VolteEncryptCallCmdService;->access$100(Lcom/huawei/ims/VolteEncryptCallCmdService;I)V

    .line 58
    return-void
.end method
