.class public Lcom/huawei/ims/GbaAuth;
.super Landroid/os/Handler;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/GbaAuth$GbaStatus;,
        Lcom/huawei/ims/GbaAuth$GbaResult;,
        Lcom/huawei/ims/GbaAuth$AkaResult;,
        Lcom/huawei/ims/GbaAuth$AuthResp;,
        Lcom/huawei/ims/GbaAuth$AuthSyncfail;,
        Lcom/huawei/ims/GbaAuth$AuthRespChallenge;,
        Lcom/huawei/ims/GbaAuth$DataValue;,
        Lcom/huawei/ims/GbaAuth$KsNafElem;,
        Lcom/huawei/ims/GbaAuth$BtidElem;,
        Lcom/huawei/ims/GbaAuth$KsNafState;,
        Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;,
        Lcom/huawei/ims/GbaAuth$UiccGbaType;
    }
.end annotation


# static fields
.field public static final AUTH_RESP_FAIL:I = 0x1

.field public static final AUTH_RESP_SUCCESS:I = 0x0

.field public static final AUTH_RESP_SYNC_FAIL:I = 0x2

.field public static final AUTH_RESP_UNSUPPORTED:I = 0x3

.field private static final DEFAULT_INT:I = 0x6

.field public static final DEFAULT_LIFETIME_IN_MINUTE:I = 0x1e

.field public static final EFAIL:I = 0x1

.field public static final EVENT_NOTIFY_BP_UPDATE:I = 0x7

.field public static final EVENT_NOTIFY_GBA_KSNAF:I = 0x8

.field public static final EVENT_NOTIFY_UICC_AUTH:I = 0x6

.field public static final EVENT_REQUEST_GET_UICC_FILE_DONE:I = 0x4

.field public static final EVENT_REQUEST_UICC_AUTH_DONE:I = 0x1

.field public static final EVENT_REQUEST_UICC_BOOTSTRAP_DONE:I = 0x2

.field public static final EVENT_REQUEST_UICC_FILE_UPDATE_DONE:I = 0x3

.field public static final EVENT_REQUEST_UICC_KS_NAF_DONE:I = 0x5

.field public static final GBA_LIFETIME_PROTECT_IN_MINUTE:I = 0x5

.field public static final GBA_ME:I = 0x0

.field public static final GBA_U:I = 0x1

.field private static final HMAC_SHA256:Ljava/lang/String; = "HMAC-SHA256"

.field private static final INVALIED_SUB_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GbaAuth"

.field private static final MAX_AUTH_COUNTS:I = 0x4

.field private static final MAX_BOOTSTRAP_COUNTS:I = 0x4

.field private static final MAX_INT:I = 0xff

.field private static final SHORT_TO_BYTE_ARRAY_SIZE:I = 0x2

.field private static final SHORT_TO_BYTE_MOVE_LENGTH:I = 0x8

.field public static final SUCCESS:I = 0x0

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mAsyncSign:Ljava/lang/Object;

.field private mAuthCountsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBootstrapCountsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBtidTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/GbaAuth$BtidElem;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Lcom/huawei/ims/ImsRIL;

.field private mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

.field private mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

.field private mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field private mIsKsNafEncodedByBase64:Z

.field private mKsNafTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/GbaAuth$KsNafElem;",
            ">;"
        }
    .end annotation
.end field

.field private mNafIdHexString:Ljava/lang/String;

