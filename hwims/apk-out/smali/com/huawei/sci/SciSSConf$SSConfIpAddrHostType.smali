.class public final enum Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;
.super Ljava/lang/Enum;
.source "SciSSConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSConfIpAddrHostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

.field public static final enum IP_ADDR_HOST_TYPE_BSF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

.field public static final enum IP_ADDR_HOST_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

.field public static final enum IP_ADDR_HOST_TYPE_LOCAL:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

.field public static final enum IP_ADDR_HOST_TYPE_NAF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    const-string v1, "IP_ADDR_HOST_TYPE_NAF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_NAF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 60
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    const-string v1, "IP_ADDR_HOST_TYPE_BSF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BSF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 61
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    const-string v1, "IP_ADDR_HOST_TYPE_LOCAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_LOCAL:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 62
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    const-string v1, "IP_ADDR_HOST_TYPE_BUTT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_NAF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BSF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_LOCAL:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;
    .locals 1

    .line 57
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    return-object v0
.end method
