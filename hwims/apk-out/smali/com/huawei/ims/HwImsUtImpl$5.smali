.class synthetic Lcom/huawei/ims/HwImsUtImpl$5;
.super Ljava/lang/Object;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

.field static final synthetic $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

.field static final synthetic $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

.field static final synthetic $SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

.field static final synthetic $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4282
    invoke-static {}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->values()[Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CALL_WAITING_SOURCE:[I

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 3900
    :goto_2
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->values()[Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    :try_start_3
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 2970
    :goto_5
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->values()[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    :try_start_6
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    :goto_6
    :try_start_7
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    :goto_7
    :try_start_8
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    :goto_8
    const/4 v3, 0x4

    :try_start_9
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v4

    :goto_9
    const/4 v4, 0x5

    :try_start_a
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v5

    :goto_a
    const/4 v5, 0x6

    :try_start_b
    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v7, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v7}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v6

    :goto_b
    const/4 v6, 0x7

    :try_start_c
    sget-object v7, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v8, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v7

    :goto_c
    const/16 v7, 0x8

    :try_start_d
    sget-object v8, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v9, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v8

    :goto_d
    const/16 v8, 0x9

    :try_start_e
    sget-object v9, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v10}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v9

    :goto_e
    const/16 v9, 0xa

    :try_start_f
    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v10

    .line 2155
    :goto_f
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->values()[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    :try_start_10
    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v11

    aput v0, v10, v11
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v10

    :goto_10
    :try_start_11
    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v11

    aput v1, v10, v11
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v10

    :goto_11
    :try_start_12
    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v11

    aput v2, v10, v11
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v10

    :goto_12
    :try_start_13
    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v11

    aput v3, v10, v11
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v10

    :goto_13
    :try_start_14
    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v10

    :goto_14
    :try_start_15
    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v11

    aput v5, v10, v11
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v5

    :goto_15
    :try_start_16
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v10}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v10

    aput v6, v5, v10
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v5

    :goto_16
    :try_start_17
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    aput v7, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v5

    :goto_17
    :try_start_18
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    aput v8, v5, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v5

    :goto_18
    :try_start_19
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    aput v9, v5, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v5

    :goto_19
    :try_start_1a
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v5

    :goto_1a
    :try_start_1b
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v5

    :goto_1b
    :try_start_1c
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v5

    :goto_1c
    :try_start_1d
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v5

    :goto_1d
    :try_start_1e
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xf

    aput v7, v5, v6
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v5

    :goto_1e
    :try_start_1f
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0x10

    aput v7, v5, v6
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v5

    .line 2067
    :goto_1f
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->values()[Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    :try_start_20
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    :goto_20
    :try_start_21
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    :goto_21
    :try_start_22
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    :goto_22
    :try_start_23
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    :goto_23
    :try_start_24
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v0

    :goto_24
    return-void
.end method
