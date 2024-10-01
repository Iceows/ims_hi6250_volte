.class public Lcom/hisi/mapcon/ServerAddr;
.super Ljava/lang/Object;
.source "ServerAddr.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hisi/mapcon/ServerAddr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;",
            ">;"
        }
    .end annotation
.end field

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/hisi/mapcon/ServerAddr$1;

    invoke-direct {v0}, Lcom/hisi/mapcon/ServerAddr$1;-><init>()V

    sput-object v0, Lcom/hisi/mapcon/ServerAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "type":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v2, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    if-ge v1, v2, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 38
    .local v2, "addr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    new-instance v4, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;

    invoke-direct {v4, v0, v2}, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v2    # "addr":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "index":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "addr"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    new-instance v1, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;

    invoke-direct {v1, p1, p2}, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    .line 51
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "retString":Ljava/lang/StringBuffer;
    const-string v1, "serverAddr:size is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget-object v1, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 80
    .local v1, "mAddressSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 81
    iget-object v3, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;

    .line 82
    .local v3, "pair":Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;
    const-string v4, "index:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    const-string v4, " type:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget v4, v3, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 86
    const-string v4, " addr:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v4, v3, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->address:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "index":I
    .end local v3    # "pair":Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 60
    iget-object v0, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61
    .local v0, "size":I
    const/4 v1, 0x0

    .line 63
    .local v1, "pair":Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;
    iget v2, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 66
    iget-object v3, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;

    .line 67
    iget v3, v1, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v3, v1, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->address:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "index":I
    :cond_0
    return-void
.end method
