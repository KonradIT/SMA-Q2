.class public Lorg/java_websocket/SocketChannelIOHelper;
.super Ljava/lang/Object;
.source "SocketChannelIOHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batch(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .locals 5
    .param p0, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .param p1, "sockchannel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 35
    iget-object v4, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 37
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_3

    .line 38
    instance-of v4, p1, Lorg/java_websocket/WrappedByteChannel;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 39
    check-cast v1, Lorg/java_websocket/WrappedByteChannel;

    .line 40
    .local v1, "c":Lorg/java_websocket/WrappedByteChannel;
    invoke-interface {v1}, Lorg/java_websocket/WrappedByteChannel;->isNeedWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-interface {v1}, Lorg/java_websocket/WrappedByteChannel;->writeMore()V

    .line 56
    .end local v1    # "c":Lorg/java_websocket/WrappedByteChannel;
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    invoke-interface {p1}, Ljava/nio/channels/ByteChannel;->close()V

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    instance-of v4, p1, Lorg/java_websocket/WrappedByteChannel;

    if-ne v4, v2, :cond_2

    check-cast p1, Lorg/java_websocket/WrappedByteChannel;

    .end local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    invoke-interface {p1}, Lorg/java_websocket/WrappedByteChannel;->isNeedWrite()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    :goto_1
    return v2

    .line 46
    .restart local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    :cond_3
    invoke-interface {p1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_4

    move v2, v3

    .line 48
    goto :goto_1

    .line 50
    :cond_4
    iget-object v4, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 51
    iget-object v4, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 53
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_3

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    :cond_5
    move v2, v3

    .line 61
    goto :goto_1
.end method

.method public static read(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "channel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    invoke-interface {p2, p0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 12
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 15
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    .line 18
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static readMore(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/WrappedByteChannel;)Z
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ws"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "channel"    # Lorg/java_websocket/WrappedByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 23
    invoke-interface {p2, p0}, Lorg/java_websocket/WrappedByteChannel;->readMore(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 24
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->eot()V

    .line 28
    const/4 v1, 0x0

    .line 30
    :goto_0
    return v1

    :cond_0
    invoke-interface {p2}, Lorg/java_websocket/WrappedByteChannel;->isNeedRead()Z

    move-result v1

    goto :goto_0
.end method
