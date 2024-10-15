.class public Lcom/huawei/vtproxy/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;,
        Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final BROADCAST_LOCK:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static instance:Lcom/huawei/vtproxy/LocalBroadcastManager;


# instance fields
.field private final actionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final appContext:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final pendingBroadcastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final receiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/vtproxy/LocalBroadcastManager;->BROADCAST_LOCK:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/vtproxy/LocalBroadcastManager;->instance:Lcom/huawei/vtproxy/LocalBroadcastManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->receiverMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->actionMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->pendingBroadcastList:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->appContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/huawei/vtproxy/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/vtproxy/LocalBroadcastManager$1;-><init>(Lcom/huawei/vtproxy/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->handler:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/vtproxy/LocalBroadcastManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/vtproxy/LocalBroadcastManager;

    .line 37
    invoke-direct {p0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 8

    .line 330
    :goto_0
    const/4 v0, 0x0

    .line 331
    .local v0, "brs":[Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;
    iget-object v1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->receiverMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 332
    :try_start_4
    iget-object v2, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->pendingBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 333
    .local v2, "number":I
    if-gtz v2, :cond_e

    .line 334
    monitor-exit v1

    return-void

    .line 337
    :cond_e
    new-array v3, v2, [Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;

    move-object v0, v3

    .line 338
    iget-object v3, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->pendingBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 339
    iget-object v3, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->pendingBroadcastList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 340
    .end local v2    # "number":I
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_43

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    array-length v2, v0

    if-ge v1, v2, :cond_42

    .line 343
    aget-object v2, v0, v1

    .line 344
    .local v2, "br":Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_23
    iget-object v4, v2, Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3f

    .line 345
    iget-object v4, v2, Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;

    iget-object v4, v4, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->appContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 342
    .end local v2    # "br":Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "j":I
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 348
    .end local v0    # "brs":[Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;
    .end local v1    # "i":I
    :cond_42
    goto :goto_0

    .line 340
    .restart local v0    # "brs":[Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/huawei/vtproxy/LocalBroadcastManager;->BROADCAST_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    if-nez p0, :cond_8

    .line 98
    const/4 v1, 0x0

    :try_start_6
    monitor-exit v0

    return-object v1

    .line 101
    :cond_8
    sget-object v1, Lcom/huawei/vtproxy/LocalBroadcastManager;->instance:Lcom/huawei/vtproxy/LocalBroadcastManager;

    if-nez v1, :cond_17

    .line 102
    new-instance v1, Lcom/huawei/vtproxy/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/vtproxy/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/vtproxy/LocalBroadcastManager;->instance:Lcom/huawei/vtproxy/LocalBroadcastManager;

    .line 104
    :cond_17
    sget-object v1, Lcom/huawei/vtproxy/LocalBroadcastManager;->instance:Lcom/huawei/vtproxy/LocalBroadcastManager;

    monitor-exit v0

    return-object v1

    .line 105
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private sendBroadcastProcNotMatch(IZ)V
    .registers 6
    .param p1, "match"    # I
    .param p2, "isDebug"    # Z

    .line 208
    if-eqz p2, :cond_34

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "reason":Ljava/lang/String;
    const/4 v1, -0x4

    if-eq p1, v1, :cond_1b

    const/4 v1, -0x3

    if-eq p1, v1, :cond_18

    const/4 v1, -0x2

    if-eq p1, v1, :cond_15

    const/4 v1, -0x1

    if-eq p1, v1, :cond_12

    .line 224
    const-string v0, "unknown reason"

    goto :goto_1e

    .line 221
    :cond_12
    const-string v0, "type"

    .line 222
    goto :goto_1e

    .line 218
    :cond_15
    const-string v0, "data"

    .line 219
    goto :goto_1e

    .line 212
    :cond_18
    const-string v0, "action"

    .line 213
    goto :goto_1e

    .line 215
    :cond_1b
    const-string v0, "category"

    .line 216
    nop

    .line 228
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Filter did not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalBroadcastManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "reason":Ljava/lang/String;
    :cond_34
    return-void
.end method

.method private sendBroadcastProcReceivers(Landroid/content/Intent;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation

    .line 233
    .local p2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 235
    .local v3, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 236
    .local v11, "action":Ljava/lang/String;
    iget-object v4, v0, Lcom/huawei/vtproxy/LocalBroadcastManager;->appContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 239
    .local v13, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 240
    .local v14, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    .line 241
    .local v15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/4 v10, 0x1

    if-eqz v4, :cond_2c

    move v4, v10

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    move v9, v4

    .line 243
    .local v9, "isDebug":Z
    const-string v8, "LocalBroadcastManager"

    if-eqz v9, :cond_6a

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolving type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_6a
    const/4 v4, 0x0

    move-object/from16 v16, v3

    move v3, v4

    .local v3, "i":I
    .local v16, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_107

    .line 249
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;

    .line 250
    .local v7, "receiver":Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;
    if-eqz v9, :cond_93

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matching against filter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_93
    iget-boolean v4, v7, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;->isBroadcasting:Z

    if-eqz v4, :cond_ae

    .line 255
    if-eqz v9, :cond_a6

    .line 256
    const-string v4, "Filter\'s target already added"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move v11, v9

    move v12, v10

    goto :goto_f8

    .line 255
    :cond_a6
    move-object v2, v8

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move v11, v9

    move v12, v10

    goto :goto_f8

    .line 261
    :cond_ae
    iget-object v4, v7, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v17, "LocalBroadcastManager"

    move-object v5, v11

    move-object v6, v12

    move-object v1, v7

    .end local v7    # "receiver":Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;
    .local v1, "receiver":Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;
    move-object v7, v14

    move-object v2, v8

    move-object v8, v13

    move-object/from16 v18, v11

    move v11, v9

    .end local v9    # "isDebug":Z
    .local v11, "isDebug":Z
    .local v18, "action":Ljava/lang/String;
    move-object v9, v15

    move-object/from16 v19, v12

    move v12, v10

    .end local v12    # "type":Ljava/lang/String;
    .local v19, "type":Ljava/lang/String;
    move-object/from16 v10, v17

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v4

    .line 262
    .local v4, "match":I
    if-ltz v4, :cond_f5

    .line 263
    if-eqz v11, :cond_e1

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_e1
    if-nez v16, :cond_eb

    .line 268
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v5

    goto :goto_ed

    .line 267
    :cond_eb
    move-object/from16 v5, v16

    .line 271
    .end local v16    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    .local v5, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_ed
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iput-boolean v12, v1, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;->isBroadcasting:Z

    move-object/from16 v16, v5

    goto :goto_f8

    .line 274
    .end local v5    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v16    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_f5
    invoke-direct {v0, v4, v11}, Lcom/huawei/vtproxy/LocalBroadcastManager;->sendBroadcastProcNotMatch(IZ)V

    .line 248
    .end local v1    # "receiver":Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;
    .end local v4    # "match":I
    :goto_f8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object v8, v2

    move v9, v11

    move v10, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v2, p2

    goto/16 :goto_6e

    .line 278
    .end local v3    # "i":I
    .end local v18    # "action":Ljava/lang/String;
    .end local v19    # "type":Ljava/lang/String;
    .restart local v9    # "isDebug":Z
    .local v11, "action":Ljava/lang/String;
    .restart local v12    # "type":Ljava/lang/String;
    :cond_107
    return-object v16
.end method

.method private unregisterReceiverRemoveAction(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 166
    iget-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->actionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 168
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v0, :cond_3a

    if-eqz p2, :cond_3a

    .line 169
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;

    iget-object v2, v2, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    add-int/lit8 v1, v1, -0x1

    .line 169
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 176
    .end local v1    # "k":I
    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3a

    .line 177
    iget-object v1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->actionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_3a
    return-void
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 137
    iget-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->receiverMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 140
    if-nez p2, :cond_7

    .line 141
    :try_start_5
    monitor-exit v0

    return-void

    .line 144
    :cond_7
    new-instance v1, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v1, p2, p1}, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 145
    .local v1, "entry":Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;
    iget-object v2, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 146
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_22

    .line 147
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 148
    iget-object v4, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_22
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 153
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->actionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 155
    .local v6, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v6, :cond_45

    .line 156
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    .line 157
    iget-object v7, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->actionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_45
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    nop

    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 162
    .end local v1    # "entry":Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v4    # "i":I
    :cond_4c
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 290
    iget-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->receiverMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 291
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 292
    :try_start_6
    monitor-exit v0

    return v1

    .line 295
    :cond_8
    iget-object v2, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->actionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 296
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v2, :cond_48

    .line 297
    invoke-direct {p0, p1, v2}, Lcom/huawei/vtproxy/LocalBroadcastManager;->sendBroadcastProcReceivers(Landroid/content/Intent;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 298
    .local v3, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v3, :cond_48

    .line 299
    move v4, v1

    .local v4, "i":I
    :goto_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 300
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;

    iput-boolean v1, v5, Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;->isBroadcasting:Z

    .line 299
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 303
    .end local v4    # "i":I
    :cond_2e
    iget-object v1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->pendingBroadcastList:Ljava/util/ArrayList;

    new-instance v4, Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;

    invoke-direct {v4, p1, v3}, Lcom/huawei/vtproxy/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_46

    .line 305
    iget-object v1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    :cond_46
    monitor-exit v0

    return v4

    .line 311
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v3    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/vtproxy/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_48
    monitor-exit v0

    .line 313
    return v1

    .line 311
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, p1}, Lcom/huawei/vtproxy/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 324
    invoke-direct {p0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 326
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 9
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 191
    iget-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->receiverMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 192
    :try_start_3
    iget-object v1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager;->receiverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 193
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v1, :cond_f

    .line 194
    monitor-exit v0

    return-void

    .line 197
    :cond_f
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 198
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    .line 199
    .local v4, "filter":Landroid/content/IntentFilter;
    move v5, v2

    .local v5, "j":I
    :goto_1e
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_2e

    .line 200
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "action":Ljava/lang/String;
    invoke-direct {p0, v6, p1}, Lcom/huawei/vtproxy/LocalBroadcastManager;->unregisterReceiverRemoveAction(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 199
    .end local v6    # "action":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 197
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "j":I
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 204
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v3    # "i":I
    :cond_31
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method
