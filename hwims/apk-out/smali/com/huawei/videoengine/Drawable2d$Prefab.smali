.class public final enum Lcom/huawei/videoengine/Drawable2d$Prefab;
.super Ljava/lang/Enum;
.source "Drawable2d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/Drawable2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Prefab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/videoengine/Drawable2d$Prefab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/videoengine/Drawable2d$Prefab;

.field public static final enum FULL_RECTANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

.field public static final enum RECTANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

.field public static final enum TRIANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 90
    new-instance v0, Lcom/huawei/videoengine/Drawable2d$Prefab;

    const-string v1, "TRIANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/Drawable2d$Prefab;->TRIANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

    new-instance v0, Lcom/huawei/videoengine/Drawable2d$Prefab;

    const-string v1, "RECTANGLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/videoengine/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/Drawable2d$Prefab;->RECTANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

    new-instance v0, Lcom/huawei/videoengine/Drawable2d$Prefab;

    const-string v1, "FULL_RECTANGLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/videoengine/Drawable2d$Prefab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/videoengine/Drawable2d$Prefab;

    sget-object v1, Lcom/huawei/videoengine/Drawable2d$Prefab;->TRIANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/videoengine/Drawable2d$Prefab;->RECTANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/videoengine/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/videoengine/Drawable2d$Prefab;->$VALUES:[Lcom/huawei/videoengine/Drawable2d$Prefab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/videoengine/Drawable2d$Prefab;
    .locals 1

    .line 89
    const-class v0, Lcom/huawei/videoengine/Drawable2d$Prefab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/videoengine/Drawable2d$Prefab;

    return-object p0
.end method

.method public static values()[Lcom/huawei/videoengine/Drawable2d$Prefab;
    .locals 1

    .line 89
    sget-object v0, Lcom/huawei/videoengine/Drawable2d$Prefab;->$VALUES:[Lcom/huawei/videoengine/Drawable2d$Prefab;

    invoke-virtual {v0}, [Lcom/huawei/videoengine/Drawable2d$Prefab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/videoengine/Drawable2d$Prefab;

    return-object v0
.end method
