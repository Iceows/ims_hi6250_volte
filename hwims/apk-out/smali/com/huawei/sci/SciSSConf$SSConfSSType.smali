.class public final enum Lcom/huawei/sci/SciSSConf$SSConfSSType;
.super Ljava/lang/Enum;
.source "SciSSConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSConfSSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/sci/SciSSConf$SSConfSSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAICr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAOCr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAOICxH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CB_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CDIV:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFNRc:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_ICB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_OCB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 9
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 10
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_OIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 11
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_TIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 12
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_OIR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 13
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_TIR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 14
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CDIV"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 15
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_NRT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 16
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CFU"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 17
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CFNL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 18
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CFB"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 19
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CFNR"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 20
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CFNRc"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNRc:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 21
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CFT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 22
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_ICB"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ICB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 23
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_OCB"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OCB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 24
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_BAIC"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 25
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_BAOC"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 26
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_BAOIC"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 27
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_BAOICxH"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICxH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 28
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_BAICr"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 29
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CW"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 30
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CB_ALL"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CB_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 31
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CDIV_ALL"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 32
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 33
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_BAOCr"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 34
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v1, "SSCONF_SS_TYPE_BUTT"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 7
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSConfSSType;

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNRc:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ICB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OCB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICxH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CB_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCr:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfSSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSConfSSType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSConfSSType;
    .locals 1

    .line 7
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSConfSSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSConfSSType;

    return-object v0
.end method
