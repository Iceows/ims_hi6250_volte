.class public final enum Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;
.super Ljava/lang/Enum;
.source "ImsVTGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVTGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HME_V_ENCODER_USE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

.field public static final enum HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

.field public static final enum HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    const-string v1, "HME_V_Encoder_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    .line 68
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    const-string v1, "HME_V_Encoder_SURFACE"

    const/4 v3, 0x1

    const/16 v4, 0x65

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->$VALUES:[Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->value:I

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 66
    const-class v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;
    .locals 1

    .line 66
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->$VALUES:[Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    invoke-virtual {v0}, [Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->value:I

    return v0
.end method
