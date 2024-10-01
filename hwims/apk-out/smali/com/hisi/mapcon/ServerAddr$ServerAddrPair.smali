.class public Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;
.super Ljava/lang/Object;
.source "ServerAddr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisi/mapcon/ServerAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerAddrPair"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "addr"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->type:I

    .line 17
    iput-object p2, p0, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->address:Ljava/lang/String;

    .line 18
    return-void
.end method
