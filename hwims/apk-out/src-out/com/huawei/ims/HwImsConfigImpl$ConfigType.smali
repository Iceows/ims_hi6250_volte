.class public final enum Lcom/huawei/ims/HwImsConfigImpl$ConfigType;
.super Ljava/lang/Enum;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/HwImsConfigImpl$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

.field public static final enum CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

.field public static final enum CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

.field public static final enum CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 891
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    const/4 v1, 0x0

    const-string v2, "CONFIG_TYPE_BOOL"

    invoke-direct {v0, v2, v1}, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    .line 895
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    const/4 v2, 0x1

    const-string v3, "CONFIG_TYPE_INT"

    invoke-direct {v0, v3, v2}, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    .line 899
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    const/4 v3, 0x2

    const-string v4, "CONFIG_TYPE_STRING"

    invoke-direct {v0, v4, v3}, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    .line 887
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->$VALUES:[Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 887
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsConfigImpl$ConfigType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 887
    const-class v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsConfigImpl$ConfigType;
    .registers 1

    .line 887
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->$VALUES:[Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsConfigImpl$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsConfigImpl$ConfigType;

    return-object v0
.end method
