.class Lcom/huawei/ims/feature/HwMMTelFeature$1;
.super Landroid/os/Handler;
.source "HwMMTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/feature/HwMMTelFeature;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/feature/HwMMTelFeature;


# direct methods
.method constructor <init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/feature/HwMMTelFeature;

    .line 98
    iput-object p1, p0, Lcom/huawei/ims/feature/HwMMTelFeature$1;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature$1;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature;->handleMessage(Landroid/os/Message;)V

    .line 102
    return-void
.end method
