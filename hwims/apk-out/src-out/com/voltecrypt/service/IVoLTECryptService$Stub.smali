.class public abstract Lcom/voltecrypt/service/IVoLTECryptService$Stub;
.super Landroid/os/Binder;
.source "IVoLTECryptService.java"

# interfaces
.implements Lcom/voltecrypt/service/IVoLTECryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voltecrypt/service/IVoLTECryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voltecrypt/service/IVoLTECryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.voltecrypt.service.IVoLTECryptService"

.field static final TRANSACTION_callVoLTEEncryptPhone:I = 0x7

.field static final TRANSACTION_closeEncryptedVoLTE:I = 0x9

.field static final TRANSACTION_getEncryptionVoLTESwitchStatus:I = 0x3

.field static final TRANSACTION_getRootStatus:I = 0x6

.field static final TRANSACTION_getVoLTESwitchStatus:I = 0x1

.field static final TRANSACTION_openEncryptedVoLTE:I = 0x8

.field static final TRANSACTION_setEncryptionVoLTESwitchStatus:I = 0x4

.field static final TRANSACTION_setPowerMode:I = 0x5

.field static final TRANSACTION_setVoLTESwitchStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "com.voltecrypt.service.IVoLTECryptService"

    invoke-virtual {p0, p0, v0}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/voltecrypt/service/IVoLTECryptService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_4
    const-string v0, "com.voltecrypt.service.IVoLTECryptService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/voltecrypt/service/IVoLTECryptService;

    if-eqz v1, :cond_14

    .line 115
    move-object v1, v0

    check-cast v1, Lcom/voltecrypt/service/IVoLTECryptService;

    return-object v1

    .line 117
    :cond_14
    new-instance v1, Lcom/voltecrypt/service/IVoLTECryptService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/voltecrypt/service/IVoLTECryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/voltecrypt/service/IVoLTECryptService;
    .registers 1

    .line 481
    sget-object v0, Lcom/voltecrypt/service/IVoLTECryptService$Stub$Proxy;->sDefaultImpl:Lcom/voltecrypt/service/IVoLTECryptService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/voltecrypt/service/IVoLTECryptService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/voltecrypt/service/IVoLTECryptService;

    .line 474
    sget-object v0, Lcom/voltecrypt/service/IVoLTECryptService$Stub$Proxy;->sDefaultImpl:Lcom/voltecrypt/service/IVoLTECryptService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 475
    sput-object p0, Lcom/voltecrypt/service/IVoLTECryptService$Stub$Proxy;->sDefaultImpl:Lcom/voltecrypt/service/IVoLTECryptService;

    .line 476
    const/4 v0, 0x1

    return v0

    .line 478
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 121
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const-string v0, "com.voltecrypt.service.IVoLTECryptService"

    .line 126
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9e

    packed-switch p1, :pswitch_data_a2

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 207
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->closeEncryptedVoLTE()I

    move-result v1

    .line 209
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return v2

    .line 199
    .end local v1    # "_result":I
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->openEncryptedVoLTE()I

    move-result v1

    .line 201
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    return v2

    .line 189
    .end local v1    # "_result":I
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->callVoLTEEncryptPhone(Ljava/lang/String;)I

    move-result v3

    .line 193
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return v2

    .line 181
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->getRootStatus()I

    move-result v1

    .line 183
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    return v2

    .line 171
    .end local v1    # "_result":I
    :pswitch_4c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->setPowerMode(I)I

    move-result v3

    .line 175
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return v2

    .line 161
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->setEncryptionVoLTESwitchStatus(I)I

    move-result v3

    .line 165
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return v2

    .line 153
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->getEncryptionVoLTESwitchStatus()I

    move-result v1

    .line 155
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return v2

    .line 143
    .end local v1    # "_result":I
    :pswitch_7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->setVoLTESwitchStatus(I)I

    move-result v3

    .line 147
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v2

    .line 135
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/voltecrypt/service/IVoLTECryptService$Stub;->getVoLTESwitchStatus()I

    move-result v1

    .line 137
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return v2

    .line 130
    .end local v1    # "_result":I
    :cond_9e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v2

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_90
        :pswitch_7e
        :pswitch_70
        :pswitch_5e
        :pswitch_4c
        :pswitch_3e
        :pswitch_2c
        :pswitch_1e
        :pswitch_10
    .end packed-switch
.end method
