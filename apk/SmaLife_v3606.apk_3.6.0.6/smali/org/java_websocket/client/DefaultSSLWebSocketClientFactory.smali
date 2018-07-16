.class public Lorg/java_websocket/client/DefaultSSLWebSocketClientFactory;
.super Ljava/lang/Object;
.source "DefaultSSLWebSocketClientFactory.java"

# interfaces
.implements Lorg/java_websocket/client/WebSocketClient$WebSocketClientFactory;


# instance fields
.field protected exec:Ljava/util/concurrent/ExecutorService;

.field protected sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/client/DefaultSSLWebSocketClientFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "exec"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_1
    iput-object p1, p0, Lorg/java_websocket/client/DefaultSSLWebSocketClientFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 32
    iput-object p2, p0, Lorg/java_websocket/client/DefaultSSLWebSocketClientFactory;->exec:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocket;
    .locals 1
    .param p1, "x0"    # Lorg/java_websocket/WebSocketAdapter;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/net/Socket;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/client/DefaultSSLWebSocketClientFactory;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocket;
    .locals 1
    .param p1, "x0"    # Lorg/java_websocket/WebSocketAdapter;
    .param p2, "x1"    # Lorg/java_websocket/drafts/Draft;
    .param p3, "x2"    # Ljava/net/Socket;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/client/DefaultSSLWebSocketClientFactory;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;
    .locals 1
    .param p1, "a"    # Lorg/java_websocket/WebSocketAdapter;
    .param p3, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/WebSocketAdapter;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")",
            "Lorg/java_websocket/WebSocketImpl;"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "d":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Ljava/util/List;Ljava/net/Socket;)V

    return-object v0
.end method

.method public createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;
    .locals 1
    .param p1, "a"    # Lorg/java_websocket/WebSocketAdapter;
    .param p2, "d"    # Lorg/java_websocket/drafts/Draft;
    .param p3, "c"    # Ljava/net/Socket;

    .prologue
    .line 44
    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)V

    return-object v0
.end method

.method public wrapChannel(Ljava/nio/channels/SelectionKey;Ljava/lang/String;I)Ljava/nio/channels/ByteChannel;
    .locals 3
    .param p1, "c"    # Ljava/nio/channels/SelectionKey;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lorg/java_websocket/client/DefaultSSLWebSocketClientFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 38
    .local v0, "e":Ljavax/net/ssl/SSLEngine;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 39
    new-instance v1, Lorg/java_websocket/SSLSocketChannel2;

    iget-object v2, p0, Lorg/java_websocket/client/DefaultSSLWebSocketClientFactory;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p1, v0, v2}, Lorg/java_websocket/SSLSocketChannel2;-><init>(Ljava/nio/channels/SelectionKey;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method
