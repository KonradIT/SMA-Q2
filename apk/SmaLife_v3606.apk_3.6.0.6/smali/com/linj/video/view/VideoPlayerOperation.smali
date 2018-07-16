.class public interface abstract Lcom/linj/video/view/VideoPlayerOperation;
.super Ljava/lang/Object;
.source "VideoPlayerOperation.java"


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pausedPlay()V
.end method

.method public abstract playVideo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract resumePlay()V
.end method

.method public abstract seekPosition(I)V
.end method

.method public abstract stopPlay()V
.end method
