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


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const-string v1, "SSCONF_PARAM_TYPE_ATTR_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 46
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const-string v1, "SSCONF_PARAM_TYPE_FORWARD_TO_TARGET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 47
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const-string v1, "SSCONF_PARAM_TYPE_AUTH_AUTN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_AUTH_AUTN:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 48
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const-string v1, "SSCONF_PARAM_TYPE_AUTH_RAND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_AUTH_RAND:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 49
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const-string v1, "SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 50
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const-string v1, "SSCONF_PARAM_TYPE_CDIV_TIME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 51
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const-string v1, "SSCONF_PARAM_TYPE_MEDIATYPE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 53
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    const-string v1, "SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_AUTH_AUTN:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_AUTH_RAND:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSCONFParamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSCONFParamType;
    .locals 1

    .line 43
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSCONFParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    return-object v0
.end method
