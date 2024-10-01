.class public final enum Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DomainSelectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

.field public static final enum SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

.field public static final enum SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

.field public static final enum SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

.field public static final enum SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 452
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const-string v1, "SS_SELECT_CS_DOMAIN_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 453
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const-string v1, "SS_SELECT_UT_DOMAIN_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 454
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const-string v1, "SS_SELECT_UT_PREFER_CS_SECONDARY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 455
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const-string v1, "SS_SELECT_INVALID_DOMAIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 451
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 451
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 451
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .locals 1

    .line 451
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v0}, [Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v0
.end method
