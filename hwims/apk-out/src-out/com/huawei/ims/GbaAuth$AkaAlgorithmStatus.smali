.class final enum Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;
.super Ljava/lang/Enum;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AkaAlgorithmStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

.field public static final enum AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

.field public static final enum AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

.field public static final enum AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;


# instance fields
.field final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 208
    new-instance v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    const/4 v1, 0x0

    const-string v2, "AKA_ALGORITHM_SUCCESS"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    .line 213
    new-instance v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    const/4 v2, 0x1

    const-string v3, "AKA_ALGORITHM_SYNC_FAILURE"

    invoke-direct {v0, v3, v2, v2}, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    .line 218
    new-instance v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    const/4 v3, 0x2

    const-string v4, "AKA_ALGORITHM_FAILURE"

    invoke-direct {v0, v4, v3, v3}, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    .line 204
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    sget-object v4, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->$VALUES:[Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

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

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 223
    iput p3, p0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->mStatus:I

    .line 224
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 204
    const-class v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;
    .registers 1

    .line 204
    sget-object v0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->$VALUES:[Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    invoke-virtual {v0}, [Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 227
    iget v0, p0, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->mStatus:I

    return v0
.end method
