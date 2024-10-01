.class public Lcom/huawei/sci/CsfNty;
.super Ljava/lang/Object;
.source "CsfNty.java"


# static fields
.field public static final EN_CSF_NTY_PARA_COOKIE:I = 0x4

.field public static final EN_CSF_NTY_PARA_EXPIRES:I = 0x11

.field public static final EN_CSF_NTY_PARA_MAX:I = 0x64

.field public static final EN_CSF_NTY_PARA_SIP_STATUS_CODE:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ntyFilter(J)I
.end method

.method public static native registerReceiver(Lcom/huawei/sci/INotifyReceiver;Ljava/lang/String;)I
.end method

.method public static native unRegisterReceiver(Lcom/huawei/sci/INotifyReceiver;Ljava/lang/String;)V
.end method
