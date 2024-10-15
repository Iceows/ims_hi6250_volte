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
.field private mFeature:I

.field private mListener:Lcom/android/ims/ImsConfigListener;

.field private mNetwork:I

.field private mValue:I


# direct methods
.method constructor <init>(IIILcom/android/ims/ImsConfigListener;)V
    .registers 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mFeature:I

    .line 141
    iput p2, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mNetwork:I

    .line 142
    iput-object p4, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mListener:Lcom/android/ims/ImsConfigListener;

    .line 143
    iput p3, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mValue:I

    .line 144
    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 130
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mFeature:I

    return v0
.end method

.method static synthetic access$700(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 130
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mNetwork:I

    return v0
.end method

.method static synthetic access$800(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 130
    iget v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mValue:I

    return v0
.end method

.method static synthetic access$900(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)Lcom/android/ims/ImsConfigListener;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 130
    iget-object v0, p0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mListener:Lcom/android/ims/ImsConfigListener;

    return-object v0
.end method
