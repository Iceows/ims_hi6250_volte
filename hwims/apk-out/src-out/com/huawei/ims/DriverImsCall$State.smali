.class public final enum Lcom/huawei/ims/DriverImsCall$State;
.super Ljava/lang/Enum;
.source "DriverImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/DriverImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/DriverImsCall$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/DriverImsCall$State;

.field public static final enum ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

.field public static final enum ALERTING:Lcom/huawei/ims/DriverImsCall$State;

.field public static final enum DIALING:Lcom/huawei/ims/DriverImsCall$State;

.field public static final enum END:Lcom/huawei/ims/DriverImsCall$State;

.field public static final enum HOLDING:Lcom/huawei/ims/DriverImsCall$State;

.field public static final enum INCOMING:Lcom/huawei/ims/DriverImsCall$State;

.field public static final enum WAITING:Lcom/huawei/ims/DriverImsCall$State;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 49
    new-instance v0, Lcom/huawei/ims/DriverImsCall$State;

    const/4 v1, 0x0

    const-string v2, "ACTIVE"

    invoke-direct {v0, v2, v1}, Lcom/huawei/ims/DriverImsCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    .line 54
    new-instance v0, Lcom/huawei/ims/DriverImsCall$State;

    const/4 v2, 0x1

    const-string v3, "HOLDING"

    invoke-direct {v0, v3, v2}, Lcom/huawei/ims/DriverImsCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    .line 59
    new-instance v0, Lcom/huawei/ims/DriverImsCall$State;

    const/4 v3, 0x2

    const-string v4, "DIALING"

    invoke-direct {v0, v4, v3}, Lcom/huawei/ims/DriverImsCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    .line 64
    new-instance v0, Lcom/huawei/ims/DriverImsCall$State;

    const/4 v4, 0x3

    const-string v5, "ALERTING"

    invoke-direct {v0, v5, v4}, Lcom/huawei/ims/DriverImsCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    .line 69
    new-instance v0, Lcom/huawei/ims/DriverImsCall$State;

    const/4 v5, 0x4

    const-string v6, "INCOMING"

    invoke-direct {v0, v6, v5}, Lcom/huawei/ims/DriverImsCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    .line 74
    new-instance v0, Lcom/huawei/ims/DriverImsCall$State;

    const/4 v6, 0x5

    const-string v7, "WAITING"

    invoke-direct {v0, v7, v6}, Lcom/huawei/ims/DriverImsCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    .line 79
    new-instance v0, Lcom/huawei/ims/DriverImsCall$State;

    const/4 v7, 0x6

    const-string v8, "END"

    invoke-direct {v0, v8, v7}, Lcom/huawei/ims/DriverImsCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/huawei/ims/DriverImsCall$State;

    sget-object v8, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    aput-object v8, v0, v1

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/ims/DriverImsCall$State;->$VALUES:[Lcom/huawei/ims/DriverImsCall$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/DriverImsCall$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/huawei/ims/DriverImsCall$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/DriverImsCall$State;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/DriverImsCall$State;
    .registers 1

    .line 45
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->$VALUES:[Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v0}, [Lcom/huawei/ims/DriverImsCall$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/DriverImsCall$State;

    return-object v0
.end method
