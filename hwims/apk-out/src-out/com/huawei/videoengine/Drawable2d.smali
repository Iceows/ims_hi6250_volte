.class public Lcom/huawei/videoengine/Drawable2d;
.super Ljava/lang/Object;
.source "Drawable2d.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/Drawable2d$Prefab;
    }
.end annotation


# static fields
.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_COORDS:[F

.field private static final RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_TEX_COORDS:[F

.field private static final SIZEOF_FLOAT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "hme_engine_java"

.field private static final TRIANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_COORDS:[F

.field private static final TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_TEX_COORDS:[F


# instance fields
.field private mCoordsPerVertex:I

.field private mPrefab:Lcom/huawei/videoengine/Drawable2d$Prefab;

.field private mTexCoordArray:Ljava/nio/FloatBuffer;

.field private mTexCoordStride:I

.field private mVertexArray:Ljava/nio/FloatBuffer;

.field private mVertexCount:I

.field private mVertexStride:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_5e

    sput-object v1, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_COORDS:[F

    .line 20
    new-array v0, v0, [F

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_TEX_COORDS:[F

    .line 25
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_COORDS:[F

    .line 26
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 27
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_TEX_COORDS:[F

    .line 28
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 36
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_7e

    sput-object v1, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_COORDS:[F

    .line 42
    new-array v1, v0, [F

    fill-array-data v1, :array_92

    sput-object v1, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_TEX_COORDS:[F

    .line 48
    sget-object v1, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_COORDS:[F

    .line 49
    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 50
    sget-object v1, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_TEX_COORDS:[F

    .line 51
    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 60
    new-array v1, v0, [F

    fill-array-data v1, :array_a6

    sput-object v1, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    .line 66
    new-array v0, v0, [F

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 72
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    .line 73
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 74
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 75
    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 74
    return-void

    :array_5e
    .array-data 4
        0x0
        0x3f13cd3a
        -0x41000000    # -0.5f
        -0x416c32c6
        0x3f000000    # 0.5f
        -0x416c32c6
    .end array-data

    :array_6e
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7e
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_92
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a6
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_ba
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/huawei/videoengine/Drawable2d$Prefab;)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/huawei/videoengine/Drawable2d$1;->$SwitchMap$com$huawei$videoengine$Drawable2d$Prefab:[I

    invoke-virtual {p1}, Lcom/huawei/videoengine/Drawable2d$Prefab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_59

    if-eq v0, v2, :cond_42

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawable2d fail!! Unknown shape"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hme_engine_java"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 115
    :cond_2b
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 116
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 117
    iput v2, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    .line 118
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v1, v0, 0x4

    iput v1, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexStride:I

    .line 119
    sget-object v1, Lcom/huawei/videoengine/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    array-length v1, v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexCount:I

    .line 120
    goto :goto_70

    .line 108
    :cond_42
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 109
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 110
    iput v2, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    .line 111
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v1, v0, 0x4

    iput v1, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexStride:I

    .line 112
    sget-object v1, Lcom/huawei/videoengine/Drawable2d;->RECTANGLE_COORDS:[F

    array-length v1, v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexCount:I

    .line 113
    goto :goto_70

    .line 101
    :cond_59
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 102
    sget-object v0, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 103
    iput v2, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    .line 104
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v1, v0, 0x4

    iput v1, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexStride:I

    .line 105
    sget-object v1, Lcom/huawei/videoengine/Drawable2d;->TRIANGLE_COORDS:[F

    array-length v1, v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexCount:I

    .line 106
    nop

    .line 125
    :goto_70
    const/16 v0, 0x8

    iput v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordStride:I

    .line 126
    iput-object p1, p0, Lcom/huawei/videoengine/Drawable2d;->mPrefab:Lcom/huawei/videoengine/Drawable2d$Prefab;

    .line 127
    return-void
.end method


# virtual methods
.method public getCoordsPerVertex()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mCoordsPerVertex:I

    return v0
.end method

.method public getTexCoordArray()Ljava/nio/FloatBuffer;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTexCoordStride()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mTexCoordStride:I

    return v0
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertexCount()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexCount:I

    return v0
.end method

.method public getVertexStride()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/huawei/videoengine/Drawable2d;->mVertexStride:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/huawei/videoengine/Drawable2d;->mPrefab:Lcom/huawei/videoengine/Drawable2d$Prefab;

    if-eqz v0, :cond_1d

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Drawable2d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/videoengine/Drawable2d;->mPrefab:Lcom/huawei/videoengine/Drawable2d$Prefab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1d
    const-string v0, "[Drawable2d: ...]"

    return-object v0
.end method
