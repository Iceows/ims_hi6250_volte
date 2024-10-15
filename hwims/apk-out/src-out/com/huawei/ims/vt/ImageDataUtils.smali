.class public Lcom/huawei/ims/vt/ImageDataUtils;
.super Ljava/lang/Object;
.source "ImageDataUtils.java"


# static fields
.field public static final ENCODE_TYPE_H264:I = 0x0

.field public static final ENCODE_TYPE_H265:I = 0x1

.field private static final GROUP_PATH:Ljava/lang/String; = "photo"

.field private static final H264_FILE_NAME:Ljava/lang/String; = "photo_480_640.h264"

.field private static final H265_FILE_NAME:Ljava/lang/String; = "photo_480_640.h265"

.field public static final HME_V_IMAGE_HEIGHT:I = 0x280

.field private static final HME_V_IMAGE_UNKNOWN:I = 0x3e7

.field public static final HME_V_IMAGE_WIDTH:I = 0x1e0

.field private static final HME_V_VIDEO_H264:I = 0x190

.field private static final HME_V_VIDEO_H265:I = 0x191

.field private static final TAG:Ljava/lang/String; = "ImageDataUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static getImageDataFromAssets(Landroid/content/Context;I)[B
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encodeType"    # I

    .line 66
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 67
    new-array v0, v0, [B

    return-object v0

    .line 69
    :cond_6
    const/4 v1, 0x0

    .line 70
    .local v1, "filename":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    .line 71
    const-string v0, "photo_480_640.h265"

    .end local v1    # "filename":Ljava/lang/String;
    .local v0, "filename":Ljava/lang/String;
    goto :goto_11

    .line 72
    .end local v0    # "filename":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    :cond_d
    if-nez p1, :cond_18

    .line 73
    const-string v0, "photo_480_640.h264"

    .line 77
    .end local v1    # "filename":Ljava/lang/String;
    .restart local v0    # "filename":Ljava/lang/String;
    :goto_11
    const-string v1, "photo"

    invoke-static {p0, v1, v0}, Lcom/huawei/ims/vt/ImageDataUtils;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "filename":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    :cond_18
    new-array v0, v0, [B

    return-object v0
.end method

.method public static getVideoEncodeFormat(I)I
    .registers 2
    .param p0, "encodeType"    # I

    .line 87
    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    .line 93
    const/16 v0, 0x3e7

    return v0

    .line 89
    :cond_8
    const/16 v0, 0x191

    return v0

    .line 91
    :cond_b
    const/16 v0, 0x190

    return v0
.end method

.method private static readFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "buffer":[B
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 100
    .local v1, "am":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 102
    .local v2, "inputStream":Ljava/io/InputStream;
    const-string v3, "inputStream close IO exception"

    const-string v4, "ImageDataUtils"

    if-eqz p1, :cond_26

    .line 103
    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    goto :goto_2b

    .line 105
    :cond_26
    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 108
    :goto_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 109
    .local v5, "length":I
    new-array v6, v5, [B

    move-object v0, v6

    .line 110
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 111
    .local v6, "count":I
    if-gtz v6, :cond_45

    .line 112
    const/4 v7, 0x0

    new-array v7, v7, [B
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3b} :catch_51
    .catchall {:try_start_c .. :try_end_3b} :catchall_4f

    .line 117
    nop

    .line 119
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 122
    goto :goto_44

    .line 120
    :catch_40
    move-exception v8

    .line 121
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v8    # "e":Ljava/io/IOException;
    :goto_44
    return-object v7

    .line 117
    .end local v5    # "length":I
    .end local v6    # "count":I
    :cond_45
    nop

    .line 119
    :try_start_46
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 122
    :goto_49
    goto :goto_5e

    .line 120
    :catch_4a
    move-exception v5

    .line 121
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_49

    .line 117
    :catchall_4f
    move-exception v5

    goto :goto_5f

    .line 114
    :catch_51
    move-exception v5

    .line 115
    .local v5, "exception":Ljava/io/IOException;
    :try_start_52
    const-string v6, "readFileFromAssets IO exception"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_4f

    .line 117
    nop

    .end local v5    # "exception":Ljava/io/IOException;
    if-eqz v2, :cond_5e

    .line 119
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_4a

    goto :goto_49

    .line 125
    :cond_5e
    :goto_5e
    return-object v0

    .line 117
    :goto_5f
    if-eqz v2, :cond_69

    .line 119
    :try_start_61
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 122
    goto :goto_69

    .line 120
    :catch_65
    move-exception v6

    .line 121
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v6    # "e":Ljava/io/IOException;
    :cond_69
    :goto_69
    throw v5
.end method
