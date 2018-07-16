.class public Lcom/mob/tools/network/ByteArrayPart;
.super Lcom/mob/tools/network/HTTPPart;


# instance fields
.field private buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mob/tools/network/HTTPPart;-><init>()V

    return-void
.end method


# virtual methods
.method public append([B)Lcom/mob/tools/network/ByteArrayPart;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->flush()V

    return-object p0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v3, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v3, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_0
.end method

.method protected length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mob/tools/network/ByteArrayPart;->buffer:Lcom/mob/tools/network/BufferedByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/mob/tools/network/BufferedByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/mob/tools/utils/Data;->byteToHex([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
