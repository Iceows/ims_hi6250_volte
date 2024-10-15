.class public final enum Lcom/huawei/sci/SciSSConf$SSConfOpType;
.super Ljava/lang/Enum;
.source "SciSSConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSConfOpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/sci/SciSSConf$SSConfOpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/sci/SciSSConf$SSConfOpType;

.field public static final enum SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

.field public static final enum SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 60
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;

    const/4 v1, 0x0

    const-string v2, "SSCONF_OP_TYPE_GET"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    .line 61
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;

    const/4 v2, 0x1

    const-string v3, "SSCONF_OP_TYPE_PUT"

    invoke-direct {v0, v3, v2, v2}, Lcom/huawei/sci/SciSSConf$SSConfOpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSConfOpType;

    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfOpType;

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

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->number:I

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSConfOpType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 59
    const-class v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSConfOpType;
    .registers 1

    .line 59
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSConfOpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSConfOpType;

    return-object v0
.end method


# virtual methods
.method public toNumber()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->number:I

    return v0
.end method
