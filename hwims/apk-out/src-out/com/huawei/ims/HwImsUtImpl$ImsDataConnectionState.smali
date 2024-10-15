.class public final enum Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImsDataConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 638
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v1, 0x0

    const-string v2, "IMS_DC_INIT"

    invoke-direct {v0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 643
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v2, 0x1

    const-string v3, "IMS_DC_CONNECTION_ACT"

    invoke-direct {v0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 648
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v3, 0x2

    const-string v4, "IMS_DC_WIFI_CONNECTION_TUNNEL_ACT"

    invoke-direct {v0, v4, v3}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 653
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v4, 0x3

    const-string v5, "IMS_DC_WIFI_PREF_TUNNEL_FAIL"

    invoke-direct {v0, v5, v4}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 658
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v5, 0x4

    const-string v6, "IMS_DC_WIFI_PREF_IMSPDP_FAIL"

    invoke-direct {v0, v6, v5}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 663
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v6, 0x5

    const-string v7, "IMS_DC_WIFI_ONLY_TUNNEL_FAIL"

    invoke-direct {v0, v7, v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 668
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v7, 0x6

    const-string v8, "IMS_DC_LTE_PREF_IMSPDP_FAIL"

    invoke-direct {v0, v8, v7}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 673
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v8, 0x7

    const-string v9, "IMS_DC_LTE_PREF_TUNNEL_FAIL"

    invoke-direct {v0, v9, v8}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 678
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v9, 0x8

    const-string v10, "IMS_DC_CELLULAR_PREF_IMSPDP_FAIL"

    invoke-direct {v0, v10, v9}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 683
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v10, 0x9

    const-string v11, "IMS_DC_CELLULAR_PREF_TUNNEL_FAIL"

    invoke-direct {v0, v11, v10}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 688
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v11, 0xa

    const-string v12, "IMS_DC_CONNECTING"

    invoke-direct {v0, v12, v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 693
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v12, 0xb

    const-string v13, "IMS_DC_CONNECTED"

    invoke-direct {v0, v13, v12}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 698
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v13, 0xc

    const-string v14, "IMS_DC_FINISH"

    invoke-direct {v0, v14, v13}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 703
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v14, 0xd

    const-string v15, "IMS_DC_IDLE"

    invoke-direct {v0, v15, v14}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 708
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v15, 0xe

    const-string v14, "IMS_TEMPORARILY_DC_CONNECTION_ACT"

    invoke-direct {v0, v14, v15}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 713
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v14, "IMS_DC_AIRPLANE_ON_TUNNEL_FAIL"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 718
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v14, "IMS_DC_ACT_EXECUTE_LTE_FAIL"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 634
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v14, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v14, v0, v1

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 634
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .registers 1

    .line 634
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method
