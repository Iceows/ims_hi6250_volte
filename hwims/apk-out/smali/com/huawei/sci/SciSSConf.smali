.class public Lcom/huawei/sci/SciSSConf;
.super Ljava/lang/Object;
.source "SciSSConf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;,
        Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;,
        Lcom/huawei/sci/SciSSConf$SSCONFParamType;,
        Lcom/huawei/sci/SciSSConf$SSConfOpType;,
        Lcom/huawei/sci/SciSSConf$SSConfSSType;
    }
.end annotation


# static fields
.field public static final CF_ACTION_ACTIVE:Ljava/lang/String; = "active"

.field public static final CF_ACTION_DEACTIVE:Ljava/lang/String; = "deactive"

.field public static final CF_ACTION_ERASURE:Ljava/lang/String; = "erasure"

.field public static final CF_ACTION_REGISTRATION:Ljava/lang/String; = "registration"

.field public static final INVALID_NO_REPLY_TIMER:I = -0x1

.field public static final MEDIA_AUDIO:Ljava/lang/String; = "audio"

.field public static final MEDIA_VIDEO:Ljava/lang/String; = "video"

.field public static final OIR_DEFAULT_BEHAVIOR_NOT_RESTRICTED:Ljava/lang/String; = "presentation-not-restricted"

.field public static final OIR_DEFAULT_BEHAVIOR_RESTRICTED:Ljava/lang/String; = "presentation-restricted"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 98
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "ut"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    const-string v0, "sci_ssconf"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_0
    invoke-static {}, Lcom/huawei/sci/SciSys;->getLibPath()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libut.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "str1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/libsci_ssconf.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "str2":Ljava/lang/String;
    const-string v3, "SciSSConf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v3, "SciSSConf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "str1":Ljava/lang/String;
    .end local v2    # "str2":Ljava/lang/String;
    goto :goto_1

    .line 106
    .restart local v0    # "str":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v1, "ut"

    invoke-static {v1}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 107
    const-string v1, "sci_ssconf"

    invoke-static {v1}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 120
    .end local v0    # "str":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static native continueConfWithAuth(III[B[B)I
.end method

.method public static native continueSSConfService(IIILjava/lang/String;[B)I
.end method

.method public static native destroy()I
.end method

.method public static enabledSSConf(IZ)I
    .locals 3
    .param p0, "ssType"    # I
    .param p1, "enabled"    # Z

    .line 146
    const-string v0, "true"

    .line 148
    .local v0, "activeValue":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 150
    const-string v0, "false"

    .line 153
    :cond_0
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v1

    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v2

    invoke-static {p0, v1, v2, v0}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v1

    invoke-static {p0, v1}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v1

    return v1

    .line 160
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static native getChrUtDefeatReason()I
.end method

.method public static native getChrUtFailPhaseReport()I
.end method

.method public static native getChrUtInnerErrID()I
.end method

.method public static native getChrUtSendMessageType()I
.end method

.method public static native getChrUtServiceType()I
.end method

.method public static getSSConfEnabled(I)Ljava/lang/Boolean;
    .locals 5
    .param p0, "ssType"    # I

    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 171
    .local v1, "isEnabled":Ljava/lang/Boolean;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 173
    .local v2, "strArray":[Ljava/lang/String;
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v3

    sget-object v4, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v4

    invoke-static {p0, v3, v4, v2}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(III[Ljava/lang/String;)I

    .line 176
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 179
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 182
    :cond_0
    return-object v1
.end method

.method public static native getSSConfParam(III[Ljava/lang/String;)I
.end method

.method public static getSSConfParam(II)Ljava/lang/String;
    .locals 4
    .param p0, "ssType"    # I
    .param p1, "paramType"    # I

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "paramValue":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 195
    .local v1, "strArray":[Ljava/lang/String;
    sget-object v2, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v2

    invoke-static {p0, v2, p1, v1}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(III[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 200
    aget-object v0, v1, v2

    .line 204
    :cond_0
    return-object v0
.end method

.method public static native getSSConflictPhrase([Ljava/lang/String;)I
.end method

.method public static getSSConflictPhraseText()Ljava/lang/String;
    .locals 4

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "paramValue":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 225
    .local v1, "strArray":[Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/sci/SciSSConf;->getSSConflictPhrase([Ljava/lang/String;)I

    .line 227
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 229
    aget-object v0, v1, v2

    .line 232
    :cond_0
    return-object v0
.end method

.method public static native init()I
.end method

.method public static querySSConf(I)I
    .locals 3
    .param p0, "ssType"    # I

    .line 130
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->ordinal()I

    move-result v1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v0

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static native reset(I)V
.end method

.method public static native setAuthUserName(Ljava/lang/String;)I
.end method

.method public static native setBsfAddr(Ljava/lang/String;IZ)I
.end method

.method public static native setContentType(Z)I
.end method

.method public static native setExtensionalParam(IZLjava/lang/String;)I
.end method

.method public static native setHomeDomainName(Ljava/lang/String;)I
.end method

.method public static native setHostIp([Ljava/lang/String;I)I
.end method

.method public static native setHostName(Ljava/lang/String;)I
.end method

.method public static native setLocalUserName(Ljava/lang/String;)I
.end method

.method public static native setNafAddr(Ljava/lang/String;IZ)I
.end method

.method public static native setParamsCfg(ILjava/lang/String;)I
.end method

.method public static native setSSConfParam(IIILjava/lang/String;)I
.end method

.method public static native setSupportGBAType(I)I
.end method

.method public static native setSupportNodeSelector(Z)I
.end method

.method public static native setSupportTmpi(Z)I
.end method

.method public static native setSupportXcapNamespace(Z)I
.end method

.method public static native setTmpi(Ljava/lang/String;)I
.end method

.method public static native setTrustCaPath(Ljava/lang/String;)I
.end method

.method public static native setX3gppIntendId(Ljava/lang/String;)I
.end method

.method public static native setXcapRootUri(Ljava/lang/String;)I
.end method

.method public static native startBsfAuthRequest()I
.end method

.method public static native startConf(II)I
.end method
