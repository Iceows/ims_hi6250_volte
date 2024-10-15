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
.field static final synthetic $SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource:[I

.field static final synthetic $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

.field static final synthetic $SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

.field static final synthetic $SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

.field static final synthetic $SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 4514
    invoke-static {}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->values()[Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource:[I

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource:[I

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_CS:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource:[I

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    .line 4194
    :goto_30
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->values()[Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    :try_start_39
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v3

    :goto_45
    :try_start_45
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v3

    :goto_51
    :try_start_51
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception v3

    .line 3281
    :goto_5d
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->values()[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    :try_start_66
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v3

    :goto_72
    :try_start_72
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v3

    :goto_7e
    :try_start_7e
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_88} :catch_89

    goto :goto_8a

    :catch_89
    move-exception v3

    :goto_8a
    const/4 v3, 0x4

    :try_start_8b
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_96

    goto :goto_97

    :catch_96
    move-exception v4

    :goto_97
    const/4 v4, 0x5

    :try_start_98
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a2} :catch_a3

    goto :goto_a4

    :catch_a3
    move-exception v5

    :goto_a4
    const/4 v5, 0x6

    :try_start_a5
    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v7, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v7}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_af} :catch_b0

    goto :goto_b1

    :catch_b0
    move-exception v6

    :goto_b1
    const/4 v6, 0x7

    :try_start_b2
    sget-object v7, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v8, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING_NONE_SYNC:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_bc} :catch_bd

    goto :goto_be

    :catch_bd
    move-exception v7

    :goto_be
    const/16 v7, 0x8

    :try_start_c0
    sget-object v8, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v9, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v9}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_ca} :catch_cb

    goto :goto_cc

    :catch_cb
    move-exception v8

    :goto_cc
    const/16 v8, 0x9

    :try_start_ce
    sget-object v9, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v10}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_d8} :catch_d9

    goto :goto_da

    :catch_d9
    move-exception v9

    :goto_da
    const/16 v9, 0xa

    :try_start_dc
    sget-object v10, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e6} :catch_e7

    goto :goto_e8

    :catch_e7
    move-exception v10

    :goto_e8
    const/16 v10, 0xb

    :try_start_ea
    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    sget-object v12, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v12}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f4} :catch_f5

    goto :goto_f6

    :catch_f5
    move-exception v11

    .line 2548
    :goto_f6
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->values()[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    :try_start_ff
    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v12, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v12}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ff .. :try_end_109} :catch_10a

    goto :goto_10b

    :catch_10a
    move-exception v11

    :goto_10b
    :try_start_10b
    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v12, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v12}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_116

    goto :goto_117

    :catch_116
    move-exception v11

    :goto_117
    :try_start_117
    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v12, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v12}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_121
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_121} :catch_122

    goto :goto_123

    :catch_122
    move-exception v11

    :goto_123
    :try_start_123
    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v12, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v12}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_12d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_12d} :catch_12e

    goto :goto_12f

    :catch_12e
    move-exception v11

    :goto_12f
    :try_start_12f
    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v12, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v12}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_139
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12f .. :try_end_139} :catch_13a

    goto :goto_13b

    :catch_13a
    move-exception v11

    :goto_13b
    :try_start_13b
    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v12, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v12}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13b .. :try_end_145} :catch_146

    goto :goto_147

    :catch_146
    move-exception v5

    :goto_147
    :try_start_147
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v11, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v11}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v11

    aput v6, v5, v11
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_152

    goto :goto_153

    :catch_152
    move-exception v5

    :goto_153
    :try_start_153
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    aput v7, v5, v6
    :try_end_15d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_153 .. :try_end_15d} :catch_15e

    goto :goto_15f

    :catch_15e
    move-exception v5

    :goto_15f
    :try_start_15f
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    aput v8, v5, v6
    :try_end_169
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15f .. :try_end_169} :catch_16a

    goto :goto_16b

    :catch_16a
    move-exception v5

    :goto_16b
    :try_start_16b
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    aput v9, v5, v6
    :try_end_175
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16b .. :try_end_175} :catch_176

    goto :goto_177

    :catch_176
    move-exception v5

    :goto_177
    :try_start_177
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    aput v10, v5, v6
    :try_end_181
    .catch Ljava/lang/NoSuchFieldError; {:try_start_177 .. :try_end_181} :catch_182

    goto :goto_183

    :catch_182
    move-exception v5

    :goto_183
    :try_start_183
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_18f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18f} :catch_190

    goto :goto_191

    :catch_190
    move-exception v5

    :goto_191
    :try_start_191
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_19d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_191 .. :try_end_19d} :catch_19e

    goto :goto_19f

    :catch_19e
    move-exception v5

    :goto_19f
    :try_start_19f
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19f .. :try_end_1ab} :catch_1ac

    goto :goto_1ad

    :catch_1ac
    move-exception v5

    :goto_1ad
    :try_start_1ad
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0xf

    aput v7, v5, v6
    :try_end_1b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b9} :catch_1ba

    goto :goto_1bb

    :catch_1ba
    move-exception v5

    :goto_1bb
    :try_start_1bb
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v6

    const/16 v7, 0x10

    aput v7, v5, v6
    :try_end_1c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bb .. :try_end_1c7} :catch_1c8

    goto :goto_1c9

    :catch_1c8
    move-exception v5

    .line 2471
    :goto_1c9
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->values()[Lcom/huawei/ims/HwImsUtImpl$CmdState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    :try_start_1d2
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d2 .. :try_end_1dc} :catch_1dd

    goto :goto_1de

    :catch_1dd
    move-exception v0

    :goto_1de
    :try_start_1de
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_1e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1de .. :try_end_1e8} :catch_1e9

    goto :goto_1ea

    :catch_1e9
    move-exception v0

    :goto_1ea
    :try_start_1ea
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ea .. :try_end_1f4} :catch_1f5

    goto :goto_1f6

    :catch_1f5
    move-exception v0

    :goto_1f6
    :try_start_1f6
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_200
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f6 .. :try_end_200} :catch_201

    goto :goto_202

    :catch_201
    move-exception v0

    :goto_202
    :try_start_202
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_20c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_202 .. :try_end_20c} :catch_20d

    goto :goto_20e

    :catch_20d
    move-exception v0

    :goto_20e
    return-void
.end method
