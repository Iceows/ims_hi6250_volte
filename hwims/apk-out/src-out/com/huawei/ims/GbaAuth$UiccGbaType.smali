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
    .registers 4

    .line 191
    new-instance v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;

    const/4 v1, 0x0

    const-string v2, "USIM_GBA"

    invoke-direct {v0, v2, v1}, Lcom/huawei/ims/GbaAuth$UiccGbaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;->USIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

    .line 196
    new-instance v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;

    const/4 v2, 0x1

    const-string v3, "ISIM_GBA"

    invoke-direct {v0, v3, v2}, Lcom/huawei/ims/GbaAuth$UiccGbaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;->ISIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/ims/GbaAuth$UiccGbaType;

    sget-object v3, Lcom/huawei/ims/GbaAuth$UiccGbaType;->USIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/huawei/ims/GbaAuth$UiccGbaType;->ISIM_GBA:Lcom/huawei/ims/GbaAuth$UiccGbaType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;->$VALUES:[Lcom/huawei/ims/GbaAuth$UiccGbaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/GbaAuth$UiccGbaType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 187
    const-class v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/GbaAuth$UiccGbaType;
    .registers 1

    .line 187
    sget-object v0, Lcom/huawei/ims/GbaAuth$UiccGbaType;->$VALUES:[Lcom/huawei/ims/GbaAuth$UiccGbaType;

    invoke-virtual {v0}, [Lcom/huawei/ims/GbaAuth$UiccGbaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/GbaAuth$UiccGbaType;

    return-object v0
.end method
