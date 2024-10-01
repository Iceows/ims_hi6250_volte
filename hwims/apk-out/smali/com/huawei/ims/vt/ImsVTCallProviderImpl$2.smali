.class Lcom/huawei/ims/vt/ImsVTCallProviderImpl$2;
.super Ljava/lang/Object;
.source "ImsVTCallProviderImpl.java"

# interfaces
.implements Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/ImsVTCallProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    .line 80
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl$2;->this$0:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentDynamicRes(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 83
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video dimension change CallBack,width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl$2;->this$0:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->changePeerDimensions(II)V

    .line 85
    return-void
.end method
