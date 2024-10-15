.class Lcom/huawei/ims/HwImsUtImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsUtImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 1110
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1113
    if-nez p2, :cond_a

    .line 1114
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v1, "onReceive intent is null"

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$400(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1115
    return-void

    .line 1118
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1121
    const-string v1, "com.hisi.mapcon.servicefailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_129

    .line 1123
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # getter for: Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I
    invoke-static {v1}, Lcom/huawei/ims/HwImsUtImpl;->access$500(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v1

    # getter for: Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->access$600()I

    move-result v4

    if-eq v1, v4, :cond_68

    .line 1124
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive com.hisi.mapcon.servicefailed, but not for this slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # getter for: Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I
    invoke-static {v3}, Lcom/huawei/ims/HwImsUtImpl;->access$500(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current SlotId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    # getter for: Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->access$600()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", return."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1126
    return-void

    .line 1128
    :cond_68
    const-string v1, "serviceType"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1129
    .local v1, "serviceType":I
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-static {v4}, Lcom/huawei/ims/HwImsUtImpl;->access$700(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v4

    .line 1130
    .local v4, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle UT data connection vowifi conntion begin fail and serviceType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1131
    # getter for: Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->access$800()Z

    move-result v5

    if-eqz v5, :cond_128

    if-ne v1, v2, :cond_128

    if-nez v4, :cond_96

    goto/16 :goto_128

    .line 1134
    :cond_96
    iget-object v5, v4, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-eq v5, v6, :cond_9d

    .line 1135
    return-void

    .line 1137
    :cond_9d
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # getter for: Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z
    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$900(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 1138
    return-void

    .line 1140
    :cond_a6
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    # setter for: Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->access$1002(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1141
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V
    invoke-static {v5, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$1100(Lcom/huawei/ims/HwImsUtImpl;Z)V

    .line 1142
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V
    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1200(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1143
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # getter for: Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I
    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1300(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x6

    if-ge v5, v6, :cond_10c

    .line 1145
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # operator++ for: Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I
    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1308(Lcom/huawei/ims/HwImsUtImpl;)I

    .line 1146
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v5, v4, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1147
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v6, "received ACTION_MAPCON_SERVICE_FAILED, retry tunnel setup."

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1148
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z
    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->access$1400(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 1149
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I
    invoke-static {v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1500(Lcom/huawei/ims/HwImsUtImpl;Z)I

    .line 1150
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    # setter for: Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$1002(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1151
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V
    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1600(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1152
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V
    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1700(Lcom/huawei/ims/HwImsUtImpl;)V

    goto :goto_127

    .line 1154
    :cond_f0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # setter for: Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$1302(Lcom/huawei/ims/HwImsUtImpl;I)I

    .line 1155
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v3, "handle UT data connection received ACTION_MAPCON_SERVICE_FAILED, tunnel setup fail."

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1156
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V
    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1600(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1157
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V
    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1800(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1158
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v2, v7}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    goto :goto_127

    .line 1162
    :cond_10c
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # setter for: Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$1302(Lcom/huawei/ims/HwImsUtImpl;I)I

    .line 1163
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v3, "handle UT data connection received ACTION_MAPCON_SERVICE_FAILED,tunnel setup fail."

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1164
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V
    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1600(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1165
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V
    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->access$1800(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1166
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v2, v7}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 1168
    .end local v1    # "serviceType":I
    .end local v4    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :goto_127
    goto :goto_17d

    .line 1132
    .restart local v1    # "serviceType":I
    .restart local v4    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_128
    :goto_128
    return-void

    .line 1168
    .end local v1    # "serviceType":I
    .end local v4    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_129
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 1169
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1170
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->handleConnectivity(Landroid/net/NetworkInfo;)V
    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$1900(Lcom/huawei/ims/HwImsUtImpl;Landroid/net/NetworkInfo;)V

    .line 1171
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    goto :goto_17d

    :cond_13f
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 1175
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # setter for: Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCwInModem:Z
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$2002(Lcom/huawei/ims/HwImsUtImpl;Z)Z

    .line 1176
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1177
    .local v1, "isAirplaneModeOn":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirplaneModeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1179
    if-eqz v1, :cond_16f

    .line 1180
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->access$2100(Lcom/huawei/ims/HwImsUtImpl;I)V

    .line 1182
    .end local v1    # "isAirplaneModeOn":Z
    :cond_16f
    goto :goto_17d

    :cond_170
    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 1183
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->handleUtApnConnection(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/huawei/ims/HwImsUtImpl;->access$2200(Lcom/huawei/ims/HwImsUtImpl;Landroid/content/Intent;)V

    .line 1188
    :goto_17d
    return-void

    .line 1185
    :cond_17e
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v2, "intent not support"

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$400(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1186
    return-void
.end method
