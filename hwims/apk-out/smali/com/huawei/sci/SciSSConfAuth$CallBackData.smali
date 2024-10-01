.class public Lcom/huawei/sci/SciSSConfAuth$CallBackData;
.super Ljava/lang/Object;
.source "SciSSConfAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConfAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBackData"
.end annotation


# instance fields
.field private asyncSign:Ljava/lang/Object;

.field private resultData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsyncSign()Ljava/lang/Object;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->asyncSign:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultData()Ljava/lang/Object;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->resultData:Ljava/lang/Object;

    return-object v0
.end method

.method public setAsyncSign(Ljava/lang/Object;)V
    .locals 0
    .param p1, "asyncSign"    # Ljava/lang/Object;

    .line 308
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->asyncSign:Ljava/lang/Object;

    .line 309
    return-void
.end method

.method public setResultData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "resultData"    # Ljava/lang/Object;

    .line 318
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->resultData:Ljava/lang/Object;

    .line 319
    return-void
.end method
