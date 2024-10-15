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

.field public static final enum CAAS_SSCONF_RESET_LEVEL_ALL:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

.field public static final enum CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

.field public static final enum CAAS_SSCONF_RESET_LEVEL_INVALID:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 117
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    const/4 v1, 0x0

    const-string v2, "CAAS_SSCONF_RESET_LEVEL_BASE"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    .line 123
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    const/4 v2, 0x1

    const-string v3, "CAAS_SSCONF_RESET_LEVEL_ALL"

    invoke-direct {v0, v3, v2, v2}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->CAAS_SSCONF_RESET_LEVEL_ALL:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    .line 124
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    const/4 v3, 0x2

    const-string v4, "CAAS_SSCONF_RESET_LEVEL_INVALID"

    invoke-direct {v0, v4, v3, v3}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->CAAS_SSCONF_RESET_LEVEL_INVALID:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    sget-object v4, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    aput-object v4, v0, v1

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->CAAS_SSCONF_RESET_LEVEL_ALL:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->CAAS_SSCONF_RESET_LEVEL_INVALID:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

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

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->number:I

    .line 130
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 115
    const-class v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;
    .registers 1

    .line 115
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    return-object v0
.end method


# virtual methods
.method public toNumber()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->number:I

    return v0
.end method
