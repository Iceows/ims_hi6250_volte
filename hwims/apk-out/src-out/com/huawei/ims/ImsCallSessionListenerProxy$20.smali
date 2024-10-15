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
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 553
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 556
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    # invokes: Lcom/huawei/ims/ImsCallSessionListenerProxy;->cleanup()V
    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->access$100(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V

    .line 557
    return-void
.end method
