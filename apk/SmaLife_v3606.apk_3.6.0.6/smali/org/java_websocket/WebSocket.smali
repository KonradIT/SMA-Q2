.class public abstract Lorg/java_websocket/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/WebSocket$Role;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_WSS_PORT:I = 0x1bb

.field public static RCVBUF:I = 0x0

.field public static final READY_STATE_CLOSED:I = 0x3

.field public static final READY_STATE_CLOSING:I = 0x2

.field public static final READY_STATE_CONNECTING:I = 0x0

.field public static final READY_STATE_OPEN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x4000

    sput v0, Lorg/java_websocket/WebSocket;->RCVBUF:I

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lorg/java_websocket/WebSocket;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract close(I)V
.end method

.method public abstract close(ILjava/lang/String;)V
.end method

.method protected abstract close(Lorg/java_websocket/exceptions/InvalidDataException;)V
.end method

.method public abstract getDraft()Lorg/java_websocket/drafts/Draft;
.end method

.method public abstract getLocalSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getReadyState()I
.end method

.method public abstract getRemoteSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract hasBufferedData()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isClosing()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract send(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation
.end method

.method public abstract send(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation
.end method

.method public abstract send([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation
.end method

.method public abstract sendFrame(Lorg/java_websocket/framing/Framedata;)V
.end method

.method public abstract startHandshake(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method
