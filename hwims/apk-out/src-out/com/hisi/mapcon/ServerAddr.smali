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
    .registers 1

    .line 44
    new-instance v0, Lcom/hisi/mapcon/ServerAddr$1;

    invoke-direct {v0}, Lcom/hisi/mapcon/ServerAddr$1;-><init>()V

    sput-object v0, Lcom/hisi/mapcon/ServerAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p1, :cond_9

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    goto :goto_f

    .line 82
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    .line 84
    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "type":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_18
    iget v2, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    if-ge v1, v2, :cond_32

    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, "addr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-object v3, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    new-instance v4, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;

    invoke-direct {v4, v0, v2}, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "addr":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 96
    .end local v1    # "index":I
    :cond_32
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "addr"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    new-instance v1, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;

    invoke-direct {v1, p1, p2}, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    .line 107
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v0, "retString":Ljava/lang/StringBuffer;
    const-string v1, "serverAddr:size is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v1, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 143
    iget-object v1, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 144
    .local v1, "mAddressSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1a
    if-ge v2, v1, :cond_43

    .line 145
    iget-object v3, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;

    .line 146
    .local v3, "pair":Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;
    const-string v4, "index:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 148
    const-string v4, " type:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget v4, v3, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 150
    const-string v4, " addr:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v4, v3, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->address:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 153
    .end local v2    # "index":I
    .end local v3    # "pair":Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 116
    if-nez p1, :cond_3

    .line 117
    return-void

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, "size":I
    const/4 v1, 0x0

    .line 122
    .local v1, "pair":Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;
    iget v2, p0, Lcom/hisi/mapcon/ServerAddr;->mSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_10
    if-ge v2, v0, :cond_28

    .line 125
    iget-object v3, p0, Lcom/hisi/mapcon/ServerAddr;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;

    .line 126
    iget v3, v1, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v3, v1, Lcom/hisi/mapcon/ServerAddr$ServerAddrPair;->address:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 129
    .end local v2    # "index":I
    :cond_28
    return-void
.end method
