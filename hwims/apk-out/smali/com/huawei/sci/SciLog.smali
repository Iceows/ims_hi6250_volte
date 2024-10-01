.class public Lcom/huawei/sci/SciLog;
.super Ljava/lang/Object;
.source "SciLog.java"


# static fields
.field private static API_ID:Ljava/lang/String;

.field private static DEBUG:Ljava/lang/String;

.field private static ERROR:Ljava/lang/String;

.field private static INFO:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "HRCS"

    sput-object v0, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    .line 12
    const-string v0, "INFO"

    sput-object v0, Lcom/huawei/sci/SciLog;->INFO:Ljava/lang/String;

    .line 13
    const-string v0, "ERROR"

    sput-object v0, Lcom/huawei/sci/SciLog;->ERROR:Ljava/lang/String;

    .line 14
    const-string v0, "DEBUG"

    sput-object v0, Lcom/huawei/sci/SciLog;->DEBUG:Ljava/lang/String;

    .line 15
    const-string v0, "CAAS_API"

    sput-object v0, Lcom/huawei/sci/SciLog;->API_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pcLogName"    # Ljava/lang/String;
    .param p1, "pcFormat"    # Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/huawei/sci/SciSys;->getInitFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 115
    invoke-static {p0, p1}, Lcom/huawei/sci/SciLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciLog;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "pcLogName"    # Ljava/lang/String;
    .param p1, "pcFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 100
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/sci/SciSys;->getInitFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0, v0}, Lcom/huawei/sci/SciLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    sget-object v1, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/sci/SciLog;->DEBUG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void
.end method

.method private static native debug(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pcLogName"    # Ljava/lang/String;
    .param p1, "pcFormat"    # Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/huawei/sci/SciSys;->getInitFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/huawei/sci/SciLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciLog;->ERROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "pcLogName"    # Ljava/lang/String;
    .param p1, "pcFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 26
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/sci/SciSys;->getInitFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0, v0}, Lcom/huawei/sci/SciLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/sci/SciLog;->ERROR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return-void
.end method

.method private static native error(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pcLogName"    # Ljava/lang/String;
    .param p1, "pcFormat"    # Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/huawei/sci/SciSys;->getInitFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    invoke-static {p0, p1}, Lcom/huawei/sci/SciLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciLog;->INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "pcLogName"    # Ljava/lang/String;
    .param p1, "pcFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 74
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/sci/SciSys;->getInitFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0, v0}, Lcom/huawei/sci/SciLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object v1, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/sci/SciLog;->INFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void
.end method

.method private static native info(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static logApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pcLogName"    # Ljava/lang/String;
    .param p1, "pcFormat"    # Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/huawei/sci/SciSys;->getInitFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Lcom/huawei/sci/SciLog;->API_ID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI->SA "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI->SA "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciLog;->INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void
.end method

.method public static logNty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pcLogName"    # Ljava/lang/String;
    .param p1, "pcFormat"    # Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/huawei/sci/SciSys;->getInitFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    sget-object v0, Lcom/huawei/sci/SciLog;->API_ID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA->UI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA->UI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciLog;->INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void
.end method

.method public static native logQoePrint(Ljava/lang/String;)I
.end method

.method public static now()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "Asia/Hong_Kong"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "localTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 21
    const-string v1, "%y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
