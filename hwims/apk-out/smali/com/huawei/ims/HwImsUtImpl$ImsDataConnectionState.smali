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
    .locals 17

    .line 398
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 399
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_CONNECTION_ACT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 401
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_WIFI_CONNECTION_TUNNEL_ACT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 402
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_WIFI_PREF_TUNNEL_FAIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 403
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_WIFI_PREF_IMSPDP_FAIL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 404
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_WIFI_ONLY_TUNNEL_FAIL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 406
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_LTE_PREF_IMSPDP_FAIL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 407
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_LTE_PREF_TUNNEL_FAIL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 409
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_CELLULAR_PREF_IMSPDP_FAIL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 410
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_CELLULAR_PREF_TUNNEL_FAIL"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 412
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_CONNECTING"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 413
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_CONNECTED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 414
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_FINISH"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 415
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_IDLE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 416
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_TEMPORARILY_DC_CONNECTION_ACT"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 417
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_AIRPLANE_ON_TUNNEL_FAIL"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 419
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string v1, "IMS_DC_ACT_EXECUTE_LTE_FAIL"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 397
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v14

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 397
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 397
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 1

    .line 397
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method
