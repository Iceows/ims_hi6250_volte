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
.field public call_index:I

.field public curr_call_details:Lcom/huawei/ims/ImsCallProfiles;

.field public dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

.field public error:I

.field public modify_reason:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 683
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v0}, Lcom/huawei/ims/ImsCallProfiles;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;I)V

    .line 684
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;I)V
    .locals 1
    .param p1, "imsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p2, "callIndex"    # I

    .line 687
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;II)V

    .line 688
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;I)V
    .locals 1
    .param p1, "currImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p2, "destImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p3, "callIndex"    # I

    .line 692
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;II)V

    .line 693
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;II)V
    .locals 0
    .param p1, "currImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p2, "destImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p3, "callIndex"    # I
    .param p4, "err"    # I

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->curr_call_details:Lcom/huawei/ims/ImsCallProfiles;

    .line 697
    iput-object p2, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    .line 698
    iput p3, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    .line 699
    iput p4, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->error:I

    .line 700
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;III)V
    .locals 0
    .param p1, "currImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p2, "destImsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p3, "callIndex"    # I
    .param p4, "err"    # I
    .param p5, "reason"    # I

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->curr_call_details:Lcom/huawei/ims/ImsCallProfiles;

    .line 705
    iput-object p2, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    .line 706
    iput p3, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    .line 707
    iput p4, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->error:I

    .line 708
    iput p5, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    .line 709
    return-void
.end method


# virtual methods
.method public findError()Z
    .locals 2

    .line 716
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->error:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->error:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameModify(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Z
    .locals 2
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 736
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    iget v1, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v0, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iget-object v1, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v0, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    iget-object v1, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    iget v1, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public modifyByTimeOut()Z
    .locals 3

    .line 721
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public setImsCallProfile(Lcom/huawei/ims/ImsCallProfiles;)V
    .locals 1
    .param p1, "imsCallProfiles"    # Lcom/huawei/ims/ImsCallProfiles;

    .line 712
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v0, p1}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lcom/huawei/ims/ImsCallProfiles;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    .line 713
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->curr_call_details:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
