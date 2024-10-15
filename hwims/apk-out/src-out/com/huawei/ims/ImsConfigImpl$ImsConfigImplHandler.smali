.class Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;
.super Landroid/os/Handler;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsConfigImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsConfigImpl;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/ImsConfigImpl;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/huawei/ims/ImsConfigImpl;->logi(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->access$000(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_22

    .line 158
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    .line 161
    :cond_22
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_47

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    .line 172
    const-string v1, "handleMessage: unhandled message"

    # invokes: Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->access$500(Ljava/lang/String;)V

    goto :goto_51

    .line 169
    :cond_33
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    # invokes: Lcom/huawei/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    invoke-static {v1, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    # invokes: Lcom/huawei/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$400(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    .line 170
    goto :goto_51

    .line 163
    :cond_3d
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    # invokes: Lcom/huawei/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    invoke-static {v1, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    # invokes: Lcom/huawei/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$200(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    .line 164
    goto :goto_51

    .line 166
    :cond_47
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    # invokes: Lcom/huawei/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    invoke-static {v1, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    # invokes: Lcom/huawei/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$300(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    .line 167
    nop

    .line 175
    :goto_51
    return-void
.end method
