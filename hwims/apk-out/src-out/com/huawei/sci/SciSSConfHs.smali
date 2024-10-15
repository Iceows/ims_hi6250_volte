.class public Lcom/huawei/sci/SciSSConfHs;
.super Ljava/lang/Object;
.source "SciSSConfHs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;,
        Lcom/huawei/sci/SciSSConfHs$CallDiversionActionType;,
        Lcom/huawei/sci/SciSSConfHs$OIRDefaultBehaviorType;,
        Lcom/huawei/sci/SciSSConfHs$ParamCfgType;,
        Lcom/huawei/sci/SciSSConfHs$GbaType;,
        Lcom/huawei/sci/SciSSConfHs$CallBarringCondition;,
        Lcom/huawei/sci/SciSSConfHs$CallForwardReason;
    }
.end annotation


# static fields
.field public static final CHR_UT_ERROR_MOUDLE_NULL:I = 0x0

.field public static final CHR_UT_ERROR_MOUDLE_UT:I = 0x1

.field public static final CHR_UT_ERROR_OP_TYPE_GET:I = 0x0

.field public static final CHR_UT_ERROR_OP_TYPE_PUT:I = 0x1

.field public static final CHR_UT_ERROR_PHASE_RECV_BSF_RETURN_200:I = 0x6

.field public static final CHR_UT_ERROR_PHASE_RECV_BSF_RETURN_401:I = 0x4

.field public static final CHR_UT_ERROR_PHASE_RECV_NAF_401_BEFORE_GBA:I = 0x2

.field public static final CHR_UT_ERROR_PHASE_RECV_NAF_RETURN_200_AFTER_GBA:I = 0xa

.field public static final CHR_UT_ERROR_PHASE_RECV_NAF_RETURN_401_AFTER_GBA:I = 0x8

.field public static final CHR_UT_ERROR_PHASE_SEND_BSF_GET_WITHOUT_AUTH:I = 0x3

.field public static final CHR_UT_ERROR_PHASE_SEND_BSF_GET_WITH_AUTH:I = 0x5

.field public static final CHR_UT_ERROR_PHASE_SEND_NAF_WITHOUT_AUTH_AFTER_GBA:I = 0x7

.field public static final CHR_UT_ERROR_PHASE_SEND_NAF_WITHOUT_AUTH_BEFORE_GBA:I = 0x1

.field public static final CHR_UT_ERROR_PHASE_SEND_NAF_WITH_AUTH_AFTER_GBA:I = 0x9

.field public static final CHR_UT_ERROR_PHASE_UNKNOWN:I = 0x0

.field public static final CHR_UT_ERROR_REASON_304_NOT_MDFY:I = 0x19

.field public static final CHR_UT_ERROR_REASON_400_BAD_REQ:I = 0x15

.field public static final CHR_UT_ERROR_REASON_403_FORBIDDEN:I = 0x16

.field public static final CHR_UT_ERROR_REASON_404_NOT_FOUND:I = 0x1a

.field public static final CHR_UT_ERROR_REASON_409_CONFLICT:I = 0x1b

.field public static final CHR_UT_ERROR_REASON_412_PRECOND_FAIL:I = 0x17

.field public static final CHR_UT_ERROR_REASON_503_SRV_UNAVAIL:I = 0x18

.field public static final CHR_UT_ERROR_REASON_6XX_SERV_ERR:I = 0x1c

.field public static final CHR_UT_ERROR_REASON_ADD_CHILD_SERVICE_NODE:I = 0x1e

.field public static final CHR_UT_ERROR_REASON_AUTH_FAILED:I = 0xf

.field public static final CHR_UT_ERROR_REASON_AUTH_TRY_TIMES_OVER:I = 0x20

.field public static final CHR_UT_ERROR_REASON_BSF_AUTH_RESULT_SYN_SQN:I = 0x10

.field public static final CHR_UT_ERROR_REASON_BSF_DNS_REQUEST:I = 0x5

.field public static final CHR_UT_ERROR_REASON_BSF_DNS_RESPONSE:I = 0x6

.field public static final CHR_UT_ERROR_REASON_BSF_HTTP_OPEN_FAIL:I = 0x1d

.field public static final CHR_UT_ERROR_REASON_BSF_TCP_LINK_CONN:I = 0x8

.field public static final CHR_UT_ERROR_REASON_BSF_TCP_LINK_OPEN:I = 0x7

.field public static final CHR_UT_ERROR_REASON_CONN_TIMEOUT:I = 0xa

.field public static final CHR_UT_ERROR_REASON_HEADER_ANALYSIS_FAIL:I = 0x14

.field public static final CHR_UT_ERROR_REASON_IN_REQING:I = 0xe

.field public static final CHR_UT_ERROR_REASON_MAKE_XML_BODY_FAIL:I = 0x1f

.field public static final CHR_UT_ERROR_REASON_NAF_DNS_REQUEST:I = 0x2

.field public static final CHR_UT_ERROR_REASON_NAF_DNS_RESPONSE:I = 0x3

.field public static final CHR_UT_ERROR_REASON_NAF_TCP_LINK_BUILD:I = 0x4

.field public static final CHR_UT_ERROR_REASON_NORMAL:I = 0x0

.field public static final CHR_UT_ERROR_REASON_OTHER_ERROR_CODE:I = 0x9

.field public static final CHR_UT_ERROR_REASON_SEND_FAIL:I = 0xc

