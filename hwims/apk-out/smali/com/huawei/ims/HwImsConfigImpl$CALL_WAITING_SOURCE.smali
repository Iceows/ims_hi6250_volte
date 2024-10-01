.class public final enum Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
.super Ljava/lang/Enum;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALL_WAITING_SOURCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

.field public static final enum CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

.field public static final enum CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

.field public static final enum CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 422
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    const-string v1, "CALL_WAITING_FROM_UT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 423
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    const-string v1, "CALL_WAITING_FROM_CS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 424
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    const-string v1, "CALL_WAITING_FROM_LOCAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    .line 421
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->$VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 421
    const-class v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    .locals 1

    .line 421
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->$VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    return-object v0
.end method
