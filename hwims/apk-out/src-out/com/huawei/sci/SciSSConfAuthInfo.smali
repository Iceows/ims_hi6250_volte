.class public Lcom/huawei/sci/SciSSConfAuthInfo;
.super Ljava/lang/Object;
.source "SciSSConfAuthInfo.java"


# static fields
.field public static final MAX_CIRCLE_TIMES:I = 0xa

.field private static instance:Lcom/huawei/sci/SciSSConfAuthInfo;


# instance fields
.field private gbaType:I

.field private impi:Ljava/lang/String;

.field private nafId:[B

.field private rand:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSSConfAuthInfo;->instance:Lcom/huawei/sci/SciSSConfAuthInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;
    .registers 2

    const-class v0, Lcom/huawei/sci/SciSSConfAuthInfo;

    monitor-enter v0

    .line 34
    :try_start_3
    sget-object v1, Lcom/huawei/sci/SciSSConfAuthInfo;->instance:Lcom/huawei/sci/SciSSConfAuthInfo;

    if-nez v1, :cond_e

    .line 35
    new-instance v1, Lcom/huawei/sci/SciSSConfAuthInfo;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;-><init>()V

    sput-object v1, Lcom/huawei/sci/SciSSConfAuthInfo;->instance:Lcom/huawei/sci/SciSSConfAuthInfo;

    .line 38
    :cond_e
    sget-object v1, Lcom/huawei/sci/SciSSConfAuthInfo;->instance:Lcom/huawei/sci/SciSSConfAuthInfo;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getGbaType()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->gbaType:I

    return v0
.end method

.method public getImpi()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->impi:Ljava/lang/String;

    return-object v0
.end method

.method public getNafId()[B
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->nafId:[B

    return-object v0
.end method

.method public getRand()[B
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->rand:[B

    return-object v0
.end method

.method public setGbaType(I)V
    .registers 2
    .param p1, "gbaType"    # I

    .line 54
    iput p1, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->gbaType:I

    .line 55
    return-void
.end method

.method public setImpi(Ljava/lang/String;)V
    .registers 2
    .param p1, "impi"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->impi:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setNafId([B)V
    .registers 2
    .param p1, "nafId"    # [B

    .line 62
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->nafId:[B

    .line 63
    return-void
.end method

.method public setRand([B)V
    .registers 2
    .param p1, "rand"    # [B

    .line 70
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->rand:[B

    .line 71
    return-void
.end method
