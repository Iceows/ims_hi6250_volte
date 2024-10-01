.class public Lcom/huawei/videoengine/Texture2dProgram;
.super Ljava/lang/Object;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final FRAGMENT_SHADER_EXT_BW:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

.field private static final FRAGMENT_SHADER_EXT_FILT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n"

.field public static final KERNEL_SIZE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "hme_engine_java_OpenGL"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mColorAdjust:F

.field private mKernel:[F

.field private mProgramHandle:I

.field private mProgramType:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

.field private mTexOffset:[F

.field private mTextureTarget:I

.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muColorAdjustLoc:I

.field private muKernelLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I

.field private muTexOffsetLoc:I


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mKernel:[F

    .line 122
    iput-object p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramType:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    .line 124
    sget-object v1, Lcom/huawei/videoengine/Texture2dProgram$1;->$SwitchMap$com$huawei$videoengine$Texture2dProgram$ProgramType:[I

    invoke-virtual {p1}, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x8d65

    packed-switch v1, :pswitch_data_0

    .line 143
    const-string v0, "hme_engine_java_OpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 138
    :pswitch_0
    iput v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    .line 139
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v2, "#extension GL_OES_EGL_image_external : require\n#define KERNEL_SIZE 9\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uKernel[KERNEL_SIZE];\nuniform vec2 uTexOffset[KERNEL_SIZE];\nuniform float uColorAdjust;\nvoid main() {\n    int i = 0;\n    vec4 sum = vec4(0.0);\n    if (vTextureCoord.x < vTextureCoord.y - 0.005) {\n        for (i = 0; i < KERNEL_SIZE; i++) {\n            vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);\n            sum += texc * uKernel[i];\n        }\n    sum += uColorAdjust;\n    } else if (vTextureCoord.x > vTextureCoord.y + 0.005) {\n        sum = texture2D(sTexture, vTextureCoord);\n    } else {\n        sum.r = 1.0;\n    }\n    gl_FragColor = sum;\n}\n"

    invoke-static {v1, v2}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    .line 140
    goto :goto_0

    .line 134
    :pswitch_1
    iput v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    .line 135
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, vTextureCoord);\n    float color = tc.r * 0.3 + tc.g * 0.59 + tc.b * 0.11;\n    gl_FragColor = vec4(color, color, color, 1.0);\n}\n"

    invoke-static {v1, v2}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    .line 136
    goto :goto_0

    .line 130
    :pswitch_2
    iput v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    .line 131
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v1, v2}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    .line 132
    goto :goto_0

    .line 126
    :pswitch_3
    const/16 v1, 0xde1

    iput v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    .line 127
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v2, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v1, v2}, Lcom/huawei/videoengine/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    .line 128
    nop

    .line 146
    :goto_0
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    if-nez v1, :cond_0

    .line 148
    const-string p1, "hme_engine_java_OpenGL"

    const-string v0, "Unable to create program"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 151
    :cond_0
    const-string v1, "hme_engine_java_OpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created program "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    .line 156
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    const-string v1, "aPosition"

    invoke-static {p1, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 157
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    .line 158
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    const-string v1, "aTextureCoord"

    invoke-static {p1, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 159
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muMVPMatrixLoc:I

    .line 160
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muMVPMatrixLoc:I

    const-string v1, "uMVPMatrix"

    invoke-static {p1, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 161
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string v1, "uTexMatrix"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexMatrixLoc:I

    .line 162
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexMatrixLoc:I

    const-string v1, "uTexMatrix"

    invoke-static {p1, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 163
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string v1, "uKernel"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    .line 164
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    if-gez p1, :cond_1

    .line 166
    const/4 p1, -0x1

    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    .line 167
    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexOffsetLoc:I

    .line 168
    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muColorAdjustLoc:I

    goto :goto_1

    .line 171
    :cond_1
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string v1, "uTexOffset"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexOffsetLoc:I

    .line 172
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muTexOffsetLoc:I

    const-string v1, "uTexOffset"

    invoke-static {p1, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 173
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    const-string v1, "uColorAdjust"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muColorAdjustLoc:I

    .line 174
    iget p1, p0, Lcom/huawei/videoengine/Texture2dProgram;->muColorAdjustLoc:I

    const-string v1, "uColorAdjust"

    invoke-static {p1, v1}, Lcom/huawei/videoengine/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 177
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/videoengine/Texture2dProgram;->setKernel([FF)V

    .line 178
    const/16 p1, 0x100

    invoke-virtual {p0, p1, p1}, Lcom/huawei/videoengine/Texture2dProgram;->setTexSize(II)V

    .line 180
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public createTextureObject()I
    .locals 4

    .line 211
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 212
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 213
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 215
    aget v0, v1, v2

    .line 216
    iget v1, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 219
    const v1, 0x46180400    # 9729.0f

    const v2, 0x8d65

    const/16 v3, 0x2801

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 221
    const/16 v3, 0x2800

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 223
    const v1, 0x812f

    const/16 v3, 0x2802

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 225
    const/16 v3, 0x2803

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 227
    const-string v1, "glTexParameter"

    invoke-static {v1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 229
    return v0
.end method

.method public draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V
    .locals 10

    move-object v1, p0

    .line 283
    const-string v0, "draw start"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 286
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 287
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 290
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 291
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    move/from16 v2, p9

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 294
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->muMVPMatrixLoc:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static {v0, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 295
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 298
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->muTexMatrixLoc:I

    move-object/from16 v4, p7

    invoke-static {v0, v2, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 299
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 302
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 303
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 306
    iget v4, v1, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    const/16 v6, 0x1406

    const/4 v7, 0x0

    move v5, p5

    move/from16 v8, p6

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 308
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 311
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 312
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 315
    iget v4, v1, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    const/4 v5, 0x2

    move/from16 v8, p10

    move-object/from16 v9, p8

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 317
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 320
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    if-ltz v0, :cond_0

    .line 321
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->muKernelLoc:I

    iget-object v2, v1, Lcom/huawei/videoengine/Texture2dProgram;->mKernel:[F

    const/16 v4, 0x9

    invoke-static {v0, v4, v2, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 322
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->muTexOffsetLoc:I

    iget-object v2, v1, Lcom/huawei/videoengine/Texture2dProgram;->mTexOffset:[F

    invoke-static {v0, v4, v2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 323
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->muColorAdjustLoc:I

    iget v2, v1, Lcom/huawei/videoengine/Texture2dProgram;->mColorAdjust:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 327
    :cond_0
    const/4 v0, 0x5

    move v2, p3

    move v4, p4

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 329
    :try_start_0
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v0, "hme_engine_java_OpenGL"

    const-string v2, "draw error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->maPositionLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 336
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 337
    iget v0, v1, Lcom/huawei/videoengine/Texture2dProgram;->mTextureTarget:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 338
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 339
    return-void
.end method

.method public getProgramType()Lcom/huawei/videoengine/Texture2dProgram$ProgramType;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramType:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 189
    const-string v0, "hme_engine_java_OpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting program "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mProgramHandle:I

    .line 192
    return-void
.end method

.method public setKernel([FF)V
    .locals 3

    .line 238
    array-length v0, p1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 241
    const-string p2, "hme_engine_java_OpenGL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kernel size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/Texture2dProgram;->mKernel:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iput p2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mColorAdjust:F

    .line 247
    return-void
.end method

.method public setTexSize(II)V
    .locals 5

    .line 253
    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 254
    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 257
    const/16 p2, 0x12

    new-array p2, p2, [F

    neg-float v1, p1

    const/4 v2, 0x0

    aput v1, p2, v2

    neg-float v2, v0

    const/4 v3, 0x1

    aput v2, p2, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, p2, v4

    const/4 v4, 0x3

    aput v2, p2, v4

    const/4 v4, 0x4

    aput p1, p2, v4

    const/4 v4, 0x5

    aput v2, p2, v4

    const/4 v2, 0x6

    aput v1, p2, v2

    const/4 v2, 0x7

    aput v3, p2, v2

    const/16 v2, 0x8

    aput v3, p2, v2

    const/16 v2, 0x9

    aput v3, p2, v2

    const/16 v2, 0xa

    aput p1, p2, v2

    const/16 v2, 0xb

    aput v3, p2, v2

    const/16 v2, 0xc

    aput v1, p2, v2

    const/16 v1, 0xd

    aput v0, p2, v1

    const/16 v1, 0xe

    aput v3, p2, v1

    const/16 v1, 0xf

    aput v0, p2, v1

    const/16 v1, 0x10

    aput p1, p2, v1

    const/16 p1, 0x11

    aput v0, p2, p1

    iput-object p2, p0, Lcom/huawei/videoengine/Texture2dProgram;->mTexOffset:[F

    .line 263
    return-void
.end method