.field private mSubId:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsRIL;Lcom/huawei/ims/HwImsConfigImpl;I)V
    .registers 6
    .param p1, "cm"    # Lcom/huawei/ims/ImsRIL;
    .param p2, "imsConfigImpl"    # Lcom/huawei/ims/HwImsConfigImpl;
    .param p3, "subId"    # I

    .line 379
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    .line 157
    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    .line 159
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/GbaAuth;->mIsKsNafEncodedByBase64:Z

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    .line 169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    .line 171
    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 173
    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 180
    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mNafIdHexString:Ljava/lang/String;

    .line 380
    iput-object p1, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    .line 381
    new-instance v0, Lcom/huawei/ims/GbaAuthUtil;

    invoke-direct {v0, p0}, Lcom/huawei/ims/GbaAuthUtil;-><init>(Lcom/huawei/ims/GbaAuth;)V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    .line 382
    iput p3, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    .line 383
    if-eqz p2, :cond_47

    .line 384
    invoke-virtual {p2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtKsNafEncodedByBase64()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/ims/GbaAuth;->mIsKsNafEncodedByBase64:Z

    .line 386
    :cond_47
    return-void
.end method

.method private addAuthTimes(Ljava/lang/String;)V
    .registers 5
    .param p1, "nafId"    # Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 943
    .local v0, "authCounts":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before addAuthTimes, auth Counts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 944
    const/4 v1, 0x1

    if-nez v0, :cond_2e

    .line 945
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v1, "after addAuthTimes, authCounts=1"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 947
    return-void

    .line 949
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 950
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after addAuthTimes, authCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method private addBootstrapTimes(Ljava/lang/String;)V
    .registers 5
    .param p1, "nafId"    # Ljava/lang/String;

    .line 980
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 981
    .local v0, "bootstrapCounts":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before addBootstrapTimes, bootstrapCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 982
    const/4 v1, 0x1

    if-nez v0, :cond_2e

    .line 983
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const-string v1, "after addBootstrapTimes, bootstrapCounts=1"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 985
    return-void

    .line 988
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 989
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after setBootstrapCounts, bootstrapCounts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method private generateData([B[B[B)[B
    .registers 20
    .param p1, "rand"    # [B
    .param p2, "impi"    # [B
    .param p3, "nafId"    # [B

    .line 770
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter generateData rand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", impi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nafId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-direct {v0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 774
    const/4 v1, 0x1

    new-array v4, v1, [B

    const/4 v5, 0x0

    aput-byte v1, v4, v5

    move-object v1, v4

    .line 775
    .local v1, "fc":[B
    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_ca

    .line 776
    .local v4, "p0":[B
    const/4 v6, 0x2

    new-array v6, v6, [B

    fill-array-data v6, :array_d2

    .line 777
    .local v6, "l0":[B
    move-object/from16 v7, p1

    .line 778
    .local v7, "p1":[B
    array-length v8, v7

    int-to-short v8, v8

    invoke-static {v8}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v8

    .line 779
    .local v8, "l1":[B
    move-object/from16 v9, p2

    .line 780
    .local v9, "p2":[B
    array-length v10, v9

    int-to-short v10, v10

    invoke-static {v10}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v10

    .line 781
    .local v10, "l2":[B
    move-object/from16 v11, p3

    .line 782
    .local v11, "p3":[B
    array-length v12, v11

    int-to-short v12, v12

    invoke-static {v12}, Lcom/huawei/ims/GbaAuth;->shortToBytes(S)[B

    move-result-object v12

    .line 783
    .local v12, "l3":[B
    array-length v13, v1

    array-length v14, v4

    add-int/2addr v13, v14

    array-length v14, v6

    add-int/2addr v13, v14

    array-length v14, v7

    add-int/2addr v13, v14

    array-length v14, v8

    add-int/2addr v13, v14

    array-length v14, v9

    add-int/2addr v13, v14

    array-length v14, v10

    add-int/2addr v13, v14

    array-length v14, v11

    add-int/2addr v13, v14

    array-length v14, v12

    add-int/2addr v13, v14

    new-array v13, v13, [B

    .line 785
    .local v13, "ss":[B
    array-length v14, v1

    invoke-static {v1, v5, v13, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    array-length v14, v1

    .line 787
    .local v14, "len":I
    array-length v15, v4

    invoke-static {v4, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    array-length v15, v4

    add-int/2addr v14, v15

    .line 789
    array-length v15, v6

    invoke-static {v6, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    array-length v15, v6

    add-int/2addr v14, v15

    .line 791
    array-length v15, v7

    invoke-static {v7, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    array-length v15, v7

    add-int/2addr v14, v15

    .line 793
    array-length v15, v8

    invoke-static {v8, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    array-length v15, v8

    add-int/2addr v14, v15

    .line 795
    array-length v15, v9

    invoke-static {v9, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    array-length v15, v9

    add-int/2addr v14, v15

    .line 797
    array-length v15, v10

    invoke-static {v10, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 798
    array-length v15, v10

    add-int/2addr v14, v15

    .line 799
    array-length v15, v11

    invoke-static {v11, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    array-length v15, v11

    add-int/2addr v14, v15

    .line 801
    array-length v15, v12

    invoke-static {v12, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "leave generateData, len="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v13

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", ss="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 803
    return-object v13

    nop

    :array_ca
    .array-data 1
        0x67t
        0x62t
        0x61t
        0x2dt
        0x6dt
        0x65t
    .end array-data

    nop

    :array_d2
    .array-data 1
        0x0t
        0x6t
    .end array-data
.end method

.method private generateKs([B[B)[B
    .registers 7
    .param p1, "ck"    # [B
    .param p2, "ik"    # [B

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter generateKs ck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ik="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 742
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 743
    .local v0, "ks":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 744
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leave generateKs, ks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 746
    return-object v0
.end method

.method private getNafIdViaBtid([B)Ljava/lang/String;
    .registers 6
    .param p1, "btid"    # [B

    .line 1017
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1018
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/GbaAuth$KsNafElem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 1019
    .local v2, "value":Lcom/huawei/ims/GbaAuth$KsNafElem;
    iget-object v3, v2, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBtid:[B

    invoke-direct {p0, v3, p1}, Lcom/huawei/ims/GbaAuth;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1020
    iget-object v3, v2, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    .line 1021
    .local v3, "nafIds":[B
    if-eqz v3, :cond_2d

    .line 1022
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1025
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/GbaAuth$KsNafElem;>;"
    .end local v2    # "value":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v3    # "nafIds":[B
    :cond_2d
    goto :goto_a

    .line 1026
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleAuthExpire(Ljava/lang/String;)V
    .registers 3
    .param p1, "nafId"    # Ljava/lang/String;

    .line 932
    const-string v0, "enter handleAuthExpire"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 936
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->removeKsNaf(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mNafIdHexString:Ljava/lang/String;

    .line 939
    return-void
.end method

.method private handleBootstrapExpire(Ljava/lang/String;)V
    .registers 3
    .param p1, "nafId"    # Ljava/lang/String;

    .line 972
    const-string v0, "enter handleBootstrapExpire"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 975
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->removeBtid(Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    return-void
.end method

.method private handleTimeout()V
    .registers 8

    .line 1052
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1053
    .local v0, "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1054
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1055
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1056
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 1057
    .local v3, "value":Lcom/huawei/ims/GbaAuth$BtidElem;
    iget-object v4, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mBtid:[B

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->getNafIdViaBtid([B)Ljava/lang/String;

    move-result-object v4

    .line 1058
    .local v4, "nafId":Ljava/lang/String;
    iget-object v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    if-nez v5, :cond_32

    .line 1059
    const-string v5, "ks is null, AKA is fail"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    goto :goto_79

    .line 1061
    :cond_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter handleTimeout, value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", lifetime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    .line 1062
    invoke-static {v2, v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mBtid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mBtid:[B

    .line 1063
    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mKs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1061
    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 1065
    :goto_79
    iget-object v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    if-nez v5, :cond_7e

    .line 1066
    goto :goto_a

    .line 1070
    :cond_7e
    iget-boolean v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mIsUsed:Z

    if-eqz v5, :cond_9c

    iget-object v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->isTimeout(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 1071
    const-string v5, "time is up, remove it"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 1074
    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->resetAuthCounts(Ljava/lang/String;)V

    .line 1077
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1080
    iget-object v5, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mBtid:[B

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->removeKsNaf([B)V

    .line 1081
    goto/16 :goto_a

    .line 1085
    :cond_9c
    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->resetBootstrapCounts(Ljava/lang/String;)V

    .line 1086
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local v4    # "nafId":Ljava/lang/String;
    goto/16 :goto_a

    .line 1087
    :cond_a1
    return-void
.end method

.method private declared-synchronized handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V
    .registers 7
    .param p1, "resp"    # Lcom/huawei/ims/GbaAuth$AuthResp;

    monitor-enter p0

    .line 832
    :try_start_1
    new-instance v0, Lcom/huawei/ims/GbaAuth$AkaResult;

    invoke-direct {v0}, Lcom/huawei/ims/GbaAuth$AkaResult;-><init>()V

    .line 834
    .local v0, "aka":Lcom/huawei/ims/GbaAuth$AkaResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUiccAuthDone mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 836
    iget v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    if-eqz v1, :cond_98

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2d

    .line 871
    sget-object v1, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_FAILURE:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    iput-object v1, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    .line 872
    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    goto/16 :goto_ed

    .line 851
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :cond_2d
    iget-object v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    instance-of v1, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;

    if-eqz v1, :cond_92

    .line 852
    iget-object v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;

    .line 853
    .local v1, "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTH_RESP_SYNC_FAIL auts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 854
    sget-object v3, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_SYNC_FAILURE:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    iput-object v3, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    .line 855
    iget-object v3, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iput-object v3, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 858
    iget-boolean v3, p0, Lcom/huawei/ims/GbaAuth;->mIsKsNafEncodedByBase64:Z

    if-eqz v3, :cond_6b

    .line 859
    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v1, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-static {v4, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    iput-object v2, v3, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 861
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auts, base64="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/GbaAuth;->mIsKsNafEncodedByBase64:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 862
    .end local v1    # "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    goto :goto_ed

    .line 863
    :cond_92
    const-string v1, "Don\'t get the reason of fail"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 865
    goto :goto_ed

    .line 839
    :cond_98
    iget-object v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    instance-of v1, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;

    if-eqz v1, :cond_e7

    .line 840
    iget-object v1, p1, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;

    .line 841
    .local v1, "authResp":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v3, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    iget-object v4, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-direct {p0, v3, v4}, Lcom/huawei/ims/GbaAuth;->generateKs([B[B)[B

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 843
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 842
    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 844
    sget-object v2, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->AKA_ALGORITHM_SUCCESS:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    iput-object v2, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    .line 845
    iget-object v2, v1, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iput-object v2, v0, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 846
    .end local v1    # "authResp":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    goto :goto_ed

    .line 847
    :cond_e7
    const-string v1, "response transfers fail"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 849
    nop

    .line 876
    :goto_ed
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 877
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z
    :try_end_f5
    .catchall {:try_start_1 .. :try_end_f5} :catchall_f7

    .line 878
    monitor-exit p0

    return-void

    .line 831
    .end local v0    # "aka":Lcom/huawei/ims/GbaAuth$AkaResult;
    .end local v1    # "msg":Landroid/os/Message;
    .end local p1    # "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    :catchall_f7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private hiddenPrivacyByteInfo([B)Ljava/lang/String;
    .registers 3
    .param p1, "array"    # [B

    .line 1107
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hmacSha256([B[B)[B
    .registers 9
    .param p1, "key"    # [B
    .param p2, "data"    # [B

    .line 813
    const-string v0, "HMAC-SHA256"

    const/4 v1, 0x0

    .line 814
    .local v1, "mac":Ljavax/crypto/Mac;
    const/4 v2, 0x0

    .line 815
    .local v2, "securetKey":Ljavax/crypto/SecretKey;
    const/4 v3, 0x0

    .line 817
    .local v3, "hmacSha256":[B
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter hmacSha256 key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 820
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    move-object v1, v4

    .line 821
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v2, v4

    .line 822
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 823
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    move-object v3, v0

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leave hmacSha256, ret="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_54} :catch_55
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_54} :catch_55

    .line 827
    goto :goto_5b

    .line 825
    :catch_55
    move-exception v0

    .line 826
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v4, "hmacSha256 occur exception"

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 828
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :goto_5b
    return-object v3
.end method

.method private isAuthExpire(Ljava/lang/String;)Z
    .registers 6
    .param p1, "nafId"    # Ljava/lang/String;

    .line 915
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 916
    const-string v1, "nafId is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 917
    return v0

    .line 919
    :cond_9
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 920
    .local v1, "authCounts":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuthExpire, authCounts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 921
    if-nez v1, :cond_28

    .line 922
    return v0

    .line 924
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_36

    .line 925
    const-string v0, "Auth Expire!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 926
    const/4 v0, 0x1

    return v0

    .line 928
    :cond_36
    return v0
.end method

.method private isBootstrapExpire(Ljava/lang/String;)Z
    .registers 6
    .param p1, "nafId"    # Ljava/lang/String;

    .line 955
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 956
    const-string v1, "nafId is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 957
    return v0

    .line 959
    :cond_9
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 960
    .local v1, "bootstrapCounts":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBootstrapExpire, bootstrapCounts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 961
    if-nez v1, :cond_28

    .line 962
    return v0

    .line 964
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_36

    .line 965
    const-string v0, "Bootstrap Expire!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 966
    const/4 v0, 0x1

    return v0

    .line 968
    :cond_36
    return v0
.end method

.method private isBusy()Z
    .registers 3

    .line 1037
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private isEqual([B[B)Z
    .registers 4
    .param p1, "key1"    # [B
    .param p2, "key2"    # [B

    .line 1103
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private isTimeout(Ljava/util/Date;)Z
    .registers 5
    .param p1, "lifeTime"    # Ljava/util/Date;

    .line 1043
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1044
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_29

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTimeout, currDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lifeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 1046
    const/4 v1, 0x1

    return v1

    .line 1048
    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[error] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaAuth["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/GbaAuth;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void
.end method

.method private declared-synchronized notifyBpUpdate(Lcom/huawei/ims/GbaAuth$BtidElem;)V
    .registers 4
    .param p1, "btid"    # Lcom/huawei/ims/GbaAuth$BtidElem;

    monitor-enter p0

    .line 889
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_e

    .line 890
    const-string v0, "Gba status is null, notifyBpUpdate stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    .line 891
    monitor-exit p0

    return-void

    .line 893
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$BtidElem;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_17

    .line 894
    monitor-exit p0

    return-void

    .line 888
    .end local p1    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private notifyKsNaf(Lcom/huawei/ims/GbaAuth$KsNafElem;)V
    .registers 4
    .param p1, "ksNaf"    # Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 897
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_c

    .line 898
    const-string v0, "Gba status is null, notifyKsNaf stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 899
    return-void

    .line 901
    :cond_c
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$KsNafElem;Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method private notifyUiccAuth(Lcom/huawei/ims/GbaAuth$AkaResult;)V
    .registers 4
    .param p1, "aka"    # Lcom/huawei/ims/GbaAuth$AkaResult;

    .line 881
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    if-ne v0, v1, :cond_c

    .line 882
    const-string v0, "Gba status is null, notifyUiccAuth stop"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 883
    return-void

    .line 885
    :cond_c
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/ims/GbaAuth$AkaResult;Ljava/lang/Object;)V

    .line 886
    return-void
.end method

.method private processGbaWhenKsNafValid(Lcom/huawei/ims/GbaAuth$KsNafElem;Lcom/huawei/ims/GbaAuth$GbaResult;I[B)Lcom/huawei/ims/GbaAuth$GbaResult;
    .registers 11
    .param p1, "ksNaf"    # Lcom/huawei/ims/GbaAuth$KsNafElem;
    .param p2, "gbaRet"    # Lcom/huawei/ims/GbaAuth$GbaResult;
    .param p3, "gbaType"    # I
    .param p4, "nafId"    # [B

    .line 689
    move-object v0, p2

    .line 690
    .local v0, "basicGbaRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    iget v1, p1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mType:I

    if-eq v1, p3, :cond_a

    .line 691
    const-string v1, "gba type is not equal in ksnaf, ingored"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 693
    :cond_a
    invoke-direct {p0, p4}, Lcom/huawei/ims/GbaAuth;->transByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "nafIdHexString":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->isAuthExpire(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 696
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->handleAuthExpire(Ljava/lang/String;)V

    .line 697
    sget-object v2, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KsNafState;

    invoke-virtual {v2}, Lcom/huawei/ims/GbaAuth$KsNafState;->getValue()I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/GbaAuth$GbaResult;->mStatus:I

    .line 698
    return-object v0

    .line 700
    :cond_20
    iput-object v1, p0, Lcom/huawei/ims/GbaAuth;->mNafIdHexString:Ljava/lang/String;

    .line 701
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->addAuthTimes(Ljava/lang/String;)V

    .line 703
    sget-object v2, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KsNafState;

    invoke-virtual {v2}, Lcom/huawei/ims/GbaAuth$KsNafState;->getValue()I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/GbaAuth$GbaResult;->mStatus:I

    .line 704
    iget-object v2, p1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    iput-object v2, v0, Lcom/huawei/ims/GbaAuth$GbaResult;->mKsnaf:[B

    .line 705
    const-string v2, ""

    .line 707
    .local v2, "sbtid":Ljava/lang/String;
    :try_start_33
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBtid:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_3c} :catch_3e

    move-object v2, v3

    .line 710
    goto :goto_44

    .line 708
    :catch_3e
    move-exception v3

    .line 709
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "CString to UTF-8 fail"

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 711
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_44
    iput-object v2, v0, Lcom/huawei/ims/GbaAuth$GbaResult;->mBtid:Ljava/lang/String;

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ksnaf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", btid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBtid:[B

    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", nafid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    .line 713
    invoke-direct {p0, v4}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 714
    return-object v0
.end method

.method private removeBtid(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    return-void
.end method

.method private removeKsNaf(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    return-void
.end method

.method private removeKsNaf([B)V
    .registers 3
    .param p1, "btid"    # [B

    .line 1098
    invoke-direct {p0, p1}, Lcom/huawei/ims/GbaAuth;->getNafIdViaBtid([B)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "nafId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->removeKsNaf(Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method private resetAuthCounts(Ljava/lang/String;)V
    .registers 3
    .param p1, "nafId"    # Ljava/lang/String;

    .line 994
    const-string v0, "enter resetAuthCounts"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 995
    if-nez p1, :cond_8

    .line 996
    return-void

    .line 998
    :cond_8
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    return-void
.end method

.method private resetBootstrapCounts(Ljava/lang/String;)V
    .registers 3
    .param p1, "nafId"    # Ljava/lang/String;

    .line 1009
    const-string v0, "enter resetBootstrapCounts"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 1010
    if-nez p1, :cond_8

    .line 1011
    return-void

    .line 1013
    :cond_8
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    return-void
.end method

.method private restoreBtid(Ljava/lang/String;Lcom/huawei/ims/GbaAuth$BtidElem;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "btid"    # Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 808
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    return-void
.end method

.method private static shortToBytes(S)[B
    .registers 4
    .param p0, "key"    # S

    .line 732
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 733
    .local v0, "bytes":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 734
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 735
    return-object v0
.end method

.method private transByteArrayToHexString([B)Ljava/lang/String;
    .registers 3
    .param p1, "array"    # [B

    .line 1030
    if-nez p1, :cond_4

    .line 1031
    const/4 v0, 0x0

    return-object v0

    .line 1033
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 723
    :try_start_1
    const-string v0, "enter clear"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 725
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 726
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 727
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mAuthCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 728
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mBootstrapCountsTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 729
    monitor-exit p0

    return-void

    .line 722
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAuthCounts()V
    .registers 2

    .line 1005
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mNafIdHexString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->resetAuthCounts(Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method declared-synchronized deleteGbaKsnaf(I[B)I
    .registers 8
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B

    monitor-enter p0

    .line 1131
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter deleteGbaKsnaf, gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nafId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 1132
    const/4 v0, 0x0

    .line 1133
    .local v0, "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->transByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, "nafIdHexString":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_30

    .line 1135
    const-string v3, "nafId is null, deleteGbaKsnaf fail"

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_67

    .line 1136
    monitor-exit p0

    return v2

    .line 1138
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :cond_30
    :try_start_30
    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$KsNafElem;

    move-object v0, v3

    .line 1139
    if-nez v0, :cond_46

    .line 1140
    const-string v3, "nafId is not in mKsNafTable, deleteGbaKsnaf fail"

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_67

    .line 1141
    monitor-exit p0

    return v2

    .line 1143
    :cond_46
    :try_start_46
    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    if-eqz v3, :cond_65

    .line 1144
    iget v2, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mType:I

    if-eq v2, p1, :cond_53

    .line 1145
    const-string v2, "gba type is not equal in ksnaf, ingored"

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 1147
    :cond_53
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->resetAuthCounts(Ljava/lang/String;)V

    .line 1148
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->removeKsNaf(Ljava/lang/String;)V

    .line 1149
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->removeBtid(Ljava/lang/String;)V

    .line 1150
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->resetBootstrapCounts(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0}, Lcom/huawei/ims/GbaAuth;->reset()V
    :try_end_62
    .catchall {:try_start_46 .. :try_end_62} :catchall_67

    .line 1152
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 1154
    :cond_65
    monitor-exit p0

    return v2

    .line 1130
    .end local v0    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v1    # "nafIdHexString":Ljava/lang/String;
    .end local p1    # "gbaType":I
    .end local p2    # "nafId":[B
    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getGbaAuthUtil()Lcom/huawei/ims/GbaAuthUtil;
    .registers 2

    monitor-enter p0

    .line 389
    :try_start_1
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaAuthUtil:Lcom/huawei/ims/GbaAuthUtil;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getGbaKsNaf(I[B)Lcom/huawei/ims/GbaAuth$GbaResult;
    .registers 10
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B

    monitor-enter p0

    .line 628
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter getGbaKsNaf, gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nafId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    new-instance v1, Lcom/huawei/ims/GbaAuth$GbaResult;

    invoke-direct {v1}, Lcom/huawei/ims/GbaAuth$GbaResult;-><init>()V

    .line 633
    .local v1, "gbaRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    invoke-direct {p0}, Lcom/huawei/ims/GbaAuth;->handleTimeout()V

    .line 636
    invoke-direct {p0}, Lcom/huawei/ims/GbaAuth;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 637
    sget-object v2, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KsNafState;

    invoke-virtual {v2}, Lcom/huawei/ims/GbaAuth$KsNafState;->getValue()I

    move-result v2

    iput v2, v1, Lcom/huawei/ims/GbaAuth$GbaResult;->mStatus:I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_ab

    .line 638
    monitor-exit p0

    return-object v1

    .line 642
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :cond_3a
    if-eqz p2, :cond_49

    .line 643
    :try_start_3c
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/GbaAuth$KsNafElem;

    move-object v0, v2

    .line 647
    :cond_49
    if-nez v0, :cond_55

    .line 648
    sget-object v2, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KsNafState;

    invoke-virtual {v2}, Lcom/huawei/ims/GbaAuth$KsNafState;->getValue()I

    move-result v2

    iput v2, v1, Lcom/huawei/ims/GbaAuth$GbaResult;->mStatus:I
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_ab

    .line 649
    monitor-exit p0

    return-object v1

    .line 652
    :cond_55
    :try_start_55
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBtid:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 655
    .local v2, "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    iget-object v3, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    if-eqz v3, :cond_73

    .line 659
    if-eqz v2, :cond_6c

    .line 660
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mIsUsed:Z

    .line 662
    :cond_6c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/huawei/ims/GbaAuth;->processGbaWhenKsNafValid(Lcom/huawei/ims/GbaAuth$KsNafElem;Lcom/huawei/ims/GbaAuth$GbaResult;I[B)Lcom/huawei/ims/GbaAuth$GbaResult;

    move-result-object v3
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_ab

    move-object v1, v3

    .line 663
    monitor-exit p0

    return-object v1

    .line 667
    :cond_73
    if-eqz v2, :cond_a1

    :try_start_75
    iget-object v3, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    if-eqz v3, :cond_a1

    .line 668
    iget v3, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    if-eq v3, p1, :cond_82

    .line 669
    const-string v3, "gba type is not equal in btid, ingored"

    invoke-direct {p0, v3}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 671
    :cond_82
    sget-object v3, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KsNafState;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth$KsNafState;->getValue()I

    move-result v3

    iput v3, v1, Lcom/huawei/ims/GbaAuth$GbaResult;->mStatus:I

    .line 672
    const-string v3, ""
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_ab

    .line 674
    .local v3, "tempBtid":Ljava/lang/String;
    :try_start_8c
    new-instance v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mBtid:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_95
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8c .. :try_end_95} :catch_97
    .catchall {:try_start_8c .. :try_end_95} :catchall_ab

    move-object v3, v4

    .line 677
    goto :goto_9d

    .line 675
    :catch_97
    move-exception v4

    .line 676
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_98
    const-string v5, "CString to UTF-8 fail"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 678
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_9d
    iput-object v3, v1, Lcom/huawei/ims/GbaAuth$GbaResult;->mBtid:Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_ab

    .line 679
    monitor-exit p0

    return-object v1

    .line 683
    .end local v3    # "tempBtid":Ljava/lang/String;
    :cond_a1
    :try_start_a1
    sget-object v3, Lcom/huawei/ims/GbaAuth$KsNafState;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KsNafState;

    invoke-virtual {v3}, Lcom/huawei/ims/GbaAuth$KsNafState;->getValue()I

    move-result v3

    iput v3, v1, Lcom/huawei/ims/GbaAuth$GbaResult;->mStatus:I
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_ab

    .line 685
    monitor-exit p0

    return-object v1

    .line 627
    .end local v0    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v1    # "gbaRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    .end local v2    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local p1    # "gbaType":I
    .end local p2    # "nafId":[B
    :catchall_ab
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 441
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    .line 481
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_7f

    .line 476
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/GbaAuth$KsNafElem;

    if-eqz v0, :cond_7f

    .line 477
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/GbaAuth$KsNafElem;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->notifyKsNaf(Lcom/huawei/ims/GbaAuth$KsNafElem;)V

    goto :goto_7f

    .line 471
    :pswitch_2d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/GbaAuth$BtidElem;

    if-eqz v0, :cond_7f

    .line 472
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->notifyBpUpdate(Lcom/huawei/ims/GbaAuth$BtidElem;)V

    goto :goto_7f

    .line 466
    :pswitch_3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/GbaAuth$AkaResult;

    if-eqz v0, :cond_7f

    .line 467
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/GbaAuth$AkaResult;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->notifyUiccAuth(Lcom/huawei/ims/GbaAuth$AkaResult;)V

    goto :goto_7f

    .line 464
    :pswitch_49
    goto :goto_7f

    .line 462
    :pswitch_4a
    goto :goto_7f

    .line 460
    :pswitch_4b
    goto :goto_7f

    .line 455
    :pswitch_4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/GbaAuth$AuthResp;

    if-eqz v0, :cond_7f

    .line 456
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V

    goto :goto_7f

    .line 443
    :pswitch_5a
    const/4 v0, 0x0

    .line 444
    .local v0, "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 445
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6d

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6d

    .line 446
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/huawei/ims/GbaAuth$AuthResp;

    goto :goto_7b

    .line 448
    :cond_6d
    const-string v2, "EVENT_REQUEST_UICC_AUTH_DONE err"

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 449
    new-instance v2, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {v2}, Lcom/huawei/ims/GbaAuth$AuthResp;-><init>()V

    move-object v0, v2

    .line 450
    const/4 v2, 0x1

    iput v2, v0, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    .line 452
    :goto_7b
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->handleUiccAuthDone(Lcom/huawei/ims/GbaAuth$AuthResp;)V

    .line 453
    nop

    .line 484
    .end local v0    # "resp":Lcom/huawei/ims/GbaAuth$AuthResp;
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_7f
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_3b
        :pswitch_2d
        :pswitch_1f
    .end packed-switch
.end method

.method declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    .line 718
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset GBA to null, previous GBA status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 719
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 720
    monitor-exit p0

    return-void

    .line 717
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stringUtf8ToBytes(Ljava/lang/String;)[B
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    monitor-enter p0

    .line 393
    if-nez p1, :cond_6

    .line 394
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 397
    :cond_6
    const/4 v0, 0x0

    .line 399
    .local v0, "ret":[B
    :try_start_7
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_d} :catch_11
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    move-object v0, v1

    .line 402
    goto :goto_26

    .line 392
    .end local v0    # "ret":[B
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    .end local p1    # "str":Ljava/lang/String;
    :catchall_f
    move-exception p1

    goto :goto_28

    .line 400
    .restart local v0    # "ret":[B
    .restart local p1    # "str":Ljava/lang/String;
    :catch_11
    move-exception v1

    .line 401
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stringUtf8ToBytes Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_f

    .line 403
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_26
    monitor-exit p0

    return-object v0

    .line 392
    .end local v0    # "ret":[B
    .end local p1    # "str":Ljava/lang/String;
    :goto_28
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized triggerGbaBootstrap(I[B[BLjava/lang/Object;)I
    .registers 8
    .param p1, "gbaType"    # I
    .param p2, "rand"    # [B
    .param p3, "auth"    # [B
    .param p4, "asyncSign"    # Ljava/lang/Object;

    monitor-enter p0

    .line 487
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter triggerGbaBootstrap gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asyncSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 489
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 490
    iput-object p4, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 492
    new-instance v0, Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {v0}, Lcom/huawei/ims/GbaAuth$BtidElem;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 493
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput p1, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    .line 496
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mIsUsed:Z

    .line 498
    if-nez p1, :cond_58

    .line 499
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p4}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p2, p3, v2}, Lcom/huawei/ims/ImsRIL;->requestUiccAuth([B[BLandroid/os/Message;)V

    goto :goto_62

    .line 502
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :cond_58
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCm:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p4}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, p2, p3, v2}, Lcom/huawei/ims/ImsRIL;->requestUiccGbaBootStrap([B[BLandroid/os/Message;)V

    .line 504
    :goto_62
    const-string v0, "leave triggerGbaBootstrap"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    .line 505
    monitor-exit p0

    return v1

    .line 486
    .end local p1    # "gbaType":I
    .end local p2    # "rand":[B
    .end local p3    # "auth":[B
    .end local p4    # "asyncSign":Ljava/lang/Object;
    :catchall_69
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized triggerGbaBpUpdate(I[B[BLjava/lang/String;Ljava/lang/Object;)I
    .registers 10
    .param p1, "gbaType"    # I
    .param p2, "rand"    # [B
    .param p3, "btid"    # [B
    .param p4, "lifeTime"    # Ljava/lang/String;
    .param p5, "asyncSign"    # Ljava/lang/Object;

    monitor-enter p0

    .line 509
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter triggerGbaBpUpdate, gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lifeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asyncSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", btid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 512
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v0, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 513
    iput-object p5, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput p1, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mType:I

    .line 515
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object p3, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mBtid:[B

    .line 516
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object p2, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mRand:[B
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_ed

    .line 518
    :try_start_4f
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 520
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    .line 528
    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 529
    .local v1, "expectLifeTime":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 530
    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->isTimeout(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 531
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v2, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v3, v3, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v2, v3}, Ljava/util/Date;->setMinutes(I)V

    goto :goto_91

    .line 533
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :cond_8c
    const-string v2, "enter triggerGbaBpUpdate, expect lifeTime is timeout, use the lifeTime from nework"

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/text/ParseException; {:try_start_4f .. :try_end_91} :catch_92
    .catchall {:try_start_4f .. :try_end_91} :catchall_ed

    .line 537
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v1    # "expectLifeTime":Ljava/util/Date;
    :goto_91
    goto :goto_98

    .line 535
    :catch_92
    move-exception v0

    .line 536
    .local v0, "e":Ljava/text/ParseException;
    :try_start_93
    const-string v1, "triggerGbaBpUpdate occur exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V

    .line 539
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_98
    iget-object v0, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v0, v0, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    if-nez v0, :cond_c8

    .line 540
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 541
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 542
    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iput-object v0, v1, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not parse the lifeTime. set lifeTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v2, v2, Lcom/huawei/ims/GbaAuth$BtidElem;->mLifeTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 546
    .end local v0    # "currDate":Ljava/util/Date;
    :cond_c8
    if-nez p1, :cond_e5

    .line 548
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/GbaAuth;->restoreBtid(Ljava/lang/String;Lcom/huawei/ims/GbaAuth$BtidElem;)V

    .line 551
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 552
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z

    .line 553
    const-string v1, "leave triggerGBABpUpdate"

    invoke-direct {p0, v1}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V
    :try_end_e2
    .catchall {:try_start_93 .. :try_end_e2} :catchall_ed

    .line 554
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 556
    .end local v0    # "msg":Landroid/os/Message;
    :cond_e5
    :try_start_e5
    const-string v0, "leave triggerGBABpUpdate"

    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_e5 .. :try_end_ea} :catchall_ed

    .line 557
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 508
    .end local p1    # "gbaType":I
    .end local p2    # "rand":[B
    .end local p3    # "btid":[B
    .end local p4    # "lifeTime":Ljava/lang/String;
    .end local p5    # "asyncSign":Ljava/lang/Object;
    :catchall_ed
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized triggerGbaKsNaf(I[B[BLjava/lang/Object;)I
    .registers 13
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B
    .param p3, "impi"    # [B
    .param p4, "asyncSign"    # Ljava/lang/Object;

    monitor-enter p0

    .line 562
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter triggerGbaKsNaf, gbaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asyncSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nafId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 570
    invoke-direct {p0, p2}, Lcom/huawei/ims/GbaAuth;->transByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "nafIdHexString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->isBootstrapExpire(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_45

    .line 573
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->handleBootstrapExpire(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_ff

    .line 574
    monitor-exit p0

    return v2

    .line 576
    .end local p0    # "this":Lcom/huawei/ims/GbaAuth;
    :cond_45
    :try_start_45
    invoke-direct {p0, v0}, Lcom/huawei/ims/GbaAuth;->addBootstrapTimes(Ljava/lang/String;)V

    .line 578
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "naf":Ljava/lang/String;
    sget-object v3, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v3, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 580
    iput-object p4, p0, Lcom/huawei/ims/GbaAuth;->mAsyncSign:Ljava/lang/Object;

    .line 582
    if-nez p1, :cond_f9

    .line 584
    iget-object v3, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/GbaAuth$KsNafElem;

    .line 586
    .local v3, "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    if-nez v3, :cond_6e

    .line 587
    new-instance v4, Lcom/huawei/ims/GbaAuth$KsNafElem;

    invoke-direct {v4}, Lcom/huawei/ims/GbaAuth$KsNafElem;-><init>()V

    move-object v3, v4

    .line 588
    iput p1, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mType:I

    .line 589
    iput-object p2, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    .line 590
    iget-object v4, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mBtid:[B

    iput-object v4, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mBtid:[B

    .line 592
    :cond_6e
    sget-object v4, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v4, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 595
    iget-object v4, p0, Lcom/huawei/ims/GbaAuth;->mBtidTable:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/huawei/ims/GbaAuth;->mCurrBtid:Lcom/huawei/ims/GbaAuth$BtidElem;

    iget-object v5, v5, Lcom/huawei/ims/GbaAuth$BtidElem;->mBtid:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/GbaAuth$BtidElem;

    .line 597
    .local v4, "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    if-nez v4, :cond_8b

    .line 598
    const-string v5, "leave triggerGBAKsNAF, btid get btid null"

    invoke-direct {p0, v5}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_45 .. :try_end_89} :catchall_ff

    .line 599
    monitor-exit p0

    return v2

    .line 602
    :cond_8b
    :try_start_8b
    iget-object v5, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mKs:[B

    iget-object v6, v4, Lcom/huawei/ims/GbaAuth$BtidElem;->mRand:[B

    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mNafId:[B

    invoke-direct {p0, v6, p3, v7}, Lcom/huawei/ims/GbaAuth;->generateData([B[B[B)[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/huawei/ims/GbaAuth;->hmacSha256([B[B)[B

    move-result-object v5

    .line 604
    .local v5, "tempKsNaf":[B
    if-nez v5, :cond_b1

    .line 605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "leave triggerGbaKsNaf tempksNaf = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->loge(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_8b .. :try_end_af} :catchall_ff

    .line 606
    monitor-exit p0

    return v2

    .line 609
    :cond_b1
    :try_start_b1
    iget-boolean v2, p0, Lcom/huawei/ims/GbaAuth;->mIsKsNafEncodedByBase64:Z

    if-eqz v2, :cond_bd

    .line 610
    const/4 v2, 0x2

    invoke-static {v5, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    iput-object v2, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    goto :goto_bf

    .line 612
    :cond_bd
    iput-object v5, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    .line 614
    :goto_bf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ksnaf, base64="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/huawei/ims/GbaAuth;->mIsKsNafEncodedByBase64:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$KsNafElem;->mKsNaf:[B

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->hiddenPrivacyByteInfo([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/huawei/ims/GbaAuth;->mKsNafTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/huawei/ims/GbaAuth;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 618
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {p0, v2}, Lcom/huawei/ims/GbaAuth;->sendMessage(Landroid/os/Message;)Z

    .line 619
    const-string v6, "leave triggerGbaKsNaf"

    invoke-direct {p0, v6}, Lcom/huawei/ims/GbaAuth;->logi(Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_b1 .. :try_end_f6} :catchall_ff

    .line 620
    const/4 v6, 0x0

    monitor-exit p0

    return v6

    .line 622
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local v4    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local v5    # "tempKsNaf":[B
    :cond_f9
    :try_start_f9
    sget-object v3, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    iput-object v3, p0, Lcom/huawei/ims/GbaAuth;->mGbaStatus:Lcom/huawei/ims/GbaAuth$GbaStatus;
    :try_end_fd
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_ff

    .line 623
    monitor-exit p0

    return v2

    .line 561
    .end local v0    # "nafIdHexString":Ljava/lang/String;
    .end local v1    # "naf":Ljava/lang/String;
    .end local p1    # "gbaType":I
    .end local p2    # "nafId":[B
    .end local p3    # "impi":[B
    .end local p4    # "asyncSign":Ljava/lang/Object;
    :catchall_ff
    move-exception p1

    monitor-exit p0

    throw p1
.end method
