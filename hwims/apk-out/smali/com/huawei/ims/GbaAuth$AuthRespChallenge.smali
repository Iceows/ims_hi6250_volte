.class Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
.super Ljava/lang/Object;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthRespChallenge"
.end annotation


# instance fields
.field mCk:Lcom/huawei/ims/GbaAuth$DataValue;

.field mIk:Lcom/huawei/ims/GbaAuth$DataValue;

.field mRes:Lcom/huawei/ims/GbaAuth$DataValue;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
