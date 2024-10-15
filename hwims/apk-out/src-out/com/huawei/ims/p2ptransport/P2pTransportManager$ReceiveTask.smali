.class Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;
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
    name = "ReceiveTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager;
    .param p2, "x1"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;

    .line 237
    invoke-direct {p0, p1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;-><init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)V

    return-void
.end method

.method private readData(I)[B
    .registers 7
    .param p1, "dataLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "off":I
    new-array v1, p1, [B

    .line 279
    .local v1, "dataBufs":[B
    :goto_3
    iget-object v2, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mIsP2pTransportEnd:Z
    invoke-static {v2}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$500(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 280
    iget-object v2, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pInputStream:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$600(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/io/FileInputStream;

    move-result-object v2

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 281
    .local v2, "len":I
    if-ltz v2, :cond_20

    .line 285
    sub-int v3, p1, v0

    if-ne v2, v3, :cond_1e

    .line 286
    goto :goto_2f

    .line 288
    :cond_1e
    add-int/2addr v0, v2

    .line 289
    .end local v2    # "len":I
    goto :goto_3

    .line 282
    .restart local v2    # "len":I
    :cond_20
    const-string v3, "P2pTransportManager"

    const-string v4, "readData: the len < 0, stop."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v3, Ljava/io/IOException;

    const-string v4, "The end of the stream has been reached."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    .end local v2    # "len":I
    :cond_2f
    :goto_2f
    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 240
    const-string v0, "P2pTransportManager"

    iget-object v1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pInputStream:Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$600(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/io/FileInputStream;

    move-result-object v1

    if-nez v1, :cond_b

    .line 241
    return-void

    .line 243
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mIsP2pTransportEnd:Z
    invoke-static {v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$500(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 245
    :try_start_13
    const-string v1, ""

    .line 246
    .local v1, "devId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 247
    .local v2, "dataArrays":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    const/4 v4, 0x2

    if-ge v3, v4, :cond_54

    .line 248
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->readData(I)[B

    move-result-object v5

    .line 249
    .local v5, "headerArrays":[B
    invoke-static {v5}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->getTransDataLen([B)S

    move-result v6

    .line 250
    .local v6, "dataLen":I
    if-lez v6, :cond_4b

    const v7, 0xffff

    if-le v6, v7, :cond_2b

    goto :goto_4b

    .line 254
    :cond_2b
    invoke-direct {p0, v6}, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->readData(I)[B

    move-result-object v7

    .line 255
    .local v7, "bodyArrays":[B
    invoke-static {v5}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->getTransDataType([B)S

    move-result v8

    .line 256
    .local v8, "transDataType":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_41

    .line 257
    new-instance v4, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v4

    goto :goto_51

    .line 258
    :cond_41
    if-ne v8, v4, :cond_45

    .line 259
    move-object v2, v7

    goto :goto_51

    .line 261
    :cond_45
    const-string v4, "Invalid data type."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 251
    .end local v7    # "bodyArrays":[B
    .end local v8    # "transDataType":I
    :cond_4b
    :goto_4b
    const-string v4, "Read data failed for invalid data length"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    nop

    .line 247
    .end local v5    # "headerArrays":[B
    .end local v6    # "dataLen":I
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 264
    .end local v3    # "i":I
    :cond_54
    iget-object v3, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    # invokes: Lcom/huawei/ims/p2ptransport/P2pTransportManager;->sendVoiceDataToVpeer(Ljava/lang/String;[B)V
    invoke-static {v3, v1, v2}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->access$700(Lcom/huawei/ims/p2ptransport/P2pTransportManager;Ljava/lang/String;[B)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_59} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_59} :catch_5a

    .line 271
    .end local v1    # "devId":Ljava/lang/String;
    .end local v2    # "dataArrays":[B
    goto :goto_b

    .line 268
    :catch_5a
    move-exception v1

    .line 269
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "ReceiveTask run: Unexcepted runtime exception."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    goto :goto_67

    .line 265
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_61
    move-exception v1

    .line 266
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ReceiveTask run: Exception."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    invoke-virtual {v0}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->deInit()V

    .line 274
    return-void
.end method
