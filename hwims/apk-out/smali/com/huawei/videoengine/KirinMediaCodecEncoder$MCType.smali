.class final enum Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;
.super Ljava/lang/Enum;
.source "KirinMediaCodecEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/KirinMediaCodecEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MCType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

.field public static final enum eData:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

.field public static final enum eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    const-string v1, "eData"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eData:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    new-instance v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    const-string v1, "eSurface"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    sget-object v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eData:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->$VALUES:[Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;
    .locals 1

    .line 77
    const-class v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    return-object p0
.end method

.method public static values()[Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;
    .locals 1

    .line 77
    sget-object v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->$VALUES:[Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    invoke-virtual {v0}, [Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    return-object v0
.end method
