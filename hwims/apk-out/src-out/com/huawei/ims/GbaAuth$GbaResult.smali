.class Lcom/huawei/ims/GbaAuth$GbaResult;
.super Ljava/lang/Object;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GbaResult"
.end annotation


# instance fields
.field mBtid:Ljava/lang/String;

.field mKsnaf:[B

.field mStatus:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
