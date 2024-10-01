.class Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;
.super Ljava/lang/Object;
.source "HwMMTelFeature.java"

# interfaces
.implements Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/feature/HwMMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilitiesStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/feature/HwMMTelFeature;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/feature/HwMMTelFeature;Lcom/huawei/ims/feature/HwMMTelFeature$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/ims/feature/HwMMTelFeature;
    .param p2, "x1"    # Lcom/huawei/ims/feature/HwMMTelFeature$1;

    .line 64
    invoke-direct {p0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;-><init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V

    return-void
.end method


# virtual methods
.method public final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 67
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 68
    return-void
.end method
