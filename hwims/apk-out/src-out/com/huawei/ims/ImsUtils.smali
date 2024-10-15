.class public Lcom/huawei/ims/ImsUtils;
.super Ljava/lang/Object;
.source "ImsUtils.java"


# static fields
.field private static final CERTIFICATE_TYPE_X509:Ljava/lang/String; = "X509"

.field private static final INIT_NUMBER:I = 0x0

.field private static final INVALID_PID:I = -0x1

.field private static final LEN_BYTE_TO_HEX:I = 0x2

.field private static final MESSAGEDIGEST_ALGORITHM_SHA256:Ljava/lang/String; = "SHA256"

.field private static final TAG:Ljava/lang/String; = "ImsUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .registers 9
    .param p0, "arr"    # [B

    .line 161
    if-nez p0, :cond_4

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v3, p0

    if-ge v1, v3, :cond_4e

    .line 166
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 169
    .local v4, "len":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "hexStringTemp":Ljava/lang/String;
    goto :goto_39

    .line 171
    .end local v6    # "hexStringTemp":Ljava/lang/String;
    :cond_2f
    if-le v4, v2, :cond_38

    .line 172
    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "hexStringTemp":Ljava/lang/String;
    goto :goto_39

    .line 174
    .end local v6    # "hexStringTemp":Ljava/lang/String;
    :cond_38
    move-object v6, v3

    .line 176
    .restart local v6    # "hexStringTemp":Ljava/lang/String;
    :goto_39
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    array-length v7, p0

    sub-int/2addr v7, v5

    if-ge v1, v7, :cond_4b

    .line 178
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v4    # "len":I
    .end local v6    # "hexStringTemp":Ljava/lang/String;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 181
    .end local v1    # "i":I
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCertificateSha256Fingerprint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "processPackageName"    # Ljava/lang/String;

    .line 88
    const-string v0, ""

    if-nez p0, :cond_5

    .line 89
    return-object v0

    .line 91
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 92
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_c

    .line 93
    return-object v0

    .line 95
    :cond_c
    const-string v2, "ImsUtils"

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_17

    goto :goto_4d

    .line 100
    :cond_17
    const/4 v3, 0x0

    .line 102
    .local v3, "hexString":Ljava/lang/String;
    :try_start_18
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_45

    .line 103
    const/high16 v4, 0x8000000

    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 104
    .local v4, "localPackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_2c

    .line 105
    const-string v5, "getRawSignature: get package info failed."

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v0

    .line 108
    :cond_2c
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v5}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    .line 109
    .local v5, "signatures":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_44

    array-length v6, v5

    if-gtz v6, :cond_38

    goto :goto_44

    .line 112
    :cond_38
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 113
    .local v0, "certs":[B
    invoke-static {v0}, Lcom/huawei/ims/ImsUtils;->getSha256FingerData([B)Ljava/lang/String;

    move-result-object v2
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_43} :catch_46

    return-object v2

    .line 110
    .end local v0    # "certs":[B
    :cond_44
    :goto_44
    return-object v0

    .line 117
    .end local v4    # "localPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "signatures":[Landroid/content/pm/Signature;
    :cond_45
    goto :goto_4c

    .line 115
    :catch_46
    move-exception v0

    .line 116
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "getRawSignature: package name is not found."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4c
    return-object v3

    .line 96
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_4d
    :goto_4d
    const-string v3, "getRawSignature: invalid package name."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v0
.end method

.method public static getPidByPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    if-eqz p0, :cond_3d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3d

    .line 61
    :cond_a
    const/4 v1, -0x1

    .line 62
    .local v1, "pid":I
    const/4 v2, 0x0

    .line 63
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "activityService":Ljava/lang/Object;
    instance-of v4, v3, Landroid/app/ActivityManager;

    if-eqz v4, :cond_3c

    .line 65
    move-object v0, v3

    check-cast v0, Landroid/app/ActivityManager;

    .line 69
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_3b

    .line 71
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 73
    iget v4, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v4

    .line 75
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3a
    goto :goto_23

    .line 77
    :cond_3b
    return v1

    .line 67
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .local v2, "activityManager":Landroid/app/ActivityManager;
    :cond_3c
    return v0

    .line 59
    .end local v1    # "pid":I
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "activityService":Ljava/lang/Object;
    :cond_3d
    :goto_3d
    return v0
.end method

.method private static getSha256FingerData([B)Ljava/lang/String;
    .registers 11
    .param p0, "cert"    # [B

    .line 124
    const-string v0, "getSha256FingerData: close input IOException."

    const-string v1, "ImsUtils"

    const/4 v2, 0x0

    .line 125
    .local v2, "hexString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 127
    .local v3, "input":Ljava/io/InputStream;
    :try_start_6
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v4

    .line 128
    const-string v4, "X509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 129
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 130
    .local v5, "certificate":Ljava/security/cert/Certificate;
    instance-of v6, v5, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_31

    .line 131
    move-object v6, v5

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 132
    .local v6, "x509Cert":Ljava/security/cert/X509Certificate;
    const-string v7, "SHA256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 133
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 134
    .local v8, "publicKeys":[B
    invoke-static {v8}, Lcom/huawei/ims/ImsUtils;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 135
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "publicKeys":[B
    goto :goto_36

    .line 136
    .end local v6    # "x509Cert":Ljava/security/cert/X509Certificate;
    :cond_31
    const-string v6, "getSha256FingerData: generate certificate error."

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_36} :catch_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_36} :catch_42
    .catchall {:try_start_6 .. :try_end_36} :catchall_40

    .line 143
    .end local v5    # "certificate":Ljava/security/cert/Certificate;
    :goto_36
    nop

    .line 145
    :try_start_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 148
    goto :goto_61

    .line 146
    :catch_3b
    move-exception v5

    .line 147
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_61

    .line 143
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    :catchall_40
    move-exception v4

    goto :goto_62

    .line 140
    :catch_42
    move-exception v4

    .line 141
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_43
    const-string v5, "getSha256FingerData: NoSuchAlgorithmException."

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_40

    .line 143
    nop

    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz v3, :cond_61

    .line 145
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 148
    :goto_4e
    goto :goto_61

    .line 146
    :catch_4f
    move-exception v4

    .line 147
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_61

    .line 138
    :catch_54
    move-exception v4

    .line 139
    .local v4, "e":Ljava/security/cert/CertificateException;
    :try_start_55
    const-string v5, "getSha256FingerData: CertificateException."

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_40

    .line 143
    nop

    .end local v4    # "e":Ljava/security/cert/CertificateException;
    if-eqz v3, :cond_61

    .line 145
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_4f

    goto :goto_4e

    .line 151
    :cond_61
    :goto_61
    return-object v2

    .line 143
    :goto_62
    if-eqz v3, :cond_6c

    .line 145
    :try_start_64
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 148
    goto :goto_6c

    .line 146
    :catch_68
    move-exception v5

    .line 147
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6c
    :goto_6c
    throw v4
.end method
