.class final Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureAccessWrapper"
.end annotation


# instance fields
.field private feature:I

.field public listener:Lcom/android/ims/ImsConfigListener;

.field private network:I

.field private value:I


# direct methods
.method public constructor <init>(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    .line 125
    iput p2, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->network:I

    .line 126
    iput-object p4, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    .line 127
    iput p3, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    .line 128
    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 117
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    return v0
.end method

.method static synthetic access$700(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 117
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->network:I

    return v0
.end method

.method static synthetic access$800(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 117
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    return v0
.end method
