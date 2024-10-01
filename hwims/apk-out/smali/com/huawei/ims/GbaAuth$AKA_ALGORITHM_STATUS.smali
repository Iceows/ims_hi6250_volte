.class final enum Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;
.super Ljava/lang/Enum;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AKA_ALGORITHM_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

.field public static final enum AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

.field public static final enum AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

.field public static final enum AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;


# instance fields
.field final native_int:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 94
    new-instance v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    const-string v1, "AKA_ALGORITHM_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 95
    new-instance v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    const-string v1, "AKA_ALGORITHM_SYNC_FAILURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 96
    new-instance v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    const-string v1, "AKA_ALGORITHM_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    sget-object v1, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->$VALUES:[Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->native_int:I

    .line 100
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 93
    const-class v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;
    .locals 1

    .line 93
    sget-object v0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->$VALUES:[Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    invoke-virtual {v0}, [Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->native_int:I

    return v0
.end method
