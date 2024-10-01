.class Lcom/huawei/ims/ImsCallSessionListenerProxy$20;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 477
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$100(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V

    .line 481
    return-void
.end method
