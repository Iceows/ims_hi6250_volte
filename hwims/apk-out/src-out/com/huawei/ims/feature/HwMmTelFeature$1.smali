.class Lcom/huawei/ims/feature/HwMmTelFeature$1;
.super Landroid/os/Handler;
.source "HwMmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/feature/HwMmTelFeature;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/feature/HwMmTelFeature;


# direct methods
.method constructor <init>(Lcom/huawei/ims/feature/HwMmTelFeature;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/feature/HwMmTelFeature;

    .line 135
    iput-object p1, p0, Lcom/huawei/ims/feature/HwMmTelFeature$1;->this$0:Lcom/huawei/ims/feature/HwMmTelFeature;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 138
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature$1;->this$0:Lcom/huawei/ims/feature/HwMmTelFeature;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/feature/HwMmTelFeature;->handleMessage(Landroid/os/Message;)V

    .line 139
    return-void
.end method
