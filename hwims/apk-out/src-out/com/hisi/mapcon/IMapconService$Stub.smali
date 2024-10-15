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
    .registers 2

    .line 167
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 168
    const-string v0, "com.hisi.mapcon.IMapconService"

    invoke-virtual {p0, p0, v0}, Lcom/hisi/mapcon/IMapconService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 176
    if-nez p0, :cond_4

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_4
    const-string v0, "com.hisi.mapcon.IMapconService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 180
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/hisi/mapcon/IMapconService;

    if-eqz v1, :cond_14

    .line 181
    move-object v1, v0

    check-cast v1, Lcom/hisi/mapcon/IMapconService;

    return-object v1

    .line 183
    :cond_14
    new-instance v1, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/hisi/mapcon/IMapconService;
    .registers 1

    .line 876
    sget-object v0, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;->sDefaultImpl:Lcom/hisi/mapcon/IMapconService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hisi/mapcon/IMapconService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/hisi/mapcon/IMapconService;

    .line 869
    sget-object v0, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;->sDefaultImpl:Lcom/hisi/mapcon/IMapconService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 870
    sput-object p0, Lcom/hisi/mapcon/IMapconService$Stub$Proxy;->sDefaultImpl:Lcom/hisi/mapcon/IMapconService;

    .line 871
    const/4 v0, 0x1

    return v0

    .line 873
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 187
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const-string v0, "com.hisi.mapcon.IMapconService"

    .line 192
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_174

    packed-switch p1, :pswitch_data_178

    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 385
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 388
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyRoaming(I)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    return v2

    .line 377
    .end local v1    # "_arg0":I
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/hisi/mapcon/IMapconService$Stub;->getUtOverWifiApn()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    return v2

    .line 356
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    .line 365
    sget-object v5, Lcom/hisi/mapcon/ServerAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisi/mapcon/ServerAddr;

    .local v5, "_arg3":Lcom/hisi/mapcon/ServerAddr;
    goto :goto_4b

    .line 368
    .end local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :cond_4a
    const/4 v5, 0x0

    .line 370
    .restart local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :goto_4b
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/hisi/mapcon/IMapconService$Stub;->teardownTunnelOverWifi(IILjava/lang/String;Lcom/hisi/mapcon/ServerAddr;)I

    move-result v6

    .line 371
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    return v2

    .line 335
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    .end local v6    # "_result":I
    :pswitch_56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 339
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 343
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_74

    .line 344
    sget-object v5, Lcom/hisi/mapcon/ServerAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisi/mapcon/ServerAddr;

    .restart local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    goto :goto_75

    .line 347
    .end local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :cond_74
    const/4 v5, 0x0

    .line 349
    .restart local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    :goto_75
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/hisi/mapcon/IMapconService$Stub;->setupTunnelOverWifi(IILjava/lang/String;Lcom/hisi/mapcon/ServerAddr;)I

    move-result v6

    .line 350
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    return v2

    .line 323
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Lcom/hisi/mapcon/ServerAddr;
    .end local v6    # "_result":I
    :pswitch_80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 328
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->getVoWifiServiceDomain(II)I

    move-result v4

    .line 329
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    return v2

    .line 309
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 316
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceDomain(III)I

    move-result v5

    .line 317
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return v2

    .line 297
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_b0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->getVoWifiServiceState(II)I

    move-result v4

    .line 303
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    return v2

    .line 285
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_c6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceOff(II)I

    move-result v4

    .line 291
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return v2

    .line 273
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_dc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiServiceOn(II)I

    move-result v4

    .line 279
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return v2

    .line 264
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_f2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->sendMessage(I)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    return v2

    .line 252
    .end local v1    # "_arg0":I
    :pswitch_100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyImsOff(II)I

    move-result v4

    .line 258
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    return v2

    .line 242
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyImsOn(I)I

    move-result v3

    .line 246
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    return v2

    .line 233
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconServiceCallback;

    move-result-object v1

    .line 236
    .local v1, "_arg0":Lcom/hisi/mapcon/IMapconServiceCallback;
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->notifyWifiOff(Lcom/hisi/mapcon/IMapconServiceCallback;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    return v2

    .line 221
    .end local v1    # "_arg0":Lcom/hisi/mapcon/IMapconServiceCallback;
    :pswitch_13a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/hisi/mapcon/IMapconService$Stub;->setDomain(II)I

    move-result v4

    .line 227
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    return v2

    .line 211
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiOff(I)I

    move-result v3

    .line 215
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    return v2

    .line 201
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/hisi/mapcon/IMapconService$Stub;->setVoWifiOn(I)I

    move-result v3

    .line 205
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    return v2

    .line 196
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :cond_174
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    return v2

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_162
        :pswitch_150
        :pswitch_13a
        :pswitch_128
        :pswitch_116
        :pswitch_100
        :pswitch_f2
        :pswitch_dc
        :pswitch_c6
        :pswitch_b0
        :pswitch_96
        :pswitch_80
        :pswitch_56
        :pswitch_2c
        :pswitch_1e
        :pswitch_10
    .end packed-switch
.end method
