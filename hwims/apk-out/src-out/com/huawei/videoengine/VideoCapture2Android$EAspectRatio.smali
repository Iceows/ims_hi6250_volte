.class public final enum Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
.super Ljava/lang/Enum;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCapture2Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EAspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field public static final enum crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field public static final enum encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field public static final enum none:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1260
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->none:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    const/4 v2, 0x1

    const-string v3, "crop"

    invoke-direct {v0, v3, v2}, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    const/4 v3, 0x2

    const-string v4, "encapsulate"

    invoke-direct {v0, v4, v3}, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1259
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    sget-object v4, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->none:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    aput-object v4, v0, v1

    sget-object v1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->$VALUES:[Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .registers 2

    .line 1259
    const-class v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .registers 1

    .line 1259
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->$VALUES:[Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    invoke-virtual {v0}, [Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object v0
.end method
