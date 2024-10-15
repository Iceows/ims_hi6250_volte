.class Lcom/huawei/ims/ImsCallSessionListenerProxy$6;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field final synthetic val$srcAccessTech:I

.field final synthetic val$targetAccessTech:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 170
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$srcAccessTech:I

    iput p3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$targetAccessTech:I

    iput-object p4, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 173
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionHandover()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    # getter for: Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$srcAccessTech:I

    iget v2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$targetAccessTech:I

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 175
    return-void
.end method
