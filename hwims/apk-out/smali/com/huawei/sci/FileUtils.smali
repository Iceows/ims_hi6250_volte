.class public Lcom/huawei/sci/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static fileUtil:Lcom/huawei/sci/FileUtils; = null

.field public static final mZipPath:Ljava/lang/String; = "/mnt/sdcard/log.zip"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/FileUtils;->fileUtil:Lcom/huawei/sci/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetDir"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;

    .line 191
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 197
    .local v0, "files":[Ljava/lang/String;
    nop

    .line 199
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, "mWorkingPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    const-string v2, "FileUtils:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creat dir failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 210
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_9

    .line 211
    const/4 v4, 0x0

    .line 212
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 214
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    aget-object v6, v0, v3

    .line 216
    .local v6, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v7, "outFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 218
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    .line 219
    .local v8, "isDel":Z
    if-nez v8, :cond_1

    .line 220
    const-string v9, "FileUtils:"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete file failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v8    # "isDel":Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v5, v8

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v5, v8

    .line 226
    :goto_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v8

    .line 230
    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 232
    .local v8, "buf":[B
    :goto_2
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "len":I
    if-lez v9, :cond_3

    .line 234
    invoke-virtual {v4, v8, v2, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 243
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "outFile":Ljava/io/File;
    .end local v8    # "buf":[B
    .end local v10    # "len":I
    :cond_3
    nop

    .line 244
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 245
    :catch_0
    move-exception v6

    .line 246
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "output file close exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 247
    :goto_3
    nop

    .line 249
    :goto_4
    if-eqz v5, :cond_6

    .line 250
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_a

    .line 251
    :catch_1
    move-exception v6

    .line 252
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_9

    .line 242
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto/16 :goto_c

    .line 239
    :catch_2
    move-exception v6

    .line 240
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File read or write exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 244
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 245
    :catch_3
    move-exception v6

    .line 246
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "output file close exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 247
    :cond_4
    :goto_5
    nop

    .line 249
    :goto_6
    if-eqz v5, :cond_6

    .line 250
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    .line 251
    :catch_4
    move-exception v6

    .line 252
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9

    .line 237
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 238
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File open exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 243
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_5

    .line 244
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    .line 245
    :catch_6
    move-exception v6

    .line 246
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "output file close exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 247
    :cond_5
    :goto_7
    nop

    .line 249
    :goto_8
    if-eqz v5, :cond_6

    .line 250
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    .line 251
    :catch_7
    move-exception v6

    .line 252
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_9
    const-string v9, "input file close exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 253
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_6
    :goto_a
    nop

    .line 210
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 242
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :goto_c
    nop

    .line 243
    if-eqz v4, :cond_7

    .line 244
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_d

    .line 245
    :catch_8
    move-exception v6

    .line 246
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v7, "FileUtils:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "output file close exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_e

    .line 247
    :cond_7
    :goto_d
    nop

    .line 249
    :goto_e
    if-eqz v5, :cond_8

    .line 250
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_f

    .line 251
    :catch_9
    move-exception v6

    .line 252
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "input file close exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FileUtils:"

    invoke-static {v8, v7}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/io/IOException;
    nop

    .line 253
    :cond_8
    :goto_f
    throw v2

    .line 256
    .end local v3    # "i":I
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_9
    return-void

    .line 194
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "mWorkingPath":Ljava/io/File;
    :catch_a
    move-exception v0

    .line 196
    .local v0, "e1":Ljava/io/IOException;
    return-void
.end method

.method public static createDir(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "fullDir"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 48
    .local v1, "isSucceed":Z
    if-nez v1, :cond_0

    .line 49
    const-string v2, "FileUtils:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create  dir failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1    # "isSucceed":Z
    :cond_0
    const-string v1, "FileUtils:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create  dir successful. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/sci/SciLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method public static createLogDirInSDCard()V
    .locals 6

    .line 292
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mnt/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hrslog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "fileDirectory":Ljava/lang/String;
    const-string v1, "km"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileDirectory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "filepath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 303
    .local v2, "isSucceed":Z
    if-nez v2, :cond_0

    .line 304
    const-string v3, "FileUtils:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creat  dir failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v0    # "fileDirectory":Ljava/lang/String;
    .end local v1    # "filepath":Ljava/io/File;
    .end local v2    # "isSucceed":Z
    :cond_0
    nop

    .line 311
    return-void

    .line 309
    :cond_1
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p0, "deleteDir"    # Ljava/io/File;

    .line 67
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "childrenFile":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 74
    return v0

    .line 76
    :cond_1
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 78
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/huawei/sci/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 79
    .local v3, "success":Z
    if-nez v3, :cond_2

    .line 81
    return v0

    .line 76
    .end local v3    # "success":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "childrenFile":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 88
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FileUtils:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDir failed, error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return v0
.end method

.method public static existThenRenameFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "fileName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 326
    .local v2, "pointPosition":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v4, v2, :cond_1

    .line 328
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "filePrefix":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "filePostfix":Ljava/lang/String;
    nop

    .line 331
    .local v3, "count":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 337
    .end local v3    # "count":I
    .end local v4    # "filePrefix":Ljava/lang/String;
    .end local v5    # "filePostfix":Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 340
    :cond_1
    move-object v4, v1

    .line 341
    .restart local v4    # "filePrefix":Ljava/lang/String;
    nop

    .line 342
    .restart local v3    # "count":I
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_1

    .line 349
    .end local v3    # "count":I
    .end local v4    # "filePrefix":Ljava/lang/String;
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAppPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mcontext"    # Landroid/content/Context;

    .line 355
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 356
    const-string v1, "FileUtils"

    const-string v2, "null == mcontext"

    invoke-static {v1, v2}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-object v0

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 361
    const-string v1, "FileUtils"

    const-string v2, "null == mcontext.getFilesDir()"

    invoke-static {v1, v2}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-object v0

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "fileDir":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 367
    const-string v2, "FileUtils"

    const-string v3, "getgetAppPath null == fileDir"

    invoke-static {v2, v3}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-object v0

    .line 371
    :cond_2
    const-string v0, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getgetAppPath fileDir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/sci/SciLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 374
    const/4 v0, 0x0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 377
    :cond_3
    return-object v1
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .line 412
    const-wide/16 v0, 0x0

    .line 413
    .local v0, "size":J
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    const/4 v3, 0x0

    .line 419
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 420
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v4

    .line 426
    nop

    .line 427
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 428
    :catch_0
    move-exception v4

    .line 429
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .end local v3    # "fis":Ljava/io/FileInputStream;
    :goto_0
    const-string v7, "getFileSize input file close exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 430
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    goto :goto_2

    .line 425
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 422
    :catch_1
    move-exception v4

    .line 423
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileSize failed, error message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 427
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 428
    :catch_2
    move-exception v4

    .line 429
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 432
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    goto :goto_5

    .line 425
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_3
    nop

    .line 426
    if-eqz v3, :cond_1

    .line 427
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 428
    :catch_3
    move-exception v5

    .line 429
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileSize input file close exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FileUtils"

    invoke-static {v7, v6}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 430
    :cond_1
    :goto_4
    throw v4

    .line 435
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFileSize file not exists, filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :goto_5
    return-wide v0
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/sci/FileUtils;
    .locals 3

    const-class v0, Lcom/huawei/sci/FileUtils;

    monitor-enter v0

    .line 102
    :try_start_0
    const-string v1, "FileUtils"

    const-string v2, "getInstance enter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/huawei/sci/FileUtils;->fileUtil:Lcom/huawei/sci/FileUtils;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/huawei/sci/FileUtils;

    invoke-direct {v1}, Lcom/huawei/sci/FileUtils;-><init>()V

    sput-object v1, Lcom/huawei/sci/FileUtils;->fileUtil:Lcom/huawei/sci/FileUtils;

    .line 109
    :cond_0
    sget-object v1, Lcom/huawei/sci/FileUtils;->fileUtil:Lcom/huawei/sci/FileUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLoginedUserList(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "mcontext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v0, "userArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/huawei/sci/FileUtils;->getAppPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "pcWorkPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "CONF_PATH":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 389
    .local v4, "listFiles":[Ljava/io/File;
    if-nez v4, :cond_0

    .line 390
    const-string v5, "FileUtils"

    const-string v6, "getLoginedUserList null == listFiles"

    invoke-static {v5, v6}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-object v0

    .line 394
    :cond_0
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLoginedUserList CONF_PATH = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/sci/SciLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    move-object v5, v4

    .local v5, "arr$":[Ljava/io/File;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 398
    .local v8, "fileTemp":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "userName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 402
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v10, "FileUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getLoginedUserList userName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/sci/SciLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v8    # "fileTemp":Ljava/io/File;
    .end local v9    # "userName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 407
    .end local v5    # "arr$":[Ljava/io/File;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_2
    return-object v0
.end method

.method public static getNewFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "path"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    const-string v0, "FileUtils"

    const-string v1, "getNewFile(File path, String name) enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 145
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 146
    .local v2, "last":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 148
    add-int/lit8 v3, v2, -0x30

    add-int/lit8 v3, v3, 0x1

    .line 149
    .local v3, "suffix":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/huawei/sci/FileUtils;->getNewFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 150
    .end local v3    # "suffix":I
    goto :goto_0

    .line 153
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/huawei/sci/FileUtils;->getNewFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 156
    .end local v1    # "length":I
    .end local v2    # "last":C
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getNewFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    const-string v0, "FileUtils"

    const-string v1, "getNewFile(String path, String name) enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/huawei/sci/FileUtils;->getNewFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isHasSDCard()Z
    .locals 2

    .line 168
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getFileInStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .line 280
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 285
    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "FileUtils:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileInStream failed, error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-object v0
.end method
