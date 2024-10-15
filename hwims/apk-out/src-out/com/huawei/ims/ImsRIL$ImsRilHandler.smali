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
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/ImsRIL;

    .line 886
    iput-object p1, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 890
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_22

    .line 914
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 906
    :cond_22
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

    .line 907
    # getter for: Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->access$400(Lcom/huawei/ims/ImsRIL;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 906
    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 908
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    # getter for: Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->access$400(Lcom/huawei/ims/ImsRIL;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e5

    .line 909
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    # invokes: Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V
    invoke-static {v0}, Lcom/huawei/ims/ImsRIL;->access$500(Lcom/huawei/ims/ImsRIL;)V

    .line 910
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    # invokes: Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsRIL;->access$600(Lcom/huawei/ims/ImsRIL;Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    goto :goto_e5

    .line 894
    :cond_6e
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    # getter for: Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/huawei/ims/ImsRIL;->access$100(Lcom/huawei/ims/ImsRIL;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 895
    :try_start_75
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    # getter for: Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I
    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->access$200(Lcom/huawei/ims/ImsRIL;)I

    move-result v2

    if-ne v1, v2, :cond_e3

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x0

    # invokes: Lcom/huawei/ims/ImsRIL;->clearWakeLock(I)Z
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsRIL;->access$300(Lcom/huawei/ims/ImsRIL;I)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 896
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    # getter for: Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->access$100(Lcom/huawei/ims/ImsRIL;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 897
    .local v1, "count":I
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAKE_LOCK_TIMEOUT  mRequestsList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 898
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a9
    if-ge v2, v1, :cond_e3

    .line 899
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    # getter for: Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->access$100(Lcom/huawei/ims/ImsRIL;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRilRequest;

    .line 900
    .local v3, "rr":Lcom/huawei/ims/ImsRilRequest;
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v6}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 903
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :cond_e3
    monitor-exit v0

    .line 904
    nop

    .line 917
    :cond_e5
    :goto_e5
    return-void

    .line 903
    :catchall_e6
    move-exception v1

    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_75 .. :try_end_e8} :catchall_e6

    throw v1
.end method
