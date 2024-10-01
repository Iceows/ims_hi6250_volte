.class public final enum Lcom/huawei/videoengine/Texture2dProgram$ProgramType;
.super Ljava/lang/Enum;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/Texture2dProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/videoengine/Texture2dProgram$ProgramType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_2D:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_BW:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_FILT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    new-instance v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    new-instance v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_BW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT_BW:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    new-instance v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_FILT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT_FILT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    sget-object v1, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT_BW:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT_FILT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->$VALUES:[Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/videoengine/Texture2dProgram$ProgramType;
    .locals 1

    .line 14
    const-class v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    return-object p0
.end method

.method public static values()[Lcom/huawei/videoengine/Texture2dProgram$ProgramType;
    .locals 1

    .line 14
    sget-object v0, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->$VALUES:[Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-virtual {v0}, [Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    return-object v0
.end method
