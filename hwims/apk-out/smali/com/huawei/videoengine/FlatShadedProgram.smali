.class public Lcom/huawei/videoengine/FlatShadedProgram;
.super Ljava/lang/Object;
.source "FlatShadedProgram.java"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;uniform vec4 uColor;void main() {    gl_FragColor = uColor;}"

.field private static final TAG:Ljava/lang/String; = "hme_engine_java_OpenGL"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;attribute vec4 aPosition;void main() {    gl_Position = uMVPMatrix * aPosition;}"


# instance fields
.field private mProgramHandle:I

.field private maPositionLoc:I

.field private muColorLoc:I

.field private muMVPMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    .line 28
    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->muColorLoc:I

    .line 29
    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->muMVPMatrixLoc:I

    .line 30
    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->maPositionLoc:I

    .line 37
    const-string v0, "uniform mat4 uMVPMatrix;attribute vec4 aPosition;void main() {    gl_Position = uMVPMatrix * aPosition;}"

    const-string v1, "precision mediump float;uniform vec4 uColor;void main() {    gl_FragColor = uColor;}"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    .line 38
    iget v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    if-nez v0, :cond_0

    .line 40
    const-string v0, "hme_engine_java_OpenGL"

    const-string v1, "Unable to create program"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 43
    :cond_0
    const-string v0, "hme_engine_java_OpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created program "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->maPositionLoc:I

    .line 48
    iget v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->maPositionLoc:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->muMVPMatrixLoc:I

    .line 50
    iget v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->muMVPMatrixLoc:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    const-string v1, "uColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->muColorLoc:I

    .line 52
    iget v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->muColorLoc:I

    const-string v1, "uColor"

    invoke-static {v0, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public draw([F[FLjava/nio/FloatBuffer;IIII)V
    .locals 10

    move-object v0, p0

    .line 77
    const-string v1, "draw start"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 80
    iget v1, v0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 81
    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 84
    iget v1, v0, Lcom/huawei/videoengine/FlatShadedProgram;->muMVPMatrixLoc:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static {v1, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 85
    const-string v1, "glUniformMatrix4fv"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 88
    iget v1, v0, Lcom/huawei/videoengine/FlatShadedProgram;->muColorLoc:I

    move-object v4, p2

    invoke-static {v1, v2, v4, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 89
    const-string v1, "glUniform4fv "

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 92
    iget v1, v0, Lcom/huawei/videoengine/FlatShadedProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 93
    const-string v1, "glEnableVertexAttribArray"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 96
    iget v4, v0, Lcom/huawei/videoengine/FlatShadedProgram;->maPositionLoc:I

    const/16 v6, 0x1406

    const/4 v7, 0x0

    move/from16 v5, p6

    move/from16 v8, p7

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 98
    const-string v1, "glVertexAttribPointer"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x5

    move v2, p4

    move v4, p5

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 102
    const-string v1, "glDrawArrays"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 105
    iget v0, v0, Lcom/huawei/videoengine/FlatShadedProgram;->maPositionLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 106
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 107
    return-void
.end method

.method public release()V
    .locals 1

    .line 59
    iget v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/videoengine/FlatShadedProgram;->mProgramHandle:I

    .line 61
    return-void
.end method
