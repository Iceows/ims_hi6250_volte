.class public Lcom/huawei/sci/SciSSConfAuthInfo;
.super Ljava/lang/Object;
.source "SciSSConfAuthInfo.java"


# static fields
.field public static final MAX_CIRCLE_TIMES:I = 0xa

.field private static instance:Lcom/huawei/sci/SciSSConfAuthInfo;


# instance fields
.field private gbaType:I

.field private impi:Ljava/lang/String;

.field private naf_id:[B

.field private rand:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSSConfAuthInfo;->instance:Lcom/huawei/sci/SciSSConfAuthInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;
    .locals 2

    const-class v0, Lcom/huawei/sci/SciSSConfAuthInfo;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/huawei/sci/SciSSConfAuthInfo;->instance:Lcom/huawei/sci/SciSSConfAuthInfo;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/huawei/sci/SciSSConfAuthInfo;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;-><init>()V

    sput-object v1, Lcom/huawei/sci/SciSSConfAuthInfo;->instance:Lcom/huawei/sci/SciSSConfAuthInfo;

    .line 52
    :cond_0
    sget-object v1, Lcom/huawei/sci/SciSSConfAuthInfo;->instance:Lcom/huawei/sci/SciSSConfAuthInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getGbaType()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->gbaType:I

    return v0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->impi:Ljava/lang/String;

    return-object v0
.end method

.method public getNaf_id()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->naf_id:[B

    return-object v0
.end method

.method public getRand()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->rand:[B

    return-object v0
.end method

.method public setGbaType(I)V
    .locals 0
    .param p1, "gbaType"    # I

    .line 72
    iput p1, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->gbaType:I

    .line 73
    return-void
.end method

.method public setImpi(Ljava/lang/String;)V
    .locals 0
    .param p1, "impi"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->impi:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setNaf_id([B)V
    .locals 0
    .param p1, "naf_id"    # [B

    .line 82
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->naf_id:[B

    .line 83
    return-void
.end method

.method public setRand([B)V
    .locals 0
    .param p1, "rand"    # [B

    .line 92
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuthInfo;->rand:[B

    .line 93
    return-void
.end method
