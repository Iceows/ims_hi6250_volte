.class public Lcom/huawei/ims/StatisticalHelper;
.super Ljava/lang/Object;
.source "StatisticalHelper.java"


# static fields
.field private static final BASE_ID:I = 0x3b0bf780

.field private static final TAG:Ljava/lang/String; = "ImsStatisticalHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static report(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 35
    if-nez p2, :cond_3

    .line 36
    return-void

    .line 38
    :cond_3
    const v0, 0x3b0bf780

    add-int/2addr v0, p1

    invoke-static {v0, p2, p3}, Lcom/huawei/android/app/HiViewEx;->byPair(ILjava/lang/String;I)Lcom/huawei/android/app/HiEventEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/android/app/HiEventEx;->putAppInfo(Landroid/content/Context;)Lcom/huawei/android/app/HiEventEx;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/app/HiViewEx;->report(Lcom/huawei/android/app/HiEventEx;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report eventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsStatisticalHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
