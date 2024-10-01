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
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->access$000(Ljava/lang/String;)V

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 138
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 149
    const-string v1, "handleMessage: unhandled message"

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->access$500(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    iget-object v2, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$400(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    .line 147
    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    iget-object v2, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$200(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    iget-object v2, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->access$300(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    .line 144
    nop

    .line 152
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
