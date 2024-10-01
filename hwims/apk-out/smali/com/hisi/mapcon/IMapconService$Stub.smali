.class public abstract Lcom/hisi/mapcon/IMapconService$Stub;
.super Landroid/os/Binder;
.source "IMapconService.java"

# interfaces
.implements Lcom/hisi/mapcon/IMapconService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisi/mapcon/IMapconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisi/mapcon/IMapconService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hisi.mapcon.IMapconService"

.field static final TRANSACTION_getUtOverWifiApn:I = 0xf

.field static final TRANSACTION_getVoWifiServiceDomain:I = 0xc

.field static final TRANSACTION_getVoWifiServiceState:I = 0xa

.field static final TRANSACTION_notifyImsOff:I = 0x6

.field static final TRANSACTION_notifyImsOn:I = 0x5

.field static final TRANSACTION_notifyRoaming:I = 0x10

.field static final TRANSACTION_notifyWifiOff:I = 0x4

.field static final TRANSACTION_sendMessage:I = 0x7

.field static final TRANSACTION_setDomain:I = 0x3

.field static final TRANSACTION_setVoWifiOff:I = 0x2

.field static final TRANSACTION_setVoWifiOn:I = 0x1

.field static final TRANSACTION_setVoWifiServiceDomain:I = 0xb

.field static final TRANSACTION_setVoWifiServiceOff:I = 0x9

.field static final TRANSACTION_setVoWifiServiceOn:I = 0x8

.field static final TRANSACTION_setupTunnelOverWifi:I = 0xd

.field static final TRANSACTION_teardownTunnelOverWifi:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p0, p0, v0}, Lcom/hisi/mapcon/IMapconService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.hisi.mapcon.IMapconService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hisi/mapcon/IMapconService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/hisi/mapcon/IMapconService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "com.hisi.mapcon.IMapconService"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 235
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyRoaming(I)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    return v2

    .line 227
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/hisi/mapcon/IMapconService$Stub;->getUtOverWifiApn()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return v2

    .line 206
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 212
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    sget-object v1, Lcom/hisi/mapcon/ServerAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisi/mapcon/ServerAddr;

    .local v1, "_arg3":Lcom/hisi/mapcon/ServerAddr;
    goto :goto_0

    .line 218
    .end local v1    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :cond_0
    nop

    .line 220
    .restart local v1    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :goto_0
    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->teardownTunnelOverWifi(IILjava/lang/String;Lcom/hisi/mapcon/ServerAddr;)I

    move-result v6

    .line 221
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    return v2

    .line 185
    .end local v1    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 191
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 193
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    sget-object v1, Lcom/hisi/mapcon/ServerAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisi/mapcon/ServerAddr;

    .restart local v1    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    goto :goto_1

    .line 197
    .end local v1    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :cond_1
    nop

    .line 199
    .restart local v1    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :goto_1
    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->setupTunnelOverWifi(IILjava/lang/String;Lcom/hisi/mapcon/ServerAddr;)I

    move-result v6

    .line 200
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return v2

    .line 173
    .end local v1    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->getVoWifiServiceDomain(II)I

    move-result v4

    .line 179
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return v2

    .line 159
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 166
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceDomain(III)I

    move-result v5

    .line 167
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return v2

    .line 147
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->getVoWifiServiceState(II)I

    move-result v4

    .line 153
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return v2

    .line 135
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceOff(II)I

    move-result v4

    .line 141
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return v2

    .line 123
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceOn(II)I

    move-result v4

    .line 129
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v2

    .line 114
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->sendMessage(I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v2

    .line 102
    .end local v1    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyImsOff(II)I

    move-result v4

    .line 108
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v2

    .line 92
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyImsOn(I)I

    move-result v3

    .line 96
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v2

    .line 83
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconServiceCallback;

    move-result-object v1

    .line 86
    .local v1, "_arg0":Lcom/hisi/mapcon/IMapconServiceCallback;
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyWifiOff(Lcom/hisi/mapcon/IMapconServiceCallback;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v2

    .line 71
    .end local v1    # "_arg0":Lcom/hisi/mapcon/IMapconServiceCallback;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->setDomain(II)I

    move-result v4

    .line 77
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v2

    .line 61
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiOff(I)I

    move-result v3

    .line 65
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return v2

    .line 51
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiOn(I)I

    move-result v3

    .line 55
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v2

    .line 46
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
