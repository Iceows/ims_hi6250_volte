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

.field public static final enum SSCONF_SS_TYPE_ACR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAICR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAOCR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BAOICXH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CB_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CDIV:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

.field public static final enum SSCONF_SS_TYPE_CFNRC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

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


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 19
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/4 v1, 0x0

    const-string v2, "SSCONF_SS_TYPE_ALL"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 20
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/4 v2, 0x1

    const-string v3, "SSCONF_SS_TYPE_OIP"

    invoke-direct {v0, v3, v2, v2}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 21
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/4 v3, 0x2

    const-string v4, "SSCONF_SS_TYPE_TIP"

    invoke-direct {v0, v4, v3, v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 22
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/4 v4, 0x3

    const-string v5, "SSCONF_SS_TYPE_OIR"

    invoke-direct {v0, v5, v4, v4}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 23
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/4 v5, 0x4

    const-string v6, "SSCONF_SS_TYPE_TIR"

    invoke-direct {v0, v6, v5, v5}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 24
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/4 v6, 0x5

    const-string v7, "SSCONF_SS_TYPE_CDIV"

    invoke-direct {v0, v7, v6, v6}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 25
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/4 v7, 0x6

    const-string v8, "SSCONF_SS_TYPE_NRT"

    invoke-direct {v0, v8, v7, v7}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 26
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/4 v8, 0x7

    const-string v9, "SSCONF_SS_TYPE_CFU"

    invoke-direct {v0, v9, v8, v8}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 27
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v9, 0x8

    const-string v10, "SSCONF_SS_TYPE_CFNL"

    invoke-direct {v0, v10, v9, v9}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 28
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v10, 0x9

    const-string v11, "SSCONF_SS_TYPE_CFB"

    invoke-direct {v0, v11, v10, v10}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 29
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v11, 0xa

    const-string v12, "SSCONF_SS_TYPE_CFNR"

    invoke-direct {v0, v12, v11, v11}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 30
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v12, 0xb

    const-string v13, "SSCONF_SS_TYPE_CFNRC"

    invoke-direct {v0, v13, v12, v12}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNRC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 31
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v13, 0xc

    const-string v14, "SSCONF_SS_TYPE_CFT"

    invoke-direct {v0, v14, v13, v13}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 32
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v14, 0xd

    const-string v15, "SSCONF_SS_TYPE_ICB"

    invoke-direct {v0, v15, v14, v14}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ICB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 33
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v15, 0xe

    const-string v14, "SSCONF_SS_TYPE_OCB"

    invoke-direct {v0, v14, v15, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OCB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 34
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v14, "SSCONF_SS_TYPE_BAIC"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 35
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_BAOC"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 36
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_BAOIC"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 37
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_BAOICXH"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICXH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 38
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_BAICR"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 39
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_CW"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 40
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_CB_ALL"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CB_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 41
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_CDIV_ALL"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 42
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 43
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_BAOCR"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 44
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_ACR"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ACR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 45
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const-string v13, "SSCONF_SS_TYPE_BUTT"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15}, Lcom/huawei/sci/SciSSConf$SSConfSSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 18
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSConfSSType;

    sget-object v13, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNRC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

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

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICXH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

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

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ACR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfSSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->number:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSConfSSType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSConfSSType;
    .registers 1

    .line 18
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSConfSSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSConfSSType;

    return-object v0
.end method


# virtual methods
.method public toNumber()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->number:I

    return v0
.end method
