.class Lcom/huawei/ims/GbaAuth$AkaResult;
.super Ljava/lang/Object;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AkaResult"
.end annotation


# instance fields
.field mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

.field mStatus:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
