.class Lcom/huawei/ims/GbaAuth$BtidElem;
.super Ljava/lang/Object;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BtidElem"
.end annotation


# instance fields
.field mBTid:[B

.field mKs:[B

.field mLifeTime:Ljava/util/Date;

.field mRand:[B

.field mType:I

.field mbUsed:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
