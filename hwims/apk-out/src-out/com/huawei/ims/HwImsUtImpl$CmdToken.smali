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

.field public static final enum CMD_SET_CALLWAITING_NONE_SYNC:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 762
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v1, 0x0

    const-string v2, "CMD_GET_CALLBARRING_OPTION"

    invoke-direct {v0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 767
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const-string v3, "CMD_SET_CALLBARRING_OPTION"

    invoke-direct {v0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 772
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x2

    const-string v4, "CMD_GET_OUTGOING_CALLERID_DISPLAY"

    invoke-direct {v0, v4, v3}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 777
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v4, 0x3

    const-string v5, "CMD_SET_OUTGOING_CALLERID_DISPLAY"

    invoke-direct {v0, v5, v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 782
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v5, 0x4

    const-string v6, "CMD_GET_CALLWAITING"

    invoke-direct {v0, v6, v5}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 787
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v6, 0x5

    const-string v7, "CMD_SET_CALLWAITING"

    invoke-direct {v0, v7, v6}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 792
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v7, 0x6

    const-string v8, "CMD_SET_CALLWAITING_NONE_SYNC"

    invoke-direct {v0, v8, v7}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING_NONE_SYNC:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 797
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v8, 0x7

    const-string v9, "CMD_GET_ORIGINATING_IDENTITY_PRESENTATION"

    invoke-direct {v0, v9, v8}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 802
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v9, 0x8

    const-string v10, "CMD_SET_ORIGINATING_IDENTITY_PRESENTATION"

    invoke-direct {v0, v10, v9}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 807
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v10, 0x9

    const-string v11, "CMD_GET_CALLFORWARDING_OPTION"

    invoke-direct {v0, v11, v10}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 812
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v11, 0xa

    const-string v12, "CMD_SET_CALLFORWARDING_OPTION"

    invoke-direct {v0, v12, v11}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 817
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v12, 0xb

    const-string v13, "CMD_CHANGE_CALLBARRING_PASSWORD"

    invoke-direct {v0, v13, v12}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_CHANGE_CALLBARRING_PASSWORD:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 822
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v13, 0xc

    const-string v14, "CMD_GET_TERMINATING_IDENTITY_PRESETNTATION"

    invoke-direct {v0, v14, v13}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 827
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v14, 0xd

    const-string v15, "CMD_SET_TERMINATING_IDENTITY_PRESETNTATION"

    invoke-direct {v0, v15, v14}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 832
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v15, 0xe

    const-string v14, "CMD_GET_TERMINATING_IDENTITY_RESTRICTION"

    invoke-direct {v0, v14, v15}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 837
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v14, "CMD_SET_TERMINATING_IDENTITY_RESTRICTION"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 842
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string v14, "CMD_GET_CALLWAITING_FOR_DETECTION"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 758
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    sget-object v14, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v14, v0, v1

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING_NONE_SYNC:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

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

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 758
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$CmdToken;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 758
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$CmdToken;
    .registers 1

    .line 758
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsUtImpl$CmdToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-object v0
.end method
