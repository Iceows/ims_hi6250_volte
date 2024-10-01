.class public final enum Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;
.super Ljava/lang/Enum;
.source "SciSSConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSCONFResetLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

.field public static final enum EN_CAAS_SSCONF_RESET_LEVEL_ALL:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

.field public static final enum EN_CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

.field public static final enum EN_CAAS_SSCONF_RESET_LEVEL_INVALID:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    const-string v1, "EN_CAAS_SSCONF_RESET_LEVEL_BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    .line 70
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    const-string v1, "EN_CAAS_SSCONF_RESET_LEVEL_ALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_ALL:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    .line 71
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    const-string v1, "EN_CAAS_SSCONF_RESET_LEVEL_INVALID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_INVALID:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_ALL:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->EN_CAAS_SSCONF_RESET_LEVEL_INVALID:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const-class v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;
    .locals 1

    .line 67
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    return-object v0
.end method
