.class Lcom/huawei/ims/SDKChrReport$2;
.super Ljava/lang/Object;
.source "SDKChrReport.java"

# interfaces
.implements Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/SDKChrReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/SDKChrReport;


# direct methods
.method constructor <init>(Lcom/huawei/ims/SDKChrReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/SDKChrReport;

    .line 156
    iput-object p1, p0, Lcom/huawei/ims/SDKChrReport$2;->this$0:Lcom/huawei/ims/SDKChrReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chrVtCbGetErrReport([I[Ljava/lang/String;)V
    .locals 1
    .param p1, "iCHRPara"    # [I
    .param p2, "strCHRPara"    # [Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/huawei/ims/SDKChrReport$2;->this$0:Lcom/huawei/ims/SDKChrReport;

    invoke-static {v0, p1, p2}, Lcom/huawei/ims/SDKChrReport;->access$000(Lcom/huawei/ims/SDKChrReport;[I[Ljava/lang/String;)V

    .line 160
    return-void
.end method
