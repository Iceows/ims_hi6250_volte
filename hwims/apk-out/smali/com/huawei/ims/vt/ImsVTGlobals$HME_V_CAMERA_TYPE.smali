.class public final enum Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;
.super Ljava/lang/Enum;
.source "ImsVTGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVTGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HME_V_CAMERA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

.field public static final enum HME_V_CAMERA1_NATIVECAMERA:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

.field public static final enum HME_V_CAMERA1_SCREENCAPTURE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

.field public static final enum HME_V_CAMERA1_SURFACETEXTURE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

.field public static final enum HME_V_CAMERA1_SURFACEVIEW:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

.field public static final enum HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

.field public static final enum HME_V_CAMERA_DEFAULT:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    const-string v1, "HME_V_CAMERA1_SURFACEVIEW"

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA1_SURFACEVIEW:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    .line 53
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    const-string v1, "HME_V_CAMERA1_SURFACETEXTURE"

    const/4 v3, 0x1

    const/16 v4, 0x66

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA1_SURFACETEXTURE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    .line 54
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    const-string v1, "HME_V_CAMERA2"

    const/4 v4, 0x2

    const/16 v5, 0xc9

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    .line 55
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    const-string v1, "HME_V_CAMERA1_NATIVECAMERA"

    const/4 v5, 0x3

    const/16 v6, 0x12d

    invoke-direct {v0, v1, v5, v6}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA1_NATIVECAMERA:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    .line 56
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    const-string v1, "HME_V_CAMERA1_SCREENCAPTURE"

    const/4 v6, 0x4

    const/16 v7, 0x191

    invoke-direct {v0, v1, v6, v7}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA1_SCREENCAPTURE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    .line 57
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    const-string v1, "HME_V_CAMERA_DEFAULT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA_DEFAULT:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA1_SURFACEVIEW:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA1_SURFACETEXTURE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA1_NATIVECAMERA:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA1_SCREENCAPTURE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA_DEFAULT:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->$VALUES:[Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->value:I

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;
    .locals 1

    .line 51
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->$VALUES:[Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    invoke-virtual {v0}, [Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->value:I

    return v0
.end method
