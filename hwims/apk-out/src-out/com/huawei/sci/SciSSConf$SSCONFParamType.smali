.class public final enum Lcom/huawei/sci/SciSSConf$SSCONFParamType;
.super Ljava/lang/Enum;
.source "SciSSConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSCONFParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/sci/SciSSConf$SSCONFParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFParamType;

.field public static final enum SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

.field public static final enum SSCONF_PARAM_TYPE_AUTH_AUTN:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

.field public static final enum SSCONF_PARAM_TYPE_AUTH_RAND:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

.field public static final enum SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

.field public static final enum SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

.field public static final enum SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

.field public static final enum SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

.field public static final enum SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 76
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const/4 v1, 0x0

    const-string v2, "SSCONF_PARAM_TYPE_ATTR_ACTIVE"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 77
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const/4 v2, 0x1

    const-string v3, "SSCONF_PARAM_TYPE_FORWARD_TO_TARGET"

    invoke-direct {v0, v3, v2, v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 78
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const/4 v3, 0x2

    const-string v4, "SSCONF_PARAM_TYPE_AUTH_AUTN"

    invoke-direct {v0, v4, v3, v3}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_AUTH_AUTN:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 79
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const/4 v4, 0x3

    const-string v5, "SSCONF_PARAM_TYPE_AUTH_RAND"

    invoke-direct {v0, v5, v4, v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_AUTH_RAND:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 80
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const/4 v5, 0x4

    const-string v6, "SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER"

    invoke-direct {v0, v6, v5, v5}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 81
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const/4 v6, 0x5

    const-string v7, "SSCONF_PARAM_TYPE_CDIV_TIME"

    invoke-direct {v0, v7, v6, v6}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 82
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const/4 v7, 0x6

    const-string v8, "SSCONF_PARAM_TYPE_MEDIATYPE"

    invoke-direct {v0, v8, v7, v7}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 83
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const/4 v8, 0x7

    const-string v9, "SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR"

    invoke-direct {v0, v9, v8, v8}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    sget-object v9, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_AUTH_AUTN:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_AUTH_RAND:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFParamType;

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

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->number:I

    .line 89
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSCONFParamType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSCONFParamType;
    .registers 1

    .line 75
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSCONFParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    return-object v0
.end method


# virtual methods
.method public toNumber()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->number:I

    return v0
.end method
