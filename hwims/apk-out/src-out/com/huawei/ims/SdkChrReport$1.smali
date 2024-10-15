.class Lcom/huawei/ims/SdkChrReport$1;
.super Ljava/lang/Object;
.source "SdkChrReport.java"

# interfaces
.implements Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;


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

    .line 41
    iput-object p1, p0, Lcom/huawei/ims/SdkChrReport$1;->this$0:Lcom/huawei/ims/SdkChrReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chrHmeCbGetErrReport([I)V
    .registers 4
    .param p1, "chrPara"    # [I

    .line 44
    if-eqz p1, :cond_9

    array-length v0, p1

    if-lez v0, :cond_9

    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p1, v0

    .line 47
    :cond_9
    iget-object v0, p0, Lcom/huawei/ims/SdkChrReport$1;->this$0:Lcom/huawei/ims/SdkChrReport;

    const/4 v1, 0x0

    # invokes: Lcom/huawei/ims/SdkChrReport;->reportSdkChrParas([I[Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/huawei/ims/SdkChrReport;->access$000(Lcom/huawei/ims/SdkChrReport;[I[Ljava/lang/String;)V

    .line 48
    return-void
.end method
