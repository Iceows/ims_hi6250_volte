.class Lcom/huawei/ims/SDKChrReport$1;
.super Ljava/lang/Object;
.source "SDKChrReport.java"

# interfaces
.implements Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;


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

    .line 146
    iput-object p1, p0, Lcom/huawei/ims/SDKChrReport$1;->this$0:Lcom/huawei/ims/SDKChrReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chrHmeCbGetErrReport([I)V
    .locals 2
    .param p1, "iCHRPara"    # [I

    .line 149
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p1, v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/SDKChrReport$1;->this$0:Lcom/huawei/ims/SDKChrReport;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/huawei/ims/SDKChrReport;->access$000(Lcom/huawei/ims/SDKChrReport;[I[Ljava/lang/String;)V

    .line 153
    return-void
.end method
