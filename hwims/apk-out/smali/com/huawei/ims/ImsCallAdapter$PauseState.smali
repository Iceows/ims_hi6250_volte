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
    .locals 5

    .line 48
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/ImsCallAdapter$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    const-string v1, "PAUSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/ImsCallAdapter$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    const-string v1, "RESUME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/ImsCallAdapter$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->$VALUES:[Lcom/huawei/ims/ImsCallAdapter$PauseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/ImsCallAdapter$PauseState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/ImsCallAdapter$PauseState;
    .locals 1

    .line 47
    sget-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->$VALUES:[Lcom/huawei/ims/ImsCallAdapter$PauseState;

    invoke-virtual {v0}, [Lcom/huawei/ims/ImsCallAdapter$PauseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/ImsCallAdapter$PauseState;

    return-object v0
.end method
