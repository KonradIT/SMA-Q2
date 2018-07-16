.class Lorg/java_websocket/server/WebSocketServer$1;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/server/WebSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/java_websocket/server/WebSocketServer;


# direct methods
.method constructor <init>(Lorg/java_websocket/server/WebSocketServer;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer$1;->this$0:Lorg/java_websocket/server/WebSocketServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocket;
    .locals 1
    .param p1, "x0"    # Lorg/java_websocket/WebSocketAdapter;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/net/Socket;

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/server/WebSocketServer$1;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocket;
    .locals 1
    .param p1, "x0"    # Lorg/java_websocket/WebSocketAdapter;
    .param p2, "x1"    # Lorg/java_websocket/drafts/Draft;
    .param p3, "x2"    # Ljava/net/Socket;

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/server/WebSocketServer$1;->createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;

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
    .line 91
    .local p2, "d":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Ljava/util/List;Ljava/net/Socket;)V

    return-object v0
.end method

.method public createWebSocket(Lorg/java_websocket/WebSocketAdapter;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)Lorg/java_websocket/WebSocketImpl;
    .locals 1
    .param p1, "a"    # Lorg/java_websocket/WebSocketAdapter;
    .param p2, "d"    # Lorg/java_websocket/drafts/Draft;
    .param p3, "s"    # Ljava/net/Socket;

    .prologue
    .line 86
    new-instance v0, Lorg/java_websocket/WebSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)V

    return-object v0
.end method

.method public bridge synthetic wrapChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .locals 1
    .param p1, "x0"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/java_websocket/server/WebSocketServer$1;->wrapChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public wrapChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .locals 1
    .param p1, "c"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method
