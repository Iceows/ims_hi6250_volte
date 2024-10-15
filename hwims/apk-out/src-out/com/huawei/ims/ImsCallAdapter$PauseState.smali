.class final enum Lcom/huawei/ims/ImsCallAdapter$PauseState;
.super Ljava/lang/Enum;
.source "ImsCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PauseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/ImsCallAdapter$PauseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/ImsCallAdapter$PauseState;

.field public static final enum NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

.field public static final enum PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

.field public static final enum RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 105
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/huawei/ims/ImsCallAdapter$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 110
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    const/4 v2, 0x1

    const-string v3, "PAUSE"

    invoke-direct {v0, v3, v2}, Lcom/huawei/ims/ImsCallAdapter$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 115
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    const/4 v3, 0x2

    const-string v4, "RESUME"

    invoke-direct {v0, v4, v3}, Lcom/huawei/ims/ImsCallAdapter$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v4, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->$VALUES:[Lcom/huawei/ims/ImsCallAdapter$PauseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/ImsCallAdapter$PauseState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 101
    const-class v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/ImsCallAdapter$PauseState;
    .registers 1

    .line 101
    sget-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->$VALUES:[Lcom/huawei/ims/ImsCallAdapter$PauseState;

    invoke-virtual {v0}, [Lcom/huawei/ims/ImsCallAdapter$PauseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/ImsCallAdapter$PauseState;

    return-object v0
.end method
