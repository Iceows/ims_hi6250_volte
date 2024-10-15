.class public final enum Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;
.super Ljava/lang/Enum;
.source "ImsVtGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVtGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HmeVideoEncoderUseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

.field public static final enum HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

.field public static final enum HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 199
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    const/4 v1, 0x0

    const-string v2, "HME_V_Encoder_DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    .line 204
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    const/4 v2, 0x1

    const-string v3, "HME_V_Encoder_SURFACE"

    const/16 v4, 0x65

    invoke-direct {v0, v3, v2, v4}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    sget-object v3, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->$VALUES:[Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput p3, p0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->value:I

    .line 210
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 195
    const-class v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;
    .registers 1

    .line 195
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->$VALUES:[Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    invoke-virtual {v0}, [Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->value:I

    return v0
.end method
