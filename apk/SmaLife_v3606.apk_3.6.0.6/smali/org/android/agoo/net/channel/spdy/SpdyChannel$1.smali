.class Lorg/android/agoo/net/channel/spdy/SpdyChannel$1;
.super Ljava/lang/Object;
.source "SpdyChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/net/channel/spdy/SpdyChannel;->shutdown()V
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
    .line 255
    iput-object p1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$1;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "SpdyClient"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$1;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/spdy/SpdyChannel;->close()V

    .line 260
    return-void
.end method
