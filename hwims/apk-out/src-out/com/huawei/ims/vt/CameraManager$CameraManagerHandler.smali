.class Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/CameraManager;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/CameraManager;)V
    .registers 2

    .line 1117
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;->this$0:Lcom/huawei/ims/vt/CameraManager;

    .line 1118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1119
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    goto :goto_43

    .line 1134
    :cond_21
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;->this$0:Lcom/huawei/ims/vt/CameraManager;

    # invokes: Lcom/huawei/ims/vt/CameraManager;->sendImageDataToSdk()V
    invoke-static {v0}, Lcom/huawei/ims/vt/CameraManager;->access$100(Lcom/huawei/ims/vt/CameraManager;)V

    .line 1135
    goto :goto_43

    .line 1126
    :cond_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_3d

    .line 1127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1128
    .local v0, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;->this$0:Lcom/huawei/ims/vt/CameraManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/vt/CameraManager;->open(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 1129
    .end local v0    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    goto :goto_43

    .line 1130
    :cond_3d
    const-string v0, "Message of session transfers fail"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    nop

    .line 1139
    :goto_43
    return-void
.end method
