.class Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil$P2pTransDataHeader;
.super Ljava/lang/Object;
.source "P2pTransDataStructureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pTransDataHeader"
.end annotation


# static fields
.field private static final DATA_LEN_POS:I = 0x2

.field private static final DATA_TYPE_POS:I = 0x0

.field private static final HEADER_LEN:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil$P2pTransDataHeader;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
