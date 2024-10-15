.class final enum Lcom/huawei/ims/GbaAuth$GbaStatus;
.super Ljava/lang/Enum;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GbaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/GbaAuth$GbaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 415
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const/4 v1, 0x0

    const-string v2, "GBA_NULL"

    invoke-direct {v0, v2, v1}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 420
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const/4 v2, 0x1

    const-string v3, "GBA_BOOTSTRAP"

    invoke-direct {v0, v3, v2}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 425
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const/4 v3, 0x2

    const-string v4, "GBA_BP_UPDATE"

    invoke-direct {v0, v4, v3}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 430
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const/4 v4, 0x3

    const-string v5, "GBA_DERIVATION"

    invoke-direct {v0, v5, v4}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 435
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const/4 v5, 0x4

    const-string v6, "GBA_DONE"

    invoke-direct {v0, v6, v5}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 411
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/ims/GbaAuth$GbaStatus;

    sget-object v6, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v6, v0, v1

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->$VALUES:[Lcom/huawei/ims/GbaAuth$GbaStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/GbaAuth$GbaStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 411
    const-class v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/GbaAuth$GbaStatus;
    .registers 1

    .line 411
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->$VALUES:[Lcom/huawei/ims/GbaAuth$GbaStatus;

    invoke-virtual {v0}, [Lcom/huawei/ims/GbaAuth$GbaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/GbaAuth$GbaStatus;

    return-object v0
.end method
