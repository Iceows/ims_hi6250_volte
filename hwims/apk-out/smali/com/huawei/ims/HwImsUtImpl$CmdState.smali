.class public final enum Lcom/huawei/ims/HwImsUtImpl$CmdState;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/HwImsUtImpl$CmdState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 425
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string v1, "CMD_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 426
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string v1, "CMD_HANDLE_UT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 427
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string v1, "CMD_HANDLE_WAIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 428
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string v1, "CMD_HANDLE_CS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 429
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string v1, "CMD_FINISH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 424
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$CmdState;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$CmdState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 424
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$CmdState;
    .locals 1

    .line 424
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsUtImpl$CmdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsUtImpl$CmdState;

    return-object v0
.end method
