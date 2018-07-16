.class public interface abstract Lorg/android/spdy/SessionCb;
.super Ljava/lang/Object;
.source "SessionCb.java"


# virtual methods
.method public abstract spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
.end method

.method public abstract spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
.end method

.method public abstract spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
.end method

.method public abstract spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
.end method

.method public abstract spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
.end method
