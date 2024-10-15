.class public final enum Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;
.super Ljava/lang/Enum;
.source "ImsVtGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVtGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HmeVideoCameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

.field public static final enum HME_V_CAMERA1_NATIVECAMERA:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

.field public static final enum HME_V_CAMERA1_SCREENCAPTURE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

.field public static final enum HME_V_CAMERA1_SURFACETEXTURE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

.field public static final enum HME_V_CAMERA1_SURFACEVIEW:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

.field public static final enum HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

.field public static final enum HME_V_CAMERA_DEFAULT:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 152
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    const/4 v1, 0x0

    const-string v2, "HME_V_CAMERA1_SURFACEVIEW"

    const/16 v3, 0x65

    invoke-direct {v0, v2, v1, v3}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA1_SURFACEVIEW:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    .line 157
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    const/4 v2, 0x1

    const-string v3, "HME_V_CAMERA1_SURFACETEXTURE"

    const/16 v4, 0x66

    invoke-direct {v0, v3, v2, v4}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA1_SURFACETEXTURE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    .line 162
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    const/4 v3, 0x2

    const-string v4, "HME_V_CAMERA2"

    const/16 v5, 0xc9

    invoke-direct {v0, v4, v3, v5}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    .line 167
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    const/4 v4, 0x3

    const-string v5, "HME_V_CAMERA1_NATIVECAMERA"

    const/16 v6, 0x12d

    invoke-direct {v0, v5, v4, v6}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA1_NATIVECAMERA:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    .line 172
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    const/4 v5, 0x4

    const-string v6, "HME_V_CAMERA1_SCREENCAPTURE"

    const/16 v7, 0x191

    invoke-direct {v0, v6, v5, v7}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA1_SCREENCAPTURE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    .line 177
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    const/4 v6, 0x5

    const-string v7, "HME_V_CAMERA_DEFAULT"

    invoke-direct {v0, v7, v6, v1}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA_DEFAULT:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    .line 148
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    sget-object v7, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA1_SURFACEVIEW:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA1_SURFACETEXTURE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA1_NATIVECAMERA:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA1_SCREENCAPTURE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA_DEFAULT:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->$VALUES:[Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

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

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput p3, p0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->value:I

    .line 183
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 148
    const-class v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;
    .registers 1

    .line 148
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->$VALUES:[Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    invoke-virtual {v0}, [Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 186
    iget v0, p0, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->value:I

    return v0
.end method
