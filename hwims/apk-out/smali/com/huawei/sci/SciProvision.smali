.class public Lcom/huawei/sci/SciProvision;
.super Ljava/lang/Object;
.source "SciProvision.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native changePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native commitRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native commitResetPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native getRegType()Z
.end method

.method public static native getShortMessageInfo([Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static native getSmResultForRegisterWithImsi(Ljava/lang/String;I)I
.end method

.method public static native requestForRegisterWithImsi(Ljava/lang/String;)I
.end method

.method public static native requestVeriyCodeForRegister(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native requestVeriyCodeForResetPwd(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native stopChangePwd()I
.end method

.method public static native stopOperation(I)I
.end method

.method public static native stopRegister()I
.end method

.method public static native stopResetPwd()I
.end method
