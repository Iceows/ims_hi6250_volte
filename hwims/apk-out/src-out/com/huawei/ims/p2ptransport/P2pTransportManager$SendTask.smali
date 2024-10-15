.class Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;
.super Ljava/lang/Object;
.source "P2pTransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/p2ptransport/P2pTransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager;
    .param p2, "x1"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;

    .line 206
    invoke-direct {p0, p1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;-><init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 209
    const-string v0, "P2pTransportManager"

    iget-object v1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$400(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-nez v1, :cond_b

    .line 210
    return-void

    .line 212
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mIsP2pTransportEnd:Z
    invoke-static {v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$500(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 214
    :try_start_13
    iget-object v1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mSendDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$300(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 215
    .local v1, "dataArrays":[B
    if-eqz v1, :cond_35

    array-length v2, v1

    if-gtz v2, :cond_29

    goto :goto_35

    .line 218
    :cond_29
    iget-object v2, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v2}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$400(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/io/FileOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_34} :catch_3d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_34} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_34} :catch_36

    .line 226
    .end local v1    # "dataArrays":[B
    goto :goto_b

    .line 216
    .restart local v1    # "dataArrays":[B
    :cond_35
    :goto_35
    goto :goto_b

    .line 223
    .end local v1    # "dataArrays":[B
    :catch_36
    move-exception v1

    .line 224
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SendTask run: Unexcepted runtime exception."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    goto :goto_43

    .line 220
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_3d
    move-exception v1

    .line 221
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "SendTask run: Exception."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    invoke-virtual {v0}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->deInit()V

    .line 229
    return-void
.end method