.field public static final CHR_UT_ERROR_REASON_SERV_DISCED:I = 0xb

.field public static final CHR_UT_ERROR_REASON_SOCKET_ERR:I = 0x1

.field public static final CHR_UT_ERROR_REASON_UNAUTHOR_GBA:I = 0x11

.field public static final CHR_UT_ERROR_REASON_UNAUTHOR_GBA_UICC:I = 0x12

.field public static final CHR_UT_ERROR_REASON_WAIT_RSP_TIMEOUT:I = 0xd

.field public static final CHR_UT_ERROR_REASON_XML_ANALYSIS_FAIL:I = 0x13

.field public static final CHR_UT_ERROR_TYPE_ALL:I = 0x0

.field public static final CHR_UT_ERROR_TYPE_BAIC:I = 0xf

.field public static final CHR_UT_ERROR_TYPE_BAICR:I = 0x13

.field public static final CHR_UT_ERROR_TYPE_BAOC:I = 0x10

.field public static final CHR_UT_ERROR_TYPE_BAOIC:I = 0x11

.field public static final CHR_UT_ERROR_TYPE_BAOICXH:I = 0x12

.field public static final CHR_UT_ERROR_TYPE_CB_ALL:I = 0x15

.field public static final CHR_UT_ERROR_TYPE_CDIV:I = 0x5

.field public static final CHR_UT_ERROR_TYPE_CDIV_ALL:I = 0x16

.field public static final CHR_UT_ERROR_TYPE_CDIV_ALL_COND:I = 0x17

.field public static final CHR_UT_ERROR_TYPE_CFB:I = 0x9

.field public static final CHR_UT_ERROR_TYPE_CFNL:I = 0x8

.field public static final CHR_UT_ERROR_TYPE_CFNR:I = 0xa

.field public static final CHR_UT_ERROR_TYPE_CFNRC:I = 0xb

.field public static final CHR_UT_ERROR_TYPE_CFT:I = 0xc

.field public static final CHR_UT_ERROR_TYPE_CFU:I = 0x7

.field public static final CHR_UT_ERROR_TYPE_CW:I = 0x14

.field public static final CHR_UT_ERROR_TYPE_ICB:I = 0xd

.field public static final CHR_UT_ERROR_TYPE_NRT:I = 0x6

.field public static final CHR_UT_ERROR_TYPE_OCB:I = 0xe

.field public static final CHR_UT_ERROR_TYPE_OIP:I = 0x1

.field public static final CHR_UT_ERROR_TYPE_OIR:I = 0x3

.field public static final CHR_UT_ERROR_TYPE_TIP:I = 0x2

.field public static final CHR_UT_ERROR_TYPE_TIR:I = 0x4

.field private static final GET_SSTYPE_FAILED:I = -0x1

.field private static final MAX_TIME_NUMBER:I = 0x2

.field private static final MEDIA_TYPE_AUDIO:I = 0x1

.field private static final MEDIA_TYPE_NONE:I = 0x0

.field private static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static chrUtCallBack:Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

.field private static isInitLibPath:Z

.field private static isInitSystem:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 384
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z

    .line 386
    sput-boolean v0, Lcom/huawei/sci/SciSSConfHs;->isInitLibPath:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized destroy()V
    .registers 3

    const-class v0, Lcom/huawei/sci/SciSSConfHs;

    monitor-enter v0

    .line 451
    :try_start_3
    const-string v1, "SciSSConfHs"

    const-string v2, "Start to stop service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->destroy()I

    .line 453
    invoke-static {}, Lcom/huawei/sci/SciSys;->destory()V

    .line 454
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/sci/SciSSConfHs;->isInitLibPath:Z

    .line 455
    sput-boolean v1, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 456
    monitor-exit v0

    return-void

    .line 450
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getCFActionTypeString(I)Ljava/lang/String;
    .registers 3
    .param p0, "cfActionType"    # I

    .line 1361
    const/4 v0, 0x0

    .line 1363
    .local v0, "cfActionTypeVal":Ljava/lang/String;
    if-eqz p0, :cond_17

    const/4 v1, 0x1

    if-eq p0, v1, :cond_14

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    .line 1377
    const/4 v1, 0x0

    return-object v1

    .line 1374
    :cond_e
    const-string v0, "erasure"

    .line 1375
    goto :goto_1a

    .line 1371
    :cond_11
    const-string v0, "registration"

    .line 1372
    goto :goto_1a

    .line 1368
    :cond_14
    const-string v0, "active"

    .line 1369
    goto :goto_1a

    .line 1365
    :cond_17
    const-string v0, "deactive"

    .line 1366
    nop

    .line 1380
    :goto_1a
    return-object v0
.end method

.method public static getCallBarringEnable(I)Ljava/lang/Boolean;
    .registers 3
    .param p0, "callBarringCondition"    # I

    .line 1256
    packed-switch p0, :pswitch_data_40

    .line 1279
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1276
    :pswitch_9
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ACR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 1277
    .local v0, "ssType":I
    goto :goto_3a

    .line 1273
    .end local v0    # "ssType":I
    :pswitch_10
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 1274
    .restart local v0    # "ssType":I
    goto :goto_3a

    .line 1261
    .end local v0    # "ssType":I
    :pswitch_17
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 1262
    .restart local v0    # "ssType":I
    goto :goto_3a

    .line 1270
    .end local v0    # "ssType":I
    :pswitch_1e
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICXH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 1271
    .restart local v0    # "ssType":I
    goto :goto_3a

    .line 1267
    .end local v0    # "ssType":I
    :pswitch_25
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 1268
    .restart local v0    # "ssType":I
    goto :goto_3a

    .line 1264
    .end local v0    # "ssType":I
    :pswitch_2c
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 1265
    .restart local v0    # "ssType":I
    goto :goto_3a

    .line 1258
    .end local v0    # "ssType":I
    :pswitch_33
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 1259
    .restart local v0    # "ssType":I
    nop

    .line 1282
    :goto_3a
    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2c
        :pswitch_25
        :pswitch_1e
        :pswitch_17
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method

