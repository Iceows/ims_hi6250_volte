.class final enum Lcom/huawei/ims/GbaAuth$UiccGbaType;
.super Ljava/lang/Enum;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UiccGbaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/GbaAuth$UiccGbaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/GbaAuth$UiccGbaType;

.field public static final enum ISIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

.field public static final enum USIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    new-instance v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;

    const-string v1, "USIM_GBA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/GbaAuth$UiccGbaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;->USIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

    .line 75
    new-instance v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;

    const-string v1, "ISIM_GBA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/GbaAuth$UiccGbaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;->ISIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/ims/GbaAuth$UiccGbaType;

    sget-object v1, Lcom/huawei/ims/GbaAuth$UiccGbaType;->USIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/GbaAuth$UiccGbaType;->ISIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;->$VALUES:[Lcom/huawei/ims/GbaAuth$UiccGbaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/GbaAuth$UiccGbaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/GbaAuth$UiccGbaType;
    .locals 1

    .line 73
    sget-object v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;->$VALUES:[Lcom/huawei/ims/GbaAuth$UiccGbaType;

    invoke-virtual {v0}, [Lcom/huawei/ims/GbaAuth$UiccGbaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/GbaAuth$UiccGbaType;

    return-object v0
.end method
