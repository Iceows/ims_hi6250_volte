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


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 98
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    const/4 v1, 0x0

    const-string v2, "IP_ADDR_HOST_TYPE_NAF"

    invoke-direct {v0, v2, v1, v1}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_NAF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 99
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    const/4 v2, 0x1

    const-string v3, "IP_ADDR_HOST_TYPE_BSF"

    invoke-direct {v0, v3, v2, v2}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BSF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 100
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    const/4 v3, 0x2

    const-string v4, "IP_ADDR_HOST_TYPE_LOCAL"

    invoke-direct {v0, v4, v3, v3}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_LOCAL:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 101
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    const/4 v4, 0x3

    const-string v5, "IP_ADDR_HOST_TYPE_BUTT"

    invoke-direct {v0, v5, v4, v4}, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    sget-object v5, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_NAF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BSF:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_LOCAL:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->IP_ADDR_HOST_TYPE_BUTT:Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

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

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->number:I

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;
    .registers 1

    .line 97
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    invoke-virtual {v0}, [Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;

    return-object v0
.end method


# virtual methods
.method public toNumber()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/huawei/sci/SciSSConf$SSConfIpAddrHostType;->number:I

    return v0
.end method
