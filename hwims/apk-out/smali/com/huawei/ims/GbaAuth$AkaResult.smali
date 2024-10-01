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

.field mStatus:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
