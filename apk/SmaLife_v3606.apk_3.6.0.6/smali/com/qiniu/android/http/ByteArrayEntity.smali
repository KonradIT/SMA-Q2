.class public final Lcom/qiniu/android/http/ByteArrayEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final progressStep:I = 0x2000


# instance fields
.field private final b:[B

.field private final cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

.field private final len:I

.field private final off:I

.field private final progressHandler:Lcom/qiniu/android/http/ProgressHandler;


# direct methods
.method public constructor <init>([BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "h"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p5, "c"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 27
    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/qiniu/android/http/ByteArrayEntity;->b:[B

    .line 32
    iput p2, p0, Lcom/qiniu/android/http/ByteArrayEntity;->off:I

    .line 33
    iput p3, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    .line 34
    iput-object p4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    .line 35
    iput-object p5, p0, Lcom/qiniu/android/http/ByteArrayEntity;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    .line 36
    return-void
.end method

.method public constructor <init>([BLcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "h"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p3, "c"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 22
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/ByteArrayEntity;-><init>([BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 23
    return-void
.end method

.method private writeWithNotify(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2000

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "off":I
    :goto_0
    iget v4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    if-ge v2, v4, :cond_3

    .line 66
    iget-object v4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    invoke-interface {v4}, Lcom/qiniu/android/http/CancellationHandler;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    new-instance v3, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    invoke-direct {v3}, Lcom/qiniu/android/http/CancellationHandler$CancellationException;-><init>()V

    throw v3

    .line 74
    :cond_0
    iget v4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    sub-int v0, v4, v2

    .line 75
    .local v0, "left":I
    if-ge v0, v3, :cond_2

    move v1, v0

    .line 76
    .local v1, "len":I
    :goto_2
    iget-object v4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->b:[B

    iget v5, p0, Lcom/qiniu/android/http/ByteArrayEntity;->off:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    iget-object v4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    if-eqz v4, :cond_1

    .line 78
    iget-object v4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    iget v5, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    invoke-interface {v4, v2, v5}, Lcom/qiniu/android/http/ProgressHandler;->onProgress(II)V

    .line 80
    :cond_1
    add-int/2addr v2, v1

    .line 81
    goto :goto_0

    .end local v1    # "len":I
    :cond_2
    move v1, v3

    .line 75
    goto :goto_2

    .line 69
    .end local v0    # "left":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 82
    :cond_3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/qiniu/android/http/ByteArrayEntity;->b:[B

    iget v2, p0, Lcom/qiniu/android/http/ByteArrayEntity;->off:I

    iget v3, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/ByteArrayEntity;->writeWithNotify(Ljava/io/OutputStream;)V

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 61
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->b:[B

    iget v1, p0, Lcom/qiniu/android/http/ByteArrayEntity;->off:I

    iget v2, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
