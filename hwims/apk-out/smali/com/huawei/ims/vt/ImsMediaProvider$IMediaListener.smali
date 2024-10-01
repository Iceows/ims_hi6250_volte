.class public interface abstract Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;
.super Ljava/lang/Object;
.source "ImsMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaListener"
.end annotation


# virtual methods
.method public abstract onDataUsageChanged(IIJJ)V
.end method

.method public abstract onDisplayModeEvent()V
.end method

.method public abstract onPeerResolutionChanged(II)V
.end method

.method public abstract onPlayerStateChanged(I)V
.end method

.method public abstract onVideoQualityEvent(I)V
.end method
