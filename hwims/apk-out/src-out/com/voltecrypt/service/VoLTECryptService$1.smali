.class Lcom/voltecrypt/service/VoLTECryptService$1;
.super Lcom/voltecrypt/service/IVoLTECryptService$Stub;
.source "VoLTECryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voltecrypt/service/VoLTECryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voltecrypt/service/VoLTECryptService;


# direct methods
.method constructor <init>(Lcom/voltecrypt/service/VoLTECryptService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/voltecrypt/service/VoLTECryptService;

    .line 36
    iput-object p1, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    invoke-direct {p0}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callVoLTEEncryptPhone(Ljava/lang/String;)I
    .registers 4
    .param p1, "phoneNum"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const-string v1, "callVoLTEEncryptPhone"

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinderForUnsupportInterface(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$000(Lcom/voltecrypt/service/VoLTECryptService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public closeEncryptedVoLTE()I
    .registers 3

    .line 86
    const-string v0, "VoLTECryptService"

    const-string v1, "CloseEncryptedVoLTE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinder()Z
    invoke-static {v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$100(Lcom/voltecrypt/service/VoLTECryptService;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 88
    const-string v1, "CloseEncryptedVoLTE: not call from hemihua."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, -0x1

    return v0

    .line 92
    :cond_16
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const/4 v1, 0x0

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->handleEncryptSwitchChanged(Z)V
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$200(Lcom/voltecrypt/service/VoLTECryptService;Z)V

    .line 93
    return v1
.end method

.method public getEncryptionVoLTESwitchStatus()I
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const-string v1, "getEncryptionVoLTESwitchStatus"

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinderForUnsupportInterface(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$000(Lcom/voltecrypt/service/VoLTECryptService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRootStatus()I
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const-string v1, "getRootStatus"

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinderForUnsupportInterface(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$000(Lcom/voltecrypt/service/VoLTECryptService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVoLTESwitchStatus()I
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const-string v1, "getVoLTESwitchStatus"

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinderForUnsupportInterface(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$000(Lcom/voltecrypt/service/VoLTECryptService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openEncryptedVoLTE()I
    .registers 3

    .line 74
    const-string v0, "VoLTECryptService"

    const-string v1, "OpenEncryptedVoLTE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinder()Z
    invoke-static {v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$100(Lcom/voltecrypt/service/VoLTECryptService;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 76
    const-string v1, "OpenEncryptedVoLTE: not called from expected app."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, -0x1

    return v0

    .line 80
    :cond_16
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const/4 v1, 0x1

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->handleEncryptSwitchChanged(Z)V
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$200(Lcom/voltecrypt/service/VoLTECryptService;Z)V

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public setEncryptionVoLTESwitchStatus(I)I
    .registers 4
    .param p1, "status"    # I

    .line 54
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const-string v1, "setEncryptionVoLTESwitchStatus"

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinderForUnsupportInterface(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$000(Lcom/voltecrypt/service/VoLTECryptService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPowerMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 59
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const-string v1, "setPowerMode"

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinderForUnsupportInterface(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$000(Lcom/voltecrypt/service/VoLTECryptService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setVoLTESwitchStatus(I)I
    .registers 4
    .param p1, "status"    # I

    .line 44
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService$1;->this$0:Lcom/voltecrypt/service/VoLTECryptService;

    const-string v1, "setVoLTESwitchStatus"

    # invokes: Lcom/voltecrypt/service/VoLTECryptService;->checkBinderForUnsupportInterface(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/voltecrypt/service/VoLTECryptService;->access$000(Lcom/voltecrypt/service/VoLTECryptService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
