.class public Lcom/mob/tools/network/ByteCounterInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private is:Ljava/io/InputStream;

.field private listener:Lcom/mob/tools/network/OnReadListener;

.field private readBytes:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    iget-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    invoke-interface {v1, v2, v3}, Lcom/mob/tools/network/OnReadListener;->onRead(J)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    iget-wide v2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J

    invoke-interface {v1, v2, v3}, Lcom/mob/tools/network/OnReadListener;->onRead(J)V

    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->readBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnInputStreamReadListener(Lcom/mob/tools/network/OnReadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->listener:Lcom/mob/tools/network/OnReadListener;

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
