.class Lcom/huawei/ims/vt/MediaManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/MediaManager;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/MediaManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/vt/MediaManager;

    .line 55
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaManager$1;->this$0:Lcom/huawei/ims/vt/MediaManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 58
    if-nez p1, :cond_11

    .line 59
    const-string v0, "MediaManager"

    const-string v1, "Call state is IDLE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/huawei/ims/vt/VtUtils;->setPreCallDataUsage(J)V

    .line 62
    invoke-static {v0, v1}, Lcom/huawei/ims/vt/VtUtils;->setTotalCallDataUsage(J)V

    .line 65
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 66
    return-void
.end method
