.class Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;
.super Ljava/lang/Object;
.source "HwMmTelFeature.java"

# interfaces
.implements Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/feature/HwMmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilitiesStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/feature/HwMmTelFeature;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/feature/HwMmTelFeature;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;->this$0:Lcom/huawei/ims/feature/HwMmTelFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/feature/HwMmTelFeature;Lcom/huawei/ims/feature/HwMmTelFeature$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huawei/ims/feature/HwMmTelFeature;
    .param p2, "x1"    # Lcom/huawei/ims/feature/HwMmTelFeature$1;

    .line 93
    invoke-direct {p0, p1}, Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;-><init>(Lcom/huawei/ims/feature/HwMmTelFeature;)V

    return-void
.end method


# virtual methods
.method public final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 96
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;->this$0:Lcom/huawei/ims/feature/HwMmTelFeature;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/feature/HwMmTelFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 97
    return-void
.end method
