.class Lcom/huawei/ims/HwImsServiceImpl$2;
.super Ljava/lang/Object;
.source "HwImsServiceImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/HwImsServiceImpl;->processDriverImsCallsList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/huawei/ims/DriverImsCall;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsServiceImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 1096
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/ims/DriverImsCall;Lcom/huawei/ims/DriverImsCall;)I
    .registers 5
    .param p1, "dc1"    # Lcom/huawei/ims/DriverImsCall;
    .param p2, "dc2"    # Lcom/huawei/ims/DriverImsCall;

    .line 1099
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v1, :cond_e

    iget-object v0, p2, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_e

    .line 1100
    const/4 v0, -0x1

    return v0

    .line 1102
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1096
    check-cast p1, Lcom/huawei/ims/DriverImsCall;

    check-cast p2, Lcom/huawei/ims/DriverImsCall;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl$2;->compare(Lcom/huawei/ims/DriverImsCall;Lcom/huawei/ims/DriverImsCall;)I

    move-result p1

    return p1
.end method