.method public static getCallDiversionEnable(I)Ljava/lang/Boolean;
    .registers 4
    .param p0, "callForwardReason"    # I

    .line 775
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->getSsTypeFromCallForwardReason(I)I

    move-result v0

    .line 777
    .local v0, "getSsTypeResult":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 778
    move v1, v0

    .line 783
    .local v1, "ssType":I
    invoke-static {v1}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 780
    .end local v1    # "ssType":I
    :cond_d
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getCallDiversionNoReplyTimer()Ljava/lang/String;
    .registers 2

    .line 994
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 995
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v1

    .line 994
    invoke-static {v0, v1}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallForwardTargetNumber(I)Ljava/lang/String;
    .registers 7
    .param p0, "callForwardReason"    # I

    .line 795
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->getSsTypeFromCallForwardReason(I)I

    move-result v0

    .line 797
    .local v0, "getSsTypeResult":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    .line 798
    move v1, v0

    .line 803
    .local v1, "ssType":I
    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 804
    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v2

    .line 803
    invoke-static {v1, v2}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, "targetNumber":Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 807
    const-string v3, "(?i)(sip|tel):(\\+?[0123456789abc*#]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 808
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 809
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 810
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 814
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_29
    return-object v2

    .line 800
    .end local v1    # "ssType":I
    .end local v2    # "targetNumber":Ljava/lang/String;
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCallForwardTime()[Ljava/util/Date;
    .registers 10

    .line 857
    const/4 v0, 0x0

    .line 859
    .local v0, "dateArray":[Ljava/util/Date;
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 860
    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v2

    .line 859
    invoke-static {v1, v2}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "timeQuantum":Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 864
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "strArray":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    const-string v5, "SciSSConfHs"

    const/4 v6, 0x2

    if-eq v3, v6, :cond_39

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The time quantum is error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-object v4

    .line 870
    :cond_39
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 871
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-array v0, v6, [Ljava/util/Date;

    .line 873
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    array-length v7, v2

    if-ge v6, v7, :cond_6c

    .line 875
    :try_start_46
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 876
    .local v7, "date":Ljava/util/Date;
    aput-object v7, v0, v6
    :try_end_52
    .catch Ljava/text/ParseException; {:try_start_46 .. :try_end_52} :catch_56

    .line 880
    .end local v7    # "date":Ljava/util/Date;
    nop

    .line 873
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 877
    :catch_56
    move-exception v7

    .line 878
    .local v7, "e":Ljava/text/ParseException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parse time failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-object v4

    .line 884
    .end local v2    # "strArray":[Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "i":I
    .end local v7    # "e":Ljava/text/ParseException;
    :cond_6c
    return-object v0
.end method

.method public static getCallWaitingEnabled()Ljava/lang/Boolean;
    .registers 1

    .line 1421
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaType(I)I
    .registers 4
    .param p0, "ssType"    # I

    .line 1451
    const-string v0, ""

    .line 1453
    .local v0, "mediaType":Ljava/lang/String;
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1454
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1455
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1456
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNRC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1457
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1458
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1459
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1460
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1461
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1462
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1463
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICXH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1464
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1465
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1466
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ACR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 1467
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p0, v1, :cond_7c

    .line 1468
    return v2

    .line 1471
    :cond_7c
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v1

    invoke-static {p0, v1}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v0

    .line 1473
    if-nez v0, :cond_89

    .line 1474
    return v2

    .line 1475
    :cond_89
    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1476
    const/4 v1, 0x1

    return v1

    .line 1477
    :cond_93
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1478
    const/4 v1, 0x2

    return v1

    .line 1481
    :cond_9d
    const-string v1, "MEDIA_TYPE is "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return v2
.end method

.method private static getMediaTypeString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mediaType"    # I

    .line 1390
    const/4 v0, 0x0

    .line 1392
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p0, v1, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_9

    .line 1400
    const/4 v1, 0x0

    return-object v1

    .line 1397
    :cond_9
    const-string v0, "video"

    .line 1398
    goto :goto_f

    .line 1394
    :cond_c
    const-string v0, "audio"

    .line 1395
    nop

    .line 1403
    :goto_f
    return-object v0
.end method

.method private static getOIRDefaulBehaviorType(I)Ljava/lang/String;
    .registers 3
    .param p0, "defaultBehaviorType"    # I

    .line 1129
    const/4 v0, 0x0

    .line 1131
    .local v0, "defaultBehaviorValue":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p0, v1, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a

    .line 1139
    const-string v0, "presentation-not-restricted"

    goto :goto_10

    .line 1136
    :cond_a
    const-string v0, "presentation-restricted"

    .line 1137
    goto :goto_10

    .line 1133
    :cond_d
    const-string v0, "presentation-not-restricted"

    .line 1134
    nop

    .line 1143
    :goto_10
    return-object v0
.end method

.method public static getOIRDefaultBehavior()I
    .registers 4

    .line 1096
    const/4 v0, 0x0

    .line 1097
    .local v0, "ssType":I
    const/4 v1, 0x0

    .line 1098
    .local v1, "defaultBehaviorValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1100
    .local v2, "oirEnable":Ljava/lang/String;
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 1102
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v3

    invoke-static {v0, v3}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v2

    .line 1104
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 1105
    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v3

    .line 1104
    invoke-static {v0, v3}, Lcom/huawei/sci/SciSSConf;->getSSConfParam(II)Ljava/lang/String;

    move-result-object v1

    .line 1107
    if-nez v2, :cond_21

    .line 1108
    const/4 v3, 0x3

    return v3

    .line 1111
    :cond_21
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1112
    const-string v3, "presentation-not-restricted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1113
    const/4 v3, 0x1

    return v3

    .line 1115
    :cond_31
    const/4 v3, 0x2

    return v3

    .line 1118
    :cond_33
    const/4 v3, 0x0

    return v3
.end method

.method public static getOriginatingIdentityPresentationEnabled()Ljava/lang/Boolean;
    .registers 1

    .line 1031
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginatingIdentityRestrictionEnabled()Ljava/lang/Boolean;
    .registers 1

    .line 1087
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getSsTypeFromCallForwardReason(I)I
    .registers 2
    .param p0, "callForwardReason"    # I

    .line 820
    packed-switch p0, :pswitch_data_38

    .line 845
    const/4 v0, -0x1

    return v0

    .line 841
    :pswitch_5
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 842
    .local v0, "ssType":I
    goto :goto_36

    .line 838
    .end local v0    # "ssType":I
    :pswitch_c
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 839
    .restart local v0    # "ssType":I
    goto :goto_36

    .line 831
    .end local v0    # "ssType":I
    :pswitch_13
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNRC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 832
    .restart local v0    # "ssType":I
    goto :goto_36

    .line 828
    .end local v0    # "ssType":I
    :pswitch_1a
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 829
    .restart local v0    # "ssType":I
    goto :goto_36

    .line 822
    .end local v0    # "ssType":I
    :pswitch_21
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 823
    .restart local v0    # "ssType":I
    goto :goto_36

    .line 825
    .end local v0    # "ssType":I
    :pswitch_28
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 826
    .restart local v0    # "ssType":I
    goto :goto_36

    .line 835
    .end local v0    # "ssType":I
    :pswitch_2f
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    .line 836
    .restart local v0    # "ssType":I
    nop

    .line 848
    :goto_36
    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_2f
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method

.method public static getTerminatingIdentityPresentationEnabled()Ljava/lang/Boolean;
    .registers 1

    .line 1059
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getTerminatingIdentityRestrictionEnabled()Ljava/lang/Boolean;
    .registers 1

    .line 1216
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->getSSConfEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isWriteLog"    # Z

    const-class v0, Lcom/huawei/sci/SciSSConfHs;

    monitor-enter v0

    .line 406
    :try_start_3
    sget-boolean v1, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z

    if-nez v1, :cond_80

    .line 407
    new-instance v1, Lcom/huawei/sci/SciLogCfg;

    invoke-direct {v1}, Lcom/huawei/sci/SciLogCfg;-><init>()V

    .line 408
    .local v1, "logCfg":Lcom/huawei/sci/SciLogCfg;
    const-wide/16 v2, 0x14

    iput-wide v2, v1, Lcom/huawei/sci/SciLogCfg;->fileCount:J

    .line 409
    const-wide/32 v2, 0x7d000

    iput-wide v2, v1, Lcom/huawei/sci/SciLogCfg;->fileSize:J

    .line 410
    const-string v2, ""

    iput-object v2, v1, Lcom/huawei/sci/SciLogCfg;->fileName:Ljava/lang/String;

    .line 411
    const-string v2, ""

    iput-object v2, v1, Lcom/huawei/sci/SciLogCfg;->filePath:Ljava/lang/String;

    .line 412
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/huawei/sci/SciLogCfg;->closeCache:Z

    .line 414
    const-string v3, "SciSSConfHs"

    const-string v4, "Start init ut service."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v3, "SciSSConfHs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWriteLog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz p1, :cond_46

    .line 418
    const-string v3, "SciSSConfHs"

    const-string v4, "init: Write log."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_46
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v4, "arm64-v8a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 422
    sget-boolean v3, Lcom/huawei/sci/SciSSConfHs;->isInitLibPath:Z

    if-nez v3, :cond_59

    .line 423
    const-string v3, "/system/app/HwIms/lib/arm"

    invoke-static {v3}, Lcom/huawei/sci/SciSSConfHs;->setLibPath(Ljava/lang/String;)I

    .line 427
    :cond_59
    const-string v3, "SciSSConfHs"

    const-string v4, "Start init sdk."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-wide/16 v3, -0x3599

    .line 431
    .local v3, "compMask":J
    const-string v5, "1.0"

    invoke-static {p0, v5, v1, v3, v4}, Lcom/huawei/sci/SciSys;->init(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I

    .line 433
    invoke-static {}, Lcom/huawei/sci/SciDefaultTls;->load()I

    .line 435
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->init()I

    move-result v5

    if-eqz v5, :cond_79

    .line 436
    const-string v5, "SciSSConfHs"

    const-string v6, "Init ut failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_83

    .line 437
    monitor-exit v0

    return v2

    .line 440
    :cond_79
    :try_start_79
    const-string v5, "/system/etc/security/cacerts"

    invoke-static {v5}, Lcom/huawei/sci/SciSSConfHs;->setTrustCaPath(Ljava/lang/String;)I

    .line 441
    sput-boolean v2, Lcom/huawei/sci/SciSSConfHs;->isInitSystem:Z
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_83

    .line 444
    .end local v1    # "logCfg":Lcom/huawei/sci/SciLogCfg;
    .end local v3    # "compMask":J
    :cond_80
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 405
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "isWriteLog":Z
    :catchall_83
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSupportNodeSelector(Z)I
    .registers 2
    .param p0, "isSupport"    # Z

    .line 559
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setSupportNodeSelector(Z)I

    move-result v0

    return v0
.end method

.method public static queryAll()I
    .registers 1

    .line 754
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryCallDiversion()I
    .registers 1

    .line 763
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryCallWaiting()I
    .registers 1

    .line 1412
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryIncomingCallBarring()I
    .registers 1

    .line 1235
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ICB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryOriginatingIdentityPresentation()I
    .registers 1

    .line 1022
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryOriginatingIdentityRestriction()I
    .registers 1

    .line 1078
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryOutgoingCallBarring()I
    .registers 1

    .line 1244
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OCB:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryTerminatingIdentityPresentation()I
    .registers 1

    .line 1050
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static queryTerminatingIdentityRestriction()I
    .registers 1

    .line 1207
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->querySSConf(I)I

    move-result v0

    return v0
.end method

.method public static reset(I)I
    .registers 2
    .param p0, "level"    # I

    .line 1504
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->reset(I)V

    .line 1505
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->CAAS_SSCONF_RESET_LEVEL_ALL:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->toNumber()I

    move-result v0

    if-ne v0, p0, :cond_10

    .line 1506
    const-string v0, "/system/etc/security/cacerts"

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->setTrustCaPath(Ljava/lang/String;)I

    .line 1509
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static reset()V
    .registers 1

    .line 1494
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->CAAS_SSCONF_RESET_LEVEL_BASE:Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSCONFResetLevel;->toNumber()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 1495
    return-void
.end method

.method public static setAuthUserName(Ljava/lang/String;)I
    .registers 2
    .param p0, "authUserName"    # Ljava/lang/String;

    .line 709
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 710
    const/4 v0, 0x1

    return v0

    .line 713
    :cond_8
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setImpi(Ljava/lang/String;)V

    .line 715
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setAuthUserName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setBsfAddr(Ljava/lang/String;IZ)I
    .registers 4
    .param p0, "srvAddr"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "isUseHttps"    # Z

    .line 631
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-gtz p1, :cond_9

    goto :goto_e

    .line 635
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConf;->setBsfAddr(Ljava/lang/String;IZ)I

    move-result v0

    return v0

    .line 632
    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public static setCallBarring(IZ)I
    .registers 3
    .param p0, "callBarringCondition"    # I
    .param p1, "isEnable"    # Z

    .line 1293
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/sci/SciSSConfHs;->setCallBarring(IZI)I

    move-result v0

    return v0
.end method

.method public static setCallBarring(IZI)I
    .registers 10
    .param p0, "callBarringCondition"    # I
    .param p1, "isEnable"    # Z
    .param p2, "mediaType"    # I

    .line 1306
    const/4 v0, 0x0

    .line 1307
    .local v0, "cbMediaType":Ljava/lang/String;
    const-string v1, "true"

    .line 1309
    .local v1, "activeValue":Ljava/lang/String;
    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_76

    .line 1332
    return v2

    .line 1329
    :pswitch_8
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_ACR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v3

    .line 1330
    .local v3, "ssType":I
    goto :goto_39

    .line 1326
    .end local v3    # "ssType":I
    :pswitch_f
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOCR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v3

    .line 1327
    .restart local v3    # "ssType":I
    goto :goto_39

    .line 1314
    .end local v3    # "ssType":I
    :pswitch_16
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAICR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v3

    .line 1315
    .restart local v3    # "ssType":I
    goto :goto_39

    .line 1323
    .end local v3    # "ssType":I
    :pswitch_1d
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOICXH:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v3

    .line 1324
    .restart local v3    # "ssType":I
    goto :goto_39

    .line 1320
    .end local v3    # "ssType":I
    :pswitch_24
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v3

    .line 1321
    .restart local v3    # "ssType":I
    goto :goto_39

    .line 1317
    .end local v3    # "ssType":I
    :pswitch_2b
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAOC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v3

    .line 1318
    .restart local v3    # "ssType":I
    goto :goto_39

    .line 1311
    .end local v3    # "ssType":I
    :pswitch_32
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_BAIC:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v3

    .line 1312
    .restart local v3    # "ssType":I
    nop

    .line 1335
    :goto_39
    invoke-static {p2}, Lcom/huawei/sci/SciSSConfHs;->getMediaTypeString(I)Ljava/lang/String;

    move-result-object v4

    .line 1337
    .local v4, "getMediaTypeResult":Ljava/lang/String;
    if-eqz v4, :cond_75

    .line 1338
    move-object v0, v4

    .line 1343
    if-nez p1, :cond_44

    .line 1344
    const-string v1, "false"

    .line 1347
    :cond_44
    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v5

    sget-object v6, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 1348
    invoke-virtual {v6}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v6

    .line 1347
    invoke-static {v3, v5, v6, v1}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_74

    .line 1349
    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v5}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v5

    sget-object v6, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 1350
    invoke-virtual {v6}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v6

    .line 1349
    invoke-static {v3, v5, v6, v0}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_69

    .line 1351
    return v2

    .line 1354
    :cond_69
    sget-object v2, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v2

    return v2

    .line 1357
    :cond_74
    return v2

    .line 1340
    :cond_75
    return v2

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2b
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method

.method public static setCallDiversion(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I
    .registers 19
    .param p0, "callForwardReason"    # I
    .param p1, "cfActionType"    # I
    .param p2, "callForwardTargetNumber"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/util/Date;
    .param p4, "endTime"    # Ljava/util/Date;
    .param p5, "mediaType"    # I
    .param p6, "noReplyTimer"    # I

    .line 953
    const/4 v0, 0x0

    .line 955
    .local v0, "cdivMediaType":Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->getSsTypeFromCallForwardReason(I)I

    move-result v1

    .line 957
    .local v1, "getSsTypeResult":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_45

    .line 958
    move v3, v1

    .line 963
    .local v3, "ssType":I
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCFActionTypeString(I)Ljava/lang/String;

    move-result-object v10

    .line 964
    .local v10, "cfActionTypeString":Ljava/lang/String;
    if-nez v10, :cond_11

    .line 965
    return v2

    .line 968
    :cond_11
    invoke-static/range {p5 .. p5}, Lcom/huawei/sci/SciSSConfHs;->getMediaTypeString(I)Ljava/lang/String;

    move-result-object v11

    .line 969
    .local v11, "getMediaTypeResult":Ljava/lang/String;
    if-eqz v11, :cond_44

    .line 970
    move-object v9, v11

    .line 975
    .end local v0    # "cdivMediaType":Ljava/lang/String;
    .local v9, "cdivMediaType":Ljava/lang/String;
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v0

    sget-object v4, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 976
    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v4

    .line 975
    invoke-static {v3, v0, v4, v10}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_43

    .line 977
    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    move v8, v3

    invoke-static/range {v4 .. v9}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionConfPara(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_38

    .line 979
    return v2

    .line 982
    :cond_38
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v0

    invoke-static {v3, v0}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v0

    return v0

    .line 985
    :cond_43
    return v2

    .line 972
    .end local v9    # "cdivMediaType":Ljava/lang/String;
    .restart local v0    # "cdivMediaType":Ljava/lang/String;
    :cond_44
    return v2

    .line 960
    .end local v3    # "ssType":I
    .end local v10    # "cfActionTypeString":Ljava/lang/String;
    .end local v11    # "getMediaTypeResult":Ljava/lang/String;
    :cond_45
    return v2
.end method

.method private static setCallDiversionConfPara(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IILjava/lang/String;)I
    .registers 11
    .param p0, "callForwardTargetNumber"    # Ljava/lang/String;
    .param p1, "startTime"    # Ljava/util/Date;
    .param p2, "endTime"    # Ljava/util/Date;
    .param p3, "noReplyTimer"    # I
    .param p4, "ssType"    # I
    .param p5, "cdivMediaType"    # Ljava/lang/String;

    .line 889
    const/4 v0, 0x1

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d

    .line 890
    const-string v1, "(?i)\\+?[0123456789abc*#]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 891
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 892
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 893
    return v0

    .line 896
    :cond_1a
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v3

    sget-object v4, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_FORWARD_TO_TARGET:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 897
    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v4

    .line 896
    invoke-static {p4, v3, v4, p0}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2d

    .line 899
    return v0

    .line 903
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_2d
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFU:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-ne p4, v1, :cond_70

    .line 904
    const/4 v1, 0x0

    .line 906
    .local v1, "timeQuantum":Ljava/lang/String;
    if-eqz p1, :cond_5d

    if-eqz p2, :cond_5d

    .line 908
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 909
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 912
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5d
    sget-object v2, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v2

    sget-object v3, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_TIME:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 913
    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v3

    .line 912
    invoke-static {p4, v2, v3, v1}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_70

    .line 914
    return v0

    .line 918
    .end local v1    # "timeQuantum":Ljava/lang/String;
    :cond_70
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v1

    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_MEDIATYPE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 919
    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v2

    .line 918
    invoke-static {p4, v1, v2, p5}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_83

    .line 920
    return v0

    .line 923
    :cond_83
    const/4 v1, -0x1

    if-eq p3, v1, :cond_b5

    .line 924
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CFNR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p4, v1, :cond_9e

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 925
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-eq p4, v1, :cond_9e

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CDIV_ALL_CONDITIONAL:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    .line 926
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v1

    if-ne p4, v1, :cond_b5

    .line 927
    :cond_9e
    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v1

    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 928
    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v2

    .line 929
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 927
    invoke-static {p4, v1, v2, v3}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b5

    .line 930
    return v0

    .line 935
    :cond_b5
    const/4 v0, 0x0

    return v0
.end method

.method public static setCallDiversionNoReplyTimer(I)I
    .registers 5
    .param p0, "noReplyTimer"    # I

    .line 1005
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    .line 1006
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v1

    sget-object v2, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_CDIV_NOREPLYTIMER:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 1007
    invoke-virtual {v2}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v2

    .line 1008
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1005
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 1009
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_NRT:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    .line 1010
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v1

    .line 1009
    invoke-static {v0, v1}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v0

    return v0

    .line 1013
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method public static setCallWaiting(Z)I
    .registers 2
    .param p0, "isEnable"    # Z

    .line 1431
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_CW:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/sci/SciSSConf;->enabledSSConf(IZ)I

    move-result v0

    return v0
.end method

.method public static setChrUtCallBack(Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;)V
    .registers 3
    .param p0, "callBack"    # Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

    .line 464
    const-string v0, "SciSSConfHs"

    const-string v1, "setChrUtCallBack in func"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sput-object p0, Lcom/huawei/sci/SciSSConfHs;->chrUtCallBack:Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

    .line 466
    return-void
.end method

.method public static setContentType(I)I
    .registers 2
    .param p0, "type"    # I

    .line 1441
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/huawei/sci/SciSSConf;->setContentType(Z)I

    move-result v0

    return v0
.end method

.method public static setExtensionalParam(IZLjava/lang/String;)I
    .registers 4
    .param p0, "num"    # I
    .param p1, "isCfg"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .line 741
    invoke-static {p2}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    if-gez p0, :cond_c

    .line 742
    :cond_a
    const/4 v0, 0x1

    return v0

    .line 745
    :cond_c
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConf;->setExtensionalParam(IZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setHomeDomainName(Ljava/lang/String;)I
    .registers 2
    .param p0, "homeDomainName"    # Ljava/lang/String;

    .line 681
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 682
    const/4 v0, 0x1

    return v0

    .line 685
    :cond_8
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setHomeDomainName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setHostIp([Ljava/lang/String;I)I
    .registers 5
    .param p0, "hostIp"    # [Ljava/lang/String;
    .param p1, "hostType"    # I

    .line 646
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_NAF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->toNumber()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_23

    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 647
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->toNumber()I

    move-result v0

    if-le p1, v0, :cond_12

    goto :goto_23

    .line 651
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v2, p0

    if-ge v0, v2, :cond_1e

    .line 652
    aget-object v2, p0, v0

    if-nez v2, :cond_1b

    .line 653
    return v1

    .line 651
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 657
    .end local v0    # "i":I
    :cond_1e
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSSConf;->setHostIp([Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 648
    :cond_23
    :goto_23
    return v1
.end method

.method public static declared-synchronized setLibPath(Ljava/lang/String;)I
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    const-class v0, Lcom/huawei/sci/SciSSConfHs;

    monitor-enter v0

    .line 526
    :try_start_3
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_28

    .line 527
    sput-boolean v2, Lcom/huawei/sci/SciSSConfHs;->isInitLibPath:Z

    .line 528
    const-string v1, "SciSSConfHs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLibPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {p0}, Lcom/huawei/sci/SciSys;->setLibPath(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2a

    .line 530
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 533
    :cond_28
    monitor-exit v0

    return v2

    .line 525
    .end local p0    # "path":Ljava/lang/String;
    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLocalUserName(Ljava/lang/String;)I
    .registers 2
    .param p0, "localUserName"    # Ljava/lang/String;

    .line 667
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 668
    const/4 v0, 0x1

    return v0

    .line 671
    :cond_8
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setLocalUserName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setNafAddr(Ljava/lang/String;IZ)I
    .registers 4
    .param p0, "srvAddr"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "isUseHttps"    # Z

    .line 615
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-gtz p1, :cond_9

    goto :goto_e

    .line 619
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConf;->setNafAddr(Ljava/lang/String;IZ)I

    move-result v0

    return v0

    .line 616
    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public static setOriginatingIdentityPresentation(Z)I
    .registers 2
    .param p0, "isEnable"    # Z

    .line 1041
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/sci/SciSSConf;->enabledSSConf(IZ)I

    move-result v0

    return v0
.end method

.method public static setOriginatingIdentityRestriction(Z)I
    .registers 3
    .param p0, "isEnable"    # Z

    .line 1153
    const/4 v0, 0x2

    .line 1155
    .local v0, "defaultBehaviorType":I
    if-nez p0, :cond_4

    .line 1156
    const/4 v0, 0x1

    .line 1159
    :cond_4
    invoke-static {p0, v0}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityRestriction(ZI)I

    move-result v1

    return v1
.end method

.method public static setOriginatingIdentityRestriction(ZI)I
    .registers 9
    .param p0, "isEnable"    # Z
    .param p1, "defaultBehaviorType"    # I

    .line 1171
    const/4 v0, 0x0

    .line 1172
    .local v0, "opType":I
    const-string v1, "true"

    .line 1173
    .local v1, "activeValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1175
    .local v2, "defaultBehaviorValue":Ljava/lang/String;
    sget-object v3, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_OIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v3

    .line 1176
    .local v3, "ssType":I
    sget-object v4, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSConfOpType;->toNumber()I

    move-result v0

    .line 1178
    if-nez p0, :cond_14

    .line 1179
    const-string v1, "false"

    .line 1182
    :cond_14
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getOIRDefaulBehaviorType(I)Ljava/lang/String;

    move-result-object v2

    .line 1184
    sget-object v4, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_ATTR_ACTIVE:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 1185
    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v4

    .line 1184
    invoke-static {v3, v0, v4, v1}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_44

    .line 1186
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3f

    .line 1187
    sget-object v4, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->SSCONF_PARAM_TYPE_OIR_DEFALT_BEHAVIOR:Lcom/huawei/sci/SciSSConf$SSCONFParamType;

    .line 1188
    invoke-virtual {v4}, Lcom/huawei/sci/SciSSConf$SSCONFParamType;->toNumber()I

    move-result v4

    .line 1187
    invoke-static {v3, v0, v4, v2}, Lcom/huawei/sci/SciSSConf;->setSSConfParam(IIILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3f

    .line 1190
    const-string v4, "SciSSConfHs"

    const-string v6, "setOriginatingIdentityRestriction OIR_DEFALT_BEHAVIOR fail."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return v5

    .line 1195
    :cond_3f
    invoke-static {v3, v0}, Lcom/huawei/sci/SciSSConf;->startConf(II)I

    move-result v4

    return v4

    .line 1198
    :cond_44
    return v5
.end method

.method public static setParamsCfg(ILjava/lang/String;)I
    .registers 4
    .param p0, "cfgParam"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 544
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 545
    const-string v0, "SciSSConfHs"

    const-string v1, "setParamsCfg : invalid value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v0, 0x1

    return v0

    .line 549
    :cond_f
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSSConf;->setParamsCfg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setSupportGBAType(I)I
    .registers 2
    .param p0, "gbaType"    # I

    .line 603
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setSupportGBAType(I)I

    move-result v0

    return v0
.end method

.method public static setSupportTmpi(Z)I
    .registers 2
    .param p0, "isSupport"    # Z

    .line 579
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setSupportTmpi(Z)I

    move-result v0

    return v0
.end method

.method public static setSupportXcapNamespace(Z)I
    .registers 2
    .param p0, "isSupport"    # Z

    .line 569
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setSupportXcapNamespace(Z)I

    move-result v0

    return v0
.end method

.method public static setTerminatingIdentityPresentation(Z)I
    .registers 2
    .param p0, "isEnable"    # Z

    .line 1069
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIP:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/sci/SciSSConf;->enabledSSConf(IZ)I

    move-result v0

    return v0
.end method

.method public static setTerminatingIdentityRestriction(Z)I
    .registers 2
    .param p0, "isEnable"    # Z

    .line 1226
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfSSType;->SSCONF_SS_TYPE_TIR:Lcom/huawei/sci/SciSSConf$SSConfSSType;

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConf$SSConfSSType;->toNumber()I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/sci/SciSSConf;->enabledSSConf(IZ)I

    move-result v0

    return v0
.end method

.method public static setTmpi(Ljava/lang/String;)I
    .registers 2
    .param p0, "tmpi"    # Ljava/lang/String;

    .line 589
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 590
    const/4 v0, 0x1

    return v0

    .line 593
    :cond_8
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setTmpi(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setTrustCaPath(Ljava/lang/String;)I
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 512
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 513
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setTrustCaPath(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 516
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static setX3gppIntendId(Ljava/lang/String;)I
    .registers 2
    .param p0, "intendIdStr"    # Ljava/lang/String;

    .line 725
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 726
    const/4 v0, 0x1

    return v0

    .line 729
    :cond_8
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setX3gppIntendId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setXcapRootUri(Ljava/lang/String;)I
    .registers 2
    .param p0, "xcapRootUri"    # Ljava/lang/String;

    .line 695
    invoke-static {p0}, Lcom/huawei/sci/SciSSConfHs;->strIsNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 696
    const/4 v0, 0x1

    return v0

    .line 699
    :cond_8
    invoke-static {p0}, Lcom/huawei/sci/SciSSConf;->setXcapRootUri(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static startChrUtErrReport(I)V
    .registers 8
    .param p0, "conditionId"    # I

    .line 474
    const-string v0, "SciSSConfHs"

    const-string v1, "startChrUtErrReport in func"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getChrUtServiceType()I

    move-result v1

    .line 477
    .local v1, "serviceType":I
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getChrUtSendMessageType()I

    move-result v2

    .line 478
    .local v2, "sendMessageType":I
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getChrUtFailPhaseReport()I

    move-result v3

    .line 479
    .local v3, "failPhaseReport":I
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getChrUtDefeatReason()I

    move-result v4

    .line 481
    .local v4, "defeatReason":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startChrUtErrReport conditionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", serviceType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sendMessageType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", failPhaseReport : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", defeatReason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_70

    .line 486
    .local v5, "intData":[I
    const/4 v6, 0x0

    aput p0, v5, v6

    .line 487
    const/4 v6, 0x1

    aput v1, v5, v6

    .line 488
    const/4 v6, 0x2

    aput v2, v5, v6

    .line 489
    const/4 v6, 0x3

    aput v3, v5, v6

    .line 490
    const/4 v6, 0x4

    aput v4, v5, v6

    .line 492
    sget-object v6, Lcom/huawei/sci/SciSSConfHs;->chrUtCallBack:Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

    if-eqz v6, :cond_6f

    .line 493
    const-string v6, "startChrUtErrReport run call back func"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v0, Lcom/huawei/sci/SciSSConfHs;->chrUtCallBack:Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Lcom/huawei/sci/SciSSConfHs$ChrUtCallBack;->chrUtCbGetErrReport([I[Ljava/lang/String;)V

    .line 496
    :cond_6f
    return-void

    :array_70
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static strIsNull(Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 1487
    const/4 v0, 0x1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method
