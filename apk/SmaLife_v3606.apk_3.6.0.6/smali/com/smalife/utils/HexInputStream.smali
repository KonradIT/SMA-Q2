.class public Lcom/smalife/utils/HexInputStream;
.super Ljava/io/FilterInputStream;
.source "HexInputStream.java"


# instance fields
.field private final LINE_LENGTH:I

.field private final localBuf:[B

.field private localPos:I

.field private pos:I

.field private size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/16 v1, 0x10

    .line 26
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    iput v1, p0, Lcom/smalife/utils/HexInputStream;->LINE_LENGTH:I

    .line 27
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/smalife/utils/HexInputStream;->localBuf:[B

    .line 28
    iput v1, p0, Lcom/smalife/utils/HexInputStream;->localPos:I

    .line 29
    iget-object v0, p0, Lcom/smalife/utils/HexInputStream;->localBuf:[B

    array-length v0, v0

    iput v0, p0, Lcom/smalife/utils/HexInputStream;->size:I

    .line 30
    return-void
.end method

.method private asciiToInt(I)I
    .locals 1
    .param p1, "ascii"    # I

    .prologue
    .line 165
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    .line 166
    add-int/lit8 v0, p1, -0x37

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    .line 169
    add-int/lit8 v0, p1, -0x30

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private checkComma(I)V
    .locals 2
    .param p1, "comma"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    .line 154
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a HEX file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    return-void
.end method

.method private readBuffer()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x0

    .line 92
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    if-ne v5, v10, :cond_0

    move v2, v4

    .line 141
    :goto_0
    return v2

    .line 96
    :cond_0
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    if-nez v5, :cond_1

    .line 97
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    int-to-long v6, v5

    iget-object v5, p0, Lcom/smalife/utils/HexInputStream;->in:Ljava/io/InputStream;

    const-wide/16 v8, 0xf

    invoke-virtual {v5, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    .line 100
    :cond_1
    const/4 v0, 0x0

    .line 104
    .local v0, "b":I
    :cond_2
    iget-object v5, p0, Lcom/smalife/utils/HexInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 105
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    .line 107
    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    .line 120
    invoke-direct {p0, v0}, Lcom/smalife/utils/HexInputStream;->checkComma(I)V

    .line 121
    invoke-direct {p0}, Lcom/smalife/utils/HexInputStream;->readByte()I

    move-result v2

    .line 122
    .local v2, "lineSize":I
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    .line 123
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    int-to-long v6, v5

    iget-object v5, p0, Lcom/smalife/utils/HexInputStream;->in:Ljava/io/InputStream;

    const-wide/16 v8, 0x4

    invoke-virtual {v5, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    .line 124
    invoke-direct {p0}, Lcom/smalife/utils/HexInputStream;->readByte()I

    move-result v3

    .line 125
    .local v3, "type":I
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    .line 128
    if-eqz v3, :cond_3

    .line 129
    iput v10, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    move v2, v4

    .line 130
    goto :goto_0

    .line 133
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/smalife/utils/HexInputStream;->localBuf:[B

    array-length v5, v5

    if-ge v1, v5, :cond_4

    if-lt v1, v2, :cond_5

    .line 138
    :cond_4
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    int-to-long v6, v5

    iget-object v5, p0, Lcom/smalife/utils/HexInputStream;->in:Ljava/io/InputStream;

    const-wide/16 v8, 0x2

    invoke-virtual {v5, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    .line 139
    iput v4, p0, Lcom/smalife/utils/HexInputStream;->localPos:I

    goto :goto_0

    .line 134
    :cond_5
    invoke-direct {p0}, Lcom/smalife/utils/HexInputStream;->readByte()I

    move-result v0

    .line 135
    iget v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    .line 136
    iget-object v5, p0, Lcom/smalife/utils/HexInputStream;->localBuf:[B

    int-to-byte v6, v0

    aput-byte v6, v5, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v2, p0, Lcom/smalife/utils/HexInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/smalife/utils/HexInputStream;->asciiToInt(I)I

    move-result v0

    .line 159
    .local v0, "first":I
    iget-object v2, p0, Lcom/smalife/utils/HexInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/smalife/utils/HexInputStream;->asciiToInt(I)I

    move-result v1

    .line 161
    .local v1, "second":I
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public available()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v8, 0x2

    .line 71
    .local v8, "newLineBytes":I
    const/16 v1, 0x11

    .line 72
    .local v1, "firstLineSize":I
    const/16 v6, 0x22

    .line 73
    .local v6, "lastTwoLinesSize":I
    iget-object v9, p0, Lcom/smalife/utils/HexInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    add-int/lit8 v9, v9, -0x11

    add-int/lit8 v0, v9, -0x22

    .line 76
    .local v0, "dataSize":I
    const/16 v3, 0x20

    .line 83
    .local v3, "fullLineDataBytes":I
    const/16 v4, 0xd

    .line 84
    .local v4, "fullLineOtherBytes":I
    const/16 v2, 0x2d

    .line 85
    .local v2, "fullLineBytes":I
    div-int/lit8 v7, v0, 0x2d

    .line 86
    .local v7, "lines":I
    rem-int/lit8 v5, v0, 0x2d

    .line 87
    .local v5, "lastDataLineSize":I
    mul-int/lit8 v10, v7, 0x20

    if-lez v5, :cond_0

    add-int/lit8 v9, v5, -0xd

    :goto_0
    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    return v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please, use readPacket() method instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/smalife/utils/HexInputStream;->readPacket([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please, use readPacket() method instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readPacket([B)I
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "i":I
    :cond_0
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 50
    :goto_1
    return v0

    .line 41
    :cond_1
    iget v2, p0, Lcom/smalife/utils/HexInputStream;->localPos:I

    iget v3, p0, Lcom/smalife/utils/HexInputStream;->size:I

    if-ge v2, v3, :cond_2

    .line 42
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/smalife/utils/HexInputStream;->localBuf:[B

    iget v3, p0, Lcom/smalife/utils/HexInputStream;->localPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/smalife/utils/HexInputStream;->localPos:I

    aget-byte v2, v2, v3

    aput-byte v2, p1, v0

    move v0, v1

    .line 43
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 46
    :cond_2
    invoke-direct {p0}, Lcom/smalife/utils/HexInputStream;->readBuffer()I

    move-result v2

    iput v2, p0, Lcom/smalife/utils/HexInputStream;->size:I

    .line 47
    iget v2, p0, Lcom/smalife/utils/HexInputStream;->size:I

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/HexInputStream;->pos:I

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/HexInputStream;->localPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
