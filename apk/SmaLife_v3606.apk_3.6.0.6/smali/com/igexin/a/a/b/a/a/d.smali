.class public final Lcom/igexin/a/a/b/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/b/b;
.implements Lcom/igexin/a/a/d/a/a;


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Z

.field c:J

.field d:Ljava/nio/channels/SelectionKey;

.field e:Ljava/nio/channels/SelectionKey;

.field f:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>(Ljava/nio/channels/Selector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/a/a/b/a/a/d;->f:Ljava/nio/channels/Selector;

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/igexin/a/a/b/a/a/d;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    iput-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->f:Ljava/nio/channels/Selector;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final a(Ljava/nio/channels/Selector;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/b/a/a/d;->f:Ljava/nio/channels/Selector;

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/b/a/a/d;->b:Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/igexin/a/a/b/a/a/d;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/d;->c()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-static {p1}, Lcom/igexin/a/a/b/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    aget-object v3, v0, v6

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->f:Ljava/nio/channels/Selector;

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->d:Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/d;->c:J

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connecting|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    return v6

    :cond_1
    const-string v0, "0.0.0.0"

    goto :goto_0
.end method

.method final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :goto_1
    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, -0x5

    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/igexin/a/a/b/a/a/d;->b:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method c()Ljava/nio/channels/SocketChannel;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0
.end method
