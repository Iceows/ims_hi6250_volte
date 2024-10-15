.class public Lcom/huawei/videoengine/LogFile;
.super Ljava/lang/Object;
.source "LogFile.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/huawei/videoengine/LogFile;
    .registers 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .registers 2

    .line 59
    return-void
.end method

.method public stop()V
    .registers 1

    .line 66
    return-void
.end method

.method public writetoTrace()V
    .registers 1

    .line 121
    return-void
.end method
