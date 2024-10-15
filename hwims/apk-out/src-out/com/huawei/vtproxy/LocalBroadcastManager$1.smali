.class Lcom/huawei/vtproxy/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/vtproxy/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/vtproxy/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/huawei/vtproxy/LocalBroadcastManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/vtproxy/LocalBroadcastManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 110
    iput-object p1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager$1;->this$0:Lcom/huawei/vtproxy/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 113
    if-nez p1, :cond_3

    .line 114
    return-void

    .line 117
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_12

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager$1;->this$0:Lcom/huawei/vtproxy/LocalBroadcastManager;

    # invokes: Lcom/huawei/vtproxy/LocalBroadcastManager;->executePendingBroadcasts()V
    invoke-static {v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->access$000(Lcom/huawei/vtproxy/LocalBroadcastManager;)V

    .line 120
    nop

    .line 124
    :goto_12
    return-void
.end method
