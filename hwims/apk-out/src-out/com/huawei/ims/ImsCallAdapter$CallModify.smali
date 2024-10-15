.class public Lcom/huawei/ims/ImsCallAdapter$CallModify;
.super Ljava/lang/Object;
.source "ImsCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallModify"
.end annotation


# static fields
.field public static final E_CANCELLED:I = 0x7

.field public static final E_SUCCESS:I = 0x0

.field public static final E_UNUSED:I = 0x10

.field public static final R_REMOTE:I = 0x0

.field public static final R_RTCP_TIMEOUT:I = 0x2

.field public static final R_RTP_AND_RTCP_TIMEOUT:I = 0x3

.field public static final R_RTP_TIMEOUT:I = 0x1


# instance fields
.field private mCallIndex:I

.field private mCurrCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

.field private mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

.field private mError:I

.field private mModifyReason:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 815
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v0}, Lcom/huawei/ims/ImsCallProfiles;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;I)V

    .line 816
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;I)V
    .registers 4
    .param p1, "imsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p2, "callIndex"    # I

    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;II)V

    .line 826
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;I)V
    .registers 5
    .param p1, "currImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p2, "destImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p3, "callIndex"    # I

    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;II)V

    .line 837
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;II)V
    .registers 11
    .param p1, "currImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p2, "destImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p3, "callIndex"    # I
    .param p4, "err"    # I

    .line 849
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;III)V

    .line 850
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;III)V
    .registers 6
    .param p1, "currImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p2, "destImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p3, "callIndex"    # I
    .param p4, "err"    # I
    .param p5, "reason"    # I

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCurrCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    .line 864
    iput-object p2, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    .line 865
    iput p3, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCallIndex:I

    .line 866
    iput p4, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mError:I

    .line 867
    iput p5, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mModifyReason:I

    .line 868
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsCallAdapter$CallModify;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 765
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mError:I

    return v0
.end method

.method static synthetic access$002(Lcom/huawei/ims/ImsCallAdapter$CallModify;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;
    .param p1, "x1"    # I

    .line 765
    iput p1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mError:I

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 765
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsCallAdapter$CallModify;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 765
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCallIndex:I

    return v0
.end method


# virtual methods
.method public getCallIndex()I
    .registers 2

    .line 885
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCallIndex:I

    return v0
.end method

.method public getCurrCallProfiles()Lcom/huawei/ims/ImsCallProfiles;
    .registers 2

    .line 894
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCurrCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    return-object v0
.end method

.method public getDestCallProfiles()Lcom/huawei/ims/ImsCallProfiles;
    .registers 2

    .line 903
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    return-object v0
.end method

.method public getError()I
    .registers 2

    .line 912
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mError:I

    return v0
.end method

.method public getModifyReason()I
    .registers 2

    .line 876
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mModifyReason:I

    return v0
.end method

.method public isFailToModify()Z
    .registers 3

    .line 930
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mError:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isModifyByTimeOut()Z
    .registers 4

    .line 939
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mModifyReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method public isSameModify(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Z
    .registers 7
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 956
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    .line 957
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v0

    iget-object v1, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    .line 958
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v0

    iget-object v1, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v1

    if-ne v0, v1, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v3

    .line 959
    .local v0, "isImsCallProfileSame":Z
    :goto_21
    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCallIndex:I

    iget v4, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCallIndex:I

    if-ne v1, v4, :cond_30

    if-eqz v0, :cond_30

    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mModifyReason:I

    iget v4, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mModifyReason:I

    if-ne v1, v4, :cond_30

    goto :goto_31

    :cond_30
    move v2, v3

    :goto_31
    return v2
.end method

.method public setImsCallProfile(Lcom/huawei/ims/ImsCallProfiles;)V
    .registers 3
    .param p1, "imsCallProfiles"    # Lcom/huawei/ims/ImsCallProfiles;

    .line 921
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v0, p1}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lcom/huawei/ims/ImsCallProfiles;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    .line 922
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCallIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCurrCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mError:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->mModifyReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
