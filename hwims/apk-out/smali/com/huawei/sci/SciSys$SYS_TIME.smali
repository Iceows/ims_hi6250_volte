.class public Lcom/huawei/sci/SciSys$SYS_TIME;
.super Ljava/lang/Object;
.source "SciSys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYS_TIME"
.end annotation


# instance fields
.field public iTimeZone:I

.field public ucDay:B

.field public ucHour:B

.field public ucMinute:B

.field public ucMonth:B

.field public ucSecond:B

.field public ucWeekDay:B

.field public wYear:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
