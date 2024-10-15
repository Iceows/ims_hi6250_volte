.class Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;
.super Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter$Stub;
.source "P2pTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/p2ptransport/P2pTransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pTransportAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    invoke-direct {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager;
    .param p2, "x1"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;

    .line 188
    invoke-direct {p0, p1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;-><init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "devId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_1b

    .line 195
    :cond_9
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 196
    .local v0, "responseArrays":[B
    invoke-static {p1, v0}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->generateData(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 197
    .local v1, "sendDataArrays":[B
    iget-object v2, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mSendDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v2}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$300(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 198
    return-void

    .line 192
    .end local v0    # "responseArrays":[B
    .end local v1    # "sendDataArrays":[B
    :cond_1b
    :goto_1b
    const-string v0, "P2pTransportManager"

    const-string v1, "The data is empty, no need to handle"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method
