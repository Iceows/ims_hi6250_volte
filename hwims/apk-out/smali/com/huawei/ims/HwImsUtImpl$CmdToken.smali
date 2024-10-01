.class public final enum Lcom/huawei/ims/HwImsUtImpl$CmdToken;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/HwImsUtImpl$CmdToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_CHANGE_CALLBARRING_PASSWORD:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 433
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_GET_CALLBARRING_OPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 434
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_SET_CALLBARRING_OPTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 435
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_GET_OUTGOING_CALLERID_DISPLAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 436
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_SET_OUTGOING_CALLERID_DISPLAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 437
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_GET_CALLWAITING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 438
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_SET_CALLWAITING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 439
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_GET_ORIGINATING_IDENTITY_PRESENTATION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 440
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_SET_ORIGINATING_IDENTITY_PRESENTATION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 441
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_GET_CALLFORWARDING_OPTION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 442
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_SET_CALLFORWARDING_OPTION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 443
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_CHANGE_CALLBARRING_PASSWORD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_CHANGE_CALLBARRING_PASSWORD:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 444
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_GET_TERMINATING_IDENTITY_PRESETNTATION"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 445
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_SET_TERMINATING_IDENTITY_PRESETNTATION"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 446
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_GET_TERMINATING_IDENTITY_RESTRICTION"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 447
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_SET_TERMINATING_IDENTITY_RESTRICTION"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 448
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v1, "CMD_GET_CALLWAITING_FOR_DETECTION"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 432
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v9

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v10

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v11

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_CHANGE_CALLBARRING_PASSWORD:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v12

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v13

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v14

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 432
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$CmdToken;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 432
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$CmdToken;
    .locals 1

    .line 432
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsUtImpl$CmdToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-object v0
.end method
