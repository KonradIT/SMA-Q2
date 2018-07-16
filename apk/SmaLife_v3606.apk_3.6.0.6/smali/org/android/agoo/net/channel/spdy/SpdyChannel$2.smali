.class Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;
.super Ljava/lang/Object;
.source "SpdyChannel.java"

# interfaces
.implements Lorg/android/spdy/SessionCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/channel/spdy/SpdyChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 6

    .prologue
    .line 509
    :try_start_0
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spdyPingRecvCallback["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->c(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v0, p2, p3}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->b(Lorg/android/agoo/net/channel/spdy/SpdyChannel;J)J

    .line 514
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->e(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Lorg/android/agoo/net/channel/IPushHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v1}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->d(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/android/agoo/net/channel/IPushHandler;->onPing(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->e:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->e:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v4, v4, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V

    goto :goto_0
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 5

    .prologue
    .line 535
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v1, "spdySessionCloseCallback"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->k(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->c:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v1, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 541
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->e(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Lorg/android/agoo/net/channel/IPushHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v1}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->d(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v2}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/IPushHandler;->onDisconnected(Ljava/lang/Object;JLcom/umeng/message/proguard/aT;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->d:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v1, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 548
    :cond_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;J)J

    .line 479
    const-string v0, "SpdyClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect connect_time["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 486
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v1}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const-string v1, "SpdyClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spdySessionFailedError["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    sget-object v2, Lorg/android/agoo/net/channel/ChannelState;->c:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v2, v1, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 491
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {v1}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->b(Lorg/android/agoo/net/channel/spdy/SpdyChannel;)V

    .line 493
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v2, v2, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->e:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->j(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v0, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aT;->k(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-static {p2}, Lorg/android/agoo/net/channel/ChannelError;->getEasySpdy(I)Lorg/android/agoo/net/channel/ChannelError;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    iget-object v4, v4, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->f:Lcom/umeng/message/proguard/aT;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a(Lorg/android/agoo/net/channel/spdy/SpdyChannel;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$2;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->d:Lorg/android/agoo/net/channel/ChannelState;

    iput-object v1, v0, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->a:Lorg/android/agoo/net/channel/ChannelState;

    .line 503
    :cond_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    goto :goto_0
.end method
