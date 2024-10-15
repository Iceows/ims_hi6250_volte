.class final enum Lcom/huawei/ims/GbaAuth$KsNafState;
.super Ljava/lang/Enum;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KsNafState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/GbaAuth$KsNafState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/GbaAuth$KsNafState;

.field public static final enum KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KsNafState;

.field public static final enum KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KsNafState;

.field public static final enum KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KsNafState;

.field public static final enum KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KsNafState;


# instance fields
.field final mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 240
    new-instance v0, Lcom/huawei/ims/GbaAuth$KsNafState;

    const/4 v1, 0x0

    const-string v2, "KSNAF_VALID"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/ims/GbaAuth$KsNafState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KsNafState;

    .line 245
    new-instance v0, Lcom/huawei/ims/GbaAuth$KsNafState;

    const/4 v2, 0x1

    const-string v3, "KSNAF_INVALID_AND_NEED_DERIVATION"

    invoke-direct {v0, v3, v2, v2}, Lcom/huawei/ims/GbaAuth$KsNafState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KsNafState;

    .line 250
    new-instance v0, Lcom/huawei/ims/GbaAuth$KsNafState;

    const/4 v3, 0x2

    const-string v4, "KSNAF_INVALID_AND_NEED_BOOTSTRAP"

    invoke-direct {v0, v4, v3, v3}, Lcom/huawei/ims/GbaAuth$KsNafState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KsNafState;

    .line 255
    new-instance v0, Lcom/huawei/ims/GbaAuth$KsNafState;

    const/4 v4, 0x3

    const-string v5, "KSNAF_INVALID_AND_IS_COMPUTING"

    invoke-direct {v0, v5, v4, v4}, Lcom/huawei/ims/GbaAuth$KsNafState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KsNafState;

    .line 236
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/ims/GbaAuth$KsNafState;

    sget-object v5, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KsNafState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KsNafState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KsNafState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KsNafState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/GbaAuth$KsNafState;->$VALUES:[Lcom/huawei/ims/GbaAuth$KsNafState;

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

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 260
    iput p3, p0, Lcom/huawei/ims/GbaAuth$KsNafState;->mState:I

    .line 261
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/GbaAuth$KsNafState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 236
    const-class v0, Lcom/huawei/ims/GbaAuth$KsNafState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$KsNafState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/GbaAuth$KsNafState;
    .registers 1

    .line 236
    sget-object v0, Lcom/huawei/ims/GbaAuth$KsNafState;->$VALUES:[Lcom/huawei/ims/GbaAuth$KsNafState;

    invoke-virtual {v0}, [Lcom/huawei/ims/GbaAuth$KsNafState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/GbaAuth$KsNafState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 264
    iget v0, p0, Lcom/huawei/ims/GbaAuth$KsNafState;->mState:I

    return v0
.end method
