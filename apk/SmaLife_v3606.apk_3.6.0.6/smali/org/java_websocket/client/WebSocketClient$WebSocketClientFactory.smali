.class public interface abstract Lorg/java_websocket/client/WebSocketClient$WebSocketClientFactory;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Lorg/java_websocket/WebSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/client/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebSocketClientFactory"
.end annotation


# virtual methods
.method public abstract wrapChannel(Ljava/nio/channels/SelectionKey;Ljava/lang/String;I)Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
