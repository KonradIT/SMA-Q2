.class Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;
.super Ljava/lang/Object;
.source "SpdyChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/channel/spdy/SpdyChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lorg/android/agoo/net/channel/spdy/SpdyChannel;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    iput-object p1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->a:Lorg/android/agoo/net/channel/spdy/SpdyChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->d:Ljava/io/ByteArrayOutputStream;

    .line 559
    iput p2, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->b:I

    .line 560
    iput-object p3, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->c:Ljava/util/Map;

    .line 561
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->d:Ljava/io/ByteArrayOutputStream;

    .line 562
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 566
    return-void
.end method

.method public a()[B
    .locals 2

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 571
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 574
    :goto_0
    return-object v0

    .line 572
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->b:I

    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lorg/android/agoo/net/channel/spdy/SpdyChannel$a;->c:Ljava/util/Map;

    return-object v0
.end method
