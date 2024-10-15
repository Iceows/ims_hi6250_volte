.class public final enum Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
.super Ljava/lang/Enum;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallWaitingSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

.field public static final enum CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

.field public static final enum CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

.field public static final enum CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 870
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    const/4 v1, 0x0

    const-string v2, "CALL_WAITING_FROM_UT"

    invoke-direct {v0, v2, v1}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    .line 874
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    const/4 v2, 0x1

    const-string v3, "CALL_WAITING_FROM_CS"

    invoke-direct {v0, v3, v2}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    .line 878
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    const/4 v3, 0x2

    const-string v4, "CALL_WAITING_FROM_LOCAL"

    invoke-direct {v0, v4, v3}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    .line 866
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    aput-object v4, v0, v1

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->$VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 866
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 866
    const-class v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
    .registers 1

    .line 866
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->$VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    return-object v0
.end method
