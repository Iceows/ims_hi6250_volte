.class public Lcom/huawei/videoengine/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# static fields
.field private static final SIZEOF_FLOAT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "hme_engine_java_OpenGL"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cameraTextureRotate([FI)V
    .locals 10

    .line 196
    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/16 v3, 0x5a

    if-ne p1, v3, :cond_0

    .line 197
    const/4 v5, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 198
    invoke-static {p0, v0, v2, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 199
    :cond_0
    const/16 v3, 0xb4

    if-ne p1, v3, :cond_1

    .line 200
    const/4 v5, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 201
    invoke-static {p0, v0, v1, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 202
    :cond_1
    const/16 v3, 0x10e

    if-ne p1, v3, :cond_2

    .line 203
    const/4 v5, 0x0

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 204
    invoke-static {p0, v0, v1, v2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 206
    :cond_2
    const-string p0, "hme_engine_java_OpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotate a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", invaild"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 100
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    const-string v0, "hme_engine_java_OpenGL"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 2

    .line 115
    if-gez p0, :cond_0

    .line 117
    const-string p0, "hme_engine_java_OpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in program"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 162
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 166
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-object v0
.end method

.method public static createImageTexture(Ljava/nio/ByteBuffer;III)I
    .locals 11

    .line 131
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 134
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 135
    aget v0, v1, v2

    .line 136
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 139
    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 143
    const/16 v2, 0x2601

    const/16 v3, 0x2801

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 145
    const/16 v3, 0x2800

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 147
    const-string v1, "loadImageTexture"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 150
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1401

    move v4, p3

    move v5, p1

    move v6, p2

    move v8, p3

    move-object v10, p0

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 152
    const-string p0, "loadImageTexture"

    invoke-static {p0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 154
    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 45
    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/huawei/videoengine/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result p0

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/huawei/videoengine/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    return v0

    .line 54
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 55
    const-string v2, "glCreateProgram"

    invoke-static {v2}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 56
    if-nez v1, :cond_2

    .line 57
    const-string v2, "hme_engine_java_OpenGL"

    const-string v3, "Could not create program"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 60
    const-string p0, "glAttachShader"

    invoke-static {p0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 61
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 62
    const-string p0, "glAttachShader"

    invoke-static {p0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 63
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 64
    const/4 p0, 0x1

    new-array p1, p0, [I

    .line 65
    const v2, 0x8b82

    invoke-static {v1, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 66
    aget p1, p1, v0

    if-eq p1, p0, :cond_3

    .line 67
    const-string p0, "hme_engine_java_OpenGL"

    const-string p1, "Could not link program: "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string p0, "hme_engine_java_OpenGL"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public static getIDENTITY_MATRIX()[F
    .locals 2

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 29
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 30
    return-object v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

    .line 81
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 83
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 84
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 85
    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 86
    const/4 v1, 0x0

    const v2, 0x8b81

    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 87
    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 88
    const-string p1, "hme_engine_java_OpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string p0, "hme_engine_java_OpenGL"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 91
    nop

    .line 93
    move v0, v1

    :cond_0
    return v0
.end method

.method public static logVersionInfo()V
    .locals 3

    .line 174
    const-string v0, "hme_engine_java_OpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f00

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "hme_engine_java_OpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "hme_engine_java_OpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method
