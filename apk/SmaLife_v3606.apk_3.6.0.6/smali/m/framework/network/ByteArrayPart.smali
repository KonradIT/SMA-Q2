.class public Lm/framework/network/ByteArrayPart;
.super Lm/framework/network/HTTPPart;
.source "ByteArrayPart.java"


# instance fields
.field private buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lm/framework/network/HTTPPart;-><init>()V

    return-void
.end method


# virtual methods
.method public append([B)Lm/framework/network/ByteArrayPart;
    .locals 2
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 14
    iget-object v1, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 20
    return-object p0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 25
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 27
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method protected length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lm/framework/network/ByteArrayPart;->buffer:[B

    invoke-static {v0}, Lm/framework/utils/Data;->byteToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
