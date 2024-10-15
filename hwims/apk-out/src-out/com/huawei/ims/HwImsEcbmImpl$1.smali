.class Lcom/huawei/ims/HwImsEcbmImpl$1;
.super Ljava/lang/Object;
.source "HwImsEcbmImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/HwImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsEcbmImpl;

.field final synthetic val$isEntered:Z

.field final synthetic val$listener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsEcbmImpl;ZLcom/android/ims/internal/IImsEcbmListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsEcbmImpl;

    .line 80
    iput-object p1, p0, Lcom/huawei/ims/HwImsEcbmImpl$1;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    iput-boolean p2, p0, Lcom/huawei/ims/HwImsEcbmImpl$1;->val$isEntered:Z

    iput-object p3, p0, Lcom/huawei/ims/HwImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsEcbmImpl$1;->val$isEntered:Z

    if-eqz v0, :cond_a

    .line 85
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V

    goto :goto_f

    .line 87
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl$1;->val$listener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 91
    :goto_f
    goto :goto_27

    .line 89
    :catch_10
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException @createEcbmCallBackThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HwImsEcbmImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method
