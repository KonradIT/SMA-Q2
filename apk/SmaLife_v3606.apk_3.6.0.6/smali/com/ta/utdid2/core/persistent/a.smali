.class Lcom/ta/utdid2/core/persistent/a;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:I = 0x2000


# instance fields
.field private final c:[C

.field private d:I

.field private e:Ljava/io/Writer;

.field private f:Ljava/io/OutputStream;

.field private g:Ljava/nio/charset/CharsetEncoder;

.field private h:Ljava/nio/ByteBuffer;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    sput-object v0, Lcom/ta/utdid2/core/persistent/a;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->c:[C

    .line 44
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->h:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 206
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/a;->f:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 207
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 209
    :cond_0
    return-void
.end method

.method private a(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 50
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/a;->flush()V

    .line 52
    iget v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/a;->c:[C

    aput-char p1, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;II)V

    .line 98
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2000

    .line 59
    if-le p3, v1, :cond_1

    .line 60
    add-int v3, p2, p3

    .line 61
    :goto_0
    if-ge p2, v3, :cond_3

    .line 62
    add-int/lit16 v2, p2, 0x2000

    .line 63
    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;II)V

    move p2, v2

    .line 65
    goto :goto_0

    .line 63
    :cond_0
    sub-int v0, v3, p2

    goto :goto_1

    .line 68
    :cond_1
    iget v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 69
    add-int v2, v0, p3

    if-le v2, v1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/a;->flush()V

    .line 71
    iget v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 73
    :cond_2
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/a;->c:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 74
    add-int/2addr v0, p3

    iput v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 75
    :cond_3
    return-void
.end method

.method private a([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2000

    .line 78
    if-le p3, v1, :cond_1

    .line 79
    add-int v3, p2, p3

    .line 80
    :goto_0
    if-ge p2, v3, :cond_3

    .line 81
    add-int/lit16 v2, p2, 0x2000

    .line 82
    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/ta/utdid2/core/persistent/a;->a([CII)V

    move p2, v2

    .line 84
    goto :goto_0

    .line 82
    :cond_0
    sub-int v0, v3, p2

    goto :goto_1

    .line 87
    :cond_1
    iget v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 88
    add-int v2, v0, p3

    if-le v2, v1, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/a;->flush()V

    .line 90
    iget v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/a;->c:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int/2addr v0, p3

    iput v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 94
    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 102
    sget-object v1, Lcom/ta/utdid2/core/persistent/a;->a:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v3, v1

    .line 103
    sget-object v4, Lcom/ta/utdid2/core/persistent/a;->a:[Ljava/lang/String;

    move v1, v0

    .line 106
    :goto_0
    if-ge v1, v2, :cond_3

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 108
    if-lt v5, v3, :cond_1

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    aget-object v5, v4, v5

    .line 111
    if-eqz v5, :cond_0

    .line 113
    if-ge v0, v1, :cond_2

    .line 114
    sub-int v6, v1, v0

    invoke-direct {p0, p1, v0, v6}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;II)V

    .line 115
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 116
    invoke-direct {p0, v5}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_3
    if-ge v0, v1, :cond_4

    .line 119
    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;II)V

    .line 120
    :cond_4
    return-void
.end method

.method private b([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/ta/utdid2/core/persistent/a;->a:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v1, v0

    .line 125
    sget-object v2, Lcom/ta/utdid2/core/persistent/a;->a:[Ljava/lang/String;

    .line 126
    add-int v3, p2, p3

    move v0, p2

    .line 129
    :goto_0
    if-ge p2, v3, :cond_3

    .line 130
    aget-char v4, p1, p2

    .line 131
    if-lt v4, v1, :cond_1

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    aget-object v4, v2, v4

    .line 134
    if-eqz v4, :cond_0

    .line 136
    if-ge v0, p2, :cond_2

    .line 137
    sub-int v5, p2, v0

    invoke-direct {p0, p1, v0, v5}, Lcom/ta/utdid2/core/persistent/a;->a([CII)V

    .line 138
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 139
    invoke-direct {p0, v4}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_3
    if-ge v0, p2, :cond_4

    .line 142
    sub-int v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ta/utdid2/core/persistent/a;->a([CII)V

    .line 143
    :cond_4
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 147
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(C)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 150
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(C)V

    .line 152
    :cond_0
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 153
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p3}, Lcom/ta/utdid2/core/persistent/a;->b(Ljava/lang/String;)V

    .line 156
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(C)V

    .line 157
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/a;->flush()V

    .line 178
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/a;->i:Z

    if-eqz v0, :cond_0

    .line 183
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 193
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/a;->i:Z

    .line 194
    return-object p0

    .line 185
    :cond_0
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_1

    .line 187
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 188
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(C)V

    .line 190
    :cond_1
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 191
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    iget v0, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    if-lez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->c:[C

    iget v1, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    invoke-static {v0, v3, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->g:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 217
    :goto_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/a;->a()V

    .line 221
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->g:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/a;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/a;->a()V

    .line 227
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->f:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 232
    :goto_1
    iput v3, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    .line 234
    :cond_2
    return-void

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->e:Ljava/io/Writer;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/a;->c:[C

    iget v2, p0, Lcom/ta/utdid2/core/persistent/a;->d:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 230
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->e:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 285
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/a;->g:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/a;->f:Ljava/io/OutputStream;

    .line 298
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 302
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/a;->e:Ljava/io/Writer;

    .line 303
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 319
    return-void

    .line 317
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/a;->i:Z

    if-eqz v0, :cond_0

    .line 324
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 326
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(C)V

    .line 327
    if-eqz p1, :cond_1

    .line 328
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 329
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(C)V

    .line 331
    :cond_1
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/a;->i:Z

    .line 333
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/a;->i:Z

    if-eqz v0, :cond_0

    .line 349
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/a;->i:Z

    .line 352
    :cond_0
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/a;->b(Ljava/lang/String;)V

    .line 353
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/a;->i:Z

    if-eqz v0, :cond_0

    .line 339
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/a;->a(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/a;->i:Z

    .line 342
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/a;->b([CII)V

    .line 343
    return-object p0
.end method
