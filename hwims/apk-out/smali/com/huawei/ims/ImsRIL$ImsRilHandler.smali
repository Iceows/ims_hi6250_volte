.class Lcom/huawei/ims/ImsRIL$ImsRilHandler;
.super Landroid/os/Handler;
.source "ImsRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRilHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsRIL;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsRIL;

    .line 505
    iput-object p1, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 510
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRadioProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 532
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 533
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    invoke-static {v0}, Lcom/huawei/ims/ImsRIL;->access$100(Lcom/huawei/ims/ImsRIL;)V

    .line 538
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsRIL;->access$200(Lcom/huawei/ims/ImsRIL;Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    goto :goto_1

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 518
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget v2, v2, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsRIL;->access$000(Lcom/huawei/ims/ImsRIL;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 520
    .local v1, "count":I
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WAKE_LOCK_TIMEOUT  mRequestsList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 522
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 523
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v3, v3, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRILRequest;

    .line 524
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 525
    invoke-static {v6}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-virtual {v4, v5}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_2
    monitor-exit v0

    .line 529
    nop

    .line 542
    :cond_3
    :goto_1
    return-void

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
