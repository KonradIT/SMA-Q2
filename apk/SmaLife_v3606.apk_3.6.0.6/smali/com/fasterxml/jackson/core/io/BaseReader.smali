.class abstract Lcom/fasterxml/jackson/core/io/BaseReader;
.super Ljava/io/Reader;
.source "BaseReader.java"


# static fields
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field protected static final NULL_BYTE:C

.field protected static final NULL_CHAR:C


# instance fields
.field protected _buffer:[B

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected _in:Ljava/io/InputStream;

.field protected _length:I

.field protected _ptr:I

.field protected _tmpBuf:[C


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    .line 41
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 42
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;

    .line 43
    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B

    .line 44
    iput p4, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_ptr:I

    .line 45
    iput p5, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_length:I

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_in:Ljava/io/InputStream;

    .line 61
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/BaseReader;->freeBuffers()V

    .line 62
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    :cond_0
    return-void
.end method

.method public final freeBuffers()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_buffer:[B

    .line 101
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 103
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    if-nez v0, :cond_0

    .line 77
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/BaseReader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 80
    const/4 v0, -0x1

    .line 82
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/BaseReader;->_tmpBuf:[C

    aget-char v0, v0, v2

    goto :goto_0
.end method

.method protected reportBounds([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reportStrangeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
