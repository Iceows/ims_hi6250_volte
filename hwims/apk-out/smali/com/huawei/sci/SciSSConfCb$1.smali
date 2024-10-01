.class final Lcom/huawei/sci/SciSSConfCb$1;
.super Ljava/lang/Object;
.source "SciSSConfCb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConfCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->startBsfAuthRequest()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfCb;->access$002(I)I

    .line 20
    return-void
.end method
