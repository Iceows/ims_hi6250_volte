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
.field mBtid:[B

.field mIsUsed:Z

.field mKs:[B

.field mLifeTime:Ljava/util/Date;

.field mRand:[B

.field mType:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
