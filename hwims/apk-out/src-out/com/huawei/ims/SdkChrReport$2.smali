.class Lcom/huawei/ims/SdkChrReport$2;
.super Ljava/lang/Object;
.source "SdkChrReport.java"

# interfaces
.implements Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/SdkChrReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/SdkChrReport;


# direct methods
.method constructor <init>(Lcom/huawei/ims/SdkChrReport;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/SdkChrReport;

    .line 51
    iput-object p1, p0, Lcom/huawei/ims/SdkChrReport$2;->this$0:Lcom/huawei/ims/SdkChrReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chrVtCbGetErrReport([I[Ljava/lang/String;)V
    .registers 4
    .param p1, "chrPara"    # [I
    .param p2, "strChrPara"    # [Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/huawei/ims/SdkChrReport$2;->this$0:Lcom/huawei/ims/SdkChrReport;

    # invokes: Lcom/huawei/ims/SdkChrReport;->reportSdkChrParas([I[Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/huawei/ims/SdkChrReport;->access$000(Lcom/huawei/ims/SdkChrReport;[I[Ljava/lang/String;)V

    .line 55
    return-void
.end method
