.class Lcom/huawei/ims/ImsRilRequest;
.super Ljava/lang/Object;
.source "ImsRIL.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RILJ_IMS"

.field private static final MAX_POOL_SIZE:I = 0x4

.field private static final SERIAL_STRING_LENGTH:I = 0x4

.field private static final STRING_BUILDER_INITIAL_LENGTH:I = 0x8

.field private static sNextSerial:I

.field private static sPool:Lcom/huawei/ims/ImsRilRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field private static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mClientId:Ljava/lang/String;

.field mNext:Lcom/huawei/ims/ImsRilRequest;

.field mParcel:Landroid/os/Parcel;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mWakeLockType:I

.field mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsRilRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsRilRequest;->sPoolSync:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/ImsRilRequest;->sPool:Lcom/huawei/ims/ImsRilRequest;

    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/ImsRilRequest;->sNextSerial:I

    .line 98
    sput v0, Lcom/huawei/ims/ImsRilRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRilRequest;
    .registers 7
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    sget-object v1, Lcom/huawei/ims/ImsRilRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_4
    sget-object v2, Lcom/huawei/ims/ImsRilRequest;->sPool:Lcom/huawei/ims/ImsRilRequest;

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 131
    sget-object v2, Lcom/huawei/ims/ImsRilRequest;->sPool:Lcom/huawei/ims/ImsRilRequest;

    move-object v0, v2

    .line 132
    iget-object v2, v0, Lcom/huawei/ims/ImsRilRequest;->mNext:Lcom/huawei/ims/ImsRilRequest;

    sput-object v2, Lcom/huawei/ims/ImsRilRequest;->sPool:Lcom/huawei/ims/ImsRilRequest;

    .line 133
    iput-object v3, v0, Lcom/huawei/ims/ImsRilRequest;->mNext:Lcom/huawei/ims/ImsRilRequest;

    .line 134
    sget v2, Lcom/huawei/ims/ImsRilRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/huawei/ims/ImsRilRequest;->sPoolSize:I

    .line 136
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_5e

    .line 137
    if-nez v0, :cond_23

    .line 138
    new-instance v1, Lcom/huawei/ims/ImsRilRequest;

    invoke-direct {v1}, Lcom/huawei/ims/ImsRilRequest;-><init>()V

    move-object v0, v1

    move-object v2, v0

    goto :goto_24

    .line 137
    :cond_23
    move-object v2, v0

    .line 140
    .end local v0    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .local v2, "rr":Lcom/huawei/ims/ImsRilRequest;
    :goto_24
    sget-object v4, Lcom/huawei/ims/ImsRilRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v4

    .line 141
    :try_start_27
    sget v0, Lcom/huawei/ims/ImsRilRequest;->sNextSerial:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/huawei/ims/ImsRilRequest;->sNextSerial:I

    iput v0, v2, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    .line 142
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_5b

    .line 143
    iput p0, v2, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    .line 144
    iput-object p1, v2, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, v2, Lcom/huawei/ims/ImsRilRequest;->mParcel:Landroid/os/Parcel;

    .line 147
    const/4 v0, -0x1

    iput v0, v2, Lcom/huawei/ims/ImsRilRequest;->mWakeLockType:I

    .line 148
    iput-object v3, v2, Lcom/huawei/ims/ImsRilRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 150
    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 151
    const-string v0, "RILJ_IMS"

    const-string v1, "Message target is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_4e
    iget-object v0, v2, Lcom/huawei/ims/ImsRilRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, v2, Lcom/huawei/ims/ImsRilRequest;->mParcel:Landroid/os/Parcel;

    iget v1, v2, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-object v2

    .line 142
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    .line 136
    .end local v2    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .restart local v0    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2
.end method

.method static obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;
    .registers 7
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    invoke-static {p0, p1}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 170
    if-eqz p2, :cond_2d

    .line 171
    iput-object p2, v0, Lcom/huawei/ims/ImsRilRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/ImsRilRequest;->mClientId:Ljava/lang/String;

    goto :goto_43

    .line 174
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null workSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RILJ_IMS"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_43
    return-object v0
.end method

.method static resetSerial()V
    .registers 2

    .line 197
    sget-object v0, Lcom/huawei/ims/ImsRilRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/huawei/ims/ImsRilRequest;->sNextSerial:I

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .registers 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 228
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 229
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RILJ_IMS"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3b

    .line 231
    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 232
    iget-object v1, p0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :cond_3b
    iget-object v1, p0, Lcom/huawei/ims/ImsRilRequest;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_45

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRilRequest;->mParcel:Landroid/os/Parcel;

    .line 238
    :cond_45
    return-void
.end method

.method release()V
    .registers 4

    .line 183
    sget-object v0, Lcom/huawei/ims/ImsRilRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    sget v1, Lcom/huawei/ims/ImsRilRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_17

    .line 185
    sget-object v1, Lcom/huawei/ims/ImsRilRequest;->sPool:Lcom/huawei/ims/ImsRilRequest;

    iput-object v1, p0, Lcom/huawei/ims/ImsRilRequest;->mNext:Lcom/huawei/ims/ImsRilRequest;

    .line 186
    sput-object p0, Lcom/huawei/ims/ImsRilRequest;->sPool:Lcom/huawei/ims/ImsRilRequest;

    .line 187
    sget v1, Lcom/huawei/ims/ImsRilRequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/huawei/ims/ImsRilRequest;->sPoolSize:I

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    .line 190
    :cond_17
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .registers 6

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "sn":Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_17
    rsub-int/lit8 v4, v3, 0x4

    if-ge v2, v4, :cond_23

    .line 213
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 216
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
