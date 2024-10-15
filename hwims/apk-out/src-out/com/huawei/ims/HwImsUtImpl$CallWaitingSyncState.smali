.class public final enum Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallWaitingSyncState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

.field public static final enum CALL_WAITING_SYNC_TO_CS:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

.field public static final enum CALL_WAITING_SYNC_TO_IMS_SDK:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

.field public static final enum CALL_WAITING_SYNC_UNKNOWN:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 881
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    const/4 v1, 0x0

    const-string v2, "CALL_WAITING_SYNC_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->CALL_WAITING_SYNC_UNKNOWN:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    .line 886
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    const/4 v2, 0x1

    const-string v3, "CALL_WAITING_SYNC_TO_IMS_SDK"

    invoke-direct {v0, v3, v2, v2}, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->CALL_WAITING_SYNC_TO_IMS_SDK:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    .line 891
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    const/4 v3, 0x2

    const-string v4, "CALL_WAITING_SYNC_TO_CS"

    invoke-direct {v0, v4, v3, v3}, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->CALL_WAITING_SYNC_TO_CS:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    .line 877
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->CALL_WAITING_SYNC_UNKNOWN:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->CALL_WAITING_SYNC_TO_IMS_SDK:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->CALL_WAITING_SYNC_TO_CS:Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

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

    .line 895
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 896
    iput p3, p0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->nativeInt:I

    .line 897
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 877
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;
    .registers 1

    .line 877
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 905
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;->nativeInt:I

    return v0
.end method
