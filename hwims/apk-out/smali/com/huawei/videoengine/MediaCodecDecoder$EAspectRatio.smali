.class public final enum Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;
.super Ljava/lang/Enum;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EAspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

.field public static final enum crop:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

.field public static final enum encapsulate:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

.field public static final enum none:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 710
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->none:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    const-string v1, "encapsulate"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    const-string v1, "crop"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->crop:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 709
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    sget-object v1, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->none:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->crop:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->$VALUES:[Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 709
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;
    .locals 1

    .line 709
    const-class v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;
    .locals 1

    .line 709
    sget-object v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->$VALUES:[Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    invoke-virtual {v0}, [Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    return-object v0
.end method
