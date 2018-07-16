.class public final Lcom/qiniu/android/dns/local/DnsMessage;
.super Ljava/lang/Object;
.source "DnsMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildQuery(Ljava/lang/String;I)[B
    .locals 5
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x200

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 27
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .local v2, "dos":Ljava/io/DataOutputStream;
    new-instance v1, Lcom/qiniu/android/dns/util/BitSet;

    invoke-direct {v1}, Lcom/qiniu/android/dns/util/BitSet;-><init>()V

    .line 31
    .local v1, "bits":Lcom/qiniu/android/dns/util/BitSet;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/qiniu/android/dns/util/BitSet;->set(I)Lcom/qiniu/android/dns/util/BitSet;

    .line 34
    int-to-short v4, p1

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 35
    invoke-virtual {v1}, Lcom/qiniu/android/dns/util/BitSet;->value()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 38
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 41
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 44
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 49
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 50
    invoke-static {v0, p0}, Lcom/qiniu/android/dns/local/DnsMessage;->writeQuestion(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static parseResponse([BILjava/lang/String;)[Lcom/qiniu/android/dns/Record;
    .locals 11
    .param p0, "response"    # [B
    .param p1, "id"    # I
    .param p2, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 77
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 80
    .local v1, "answerId":I
    if-eq v1, p1, :cond_0

    .line 81
    new-instance v8, Lcom/qiniu/android/dns/DnsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the answer id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not match "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p2, v9}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 83
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 84
    .local v4, "header":I
    shr-int/lit8 v9, v4, 0x8

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_2

    move v7, v6

    .line 85
    .local v7, "recursionDesired":Z
    :goto_0
    shr-int/lit8 v9, v4, 0x7

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_3

    .line 86
    .local v6, "recursionAvailable":Z
    :goto_1
    if-eqz v6, :cond_1

    if-nez v7, :cond_4

    .line 87
    :cond_1
    new-instance v8, Lcom/qiniu/android/dns/DnsException;

    const-string v9, "the dns server cant support recursion "

    invoke-direct {v8, p2, v9}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .end local v6    # "recursionAvailable":Z
    .end local v7    # "recursionDesired":Z
    :cond_2
    move v7, v8

    .line 84
    goto :goto_0

    .restart local v7    # "recursionDesired":Z
    :cond_3
    move v6, v8

    .line 85
    goto :goto_1

    .line 91
    .restart local v6    # "recursionAvailable":Z
    :cond_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 92
    .local v5, "questionCount":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 94
    .local v0, "answerCount":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 96
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 99
    invoke-static {v3, p0, v5}, Lcom/qiniu/android/dns/local/DnsMessage;->readQuestions(Ljava/io/DataInputStream;[BI)V

    .line 101
    invoke-static {v3, p0, v0}, Lcom/qiniu/android/dns/local/DnsMessage;->readAnswers(Ljava/io/DataInputStream;[BI)[Lcom/qiniu/android/dns/Record;

    move-result-object v8

    return-object v8
.end method

.method private static readAnswers(Ljava/io/DataInputStream;[BI)[Lcom/qiniu/android/dns/Record;
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "offset":I
    new-array v3, p2, [Lcom/qiniu/android/dns/Record;

    .local v3, "ret":[Lcom/qiniu/android/dns/Record;
    move v2, v1

    .end local v1    # "offset":I
    .local v2, "offset":I
    move v0, p2

    .line 184
    .end local p2    # "count":I
    .local v0, "count":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "count":I
    .restart local p2    # "count":I
    if-lez v0, :cond_0

    .line 185
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readRecord(Ljava/io/DataInputStream;[B)Lcom/qiniu/android/dns/Record;

    move-result-object v4

    aput-object v4, v3, v2

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    move v0, p2

    .end local p2    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 187
    .end local v0    # "count":I
    .restart local p2    # "count":I
    :cond_0
    return-object v3
.end method

.method private static readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;
    .locals 7
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 118
    .local v1, "c":I
    and-int/lit16 v5, v1, 0xc0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_1

    .line 119
    and-int/lit8 v5, v1, 0x3f

    shl-int/lit8 v5, v5, 0x8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    add-int v1, v5, v6

    .line 120
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 121
    .local v2, "jumps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {p1, v1, v2}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .end local v2    # "jumps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 124
    :cond_1
    if-nez v1, :cond_2

    .line 125
    const-string v3, ""

    goto :goto_0

    .line 127
    :cond_2
    new-array v0, v1, [B

    .line 128
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 129
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "s":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "t":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static readName([BILjava/util/HashSet;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "jumps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    aget-byte v3, p0, p1

    and-int/lit16 v0, v3, 0xff

    .line 152
    .local v0, "c":I
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 153
    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    new-instance v3, Lcom/qiniu/android/dns/DnsException;

    const-string v4, ""

    const-string v5, "Cyclic offsets detected."

    invoke-direct {v3, v4, v5}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {p0, v0, p2}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_1
    :goto_0
    return-object v1

    .line 160
    :cond_2
    if-nez v0, :cond_3

    .line 161
    const-string v1, ""

    goto :goto_0

    .line 163
    :cond_3
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v1, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 164
    .local v1, "s":Ljava/lang/String;
    add-int/lit8 v3, p1, 0x1

    add-int/2addr v3, v0

    invoke-static {p0, v3, p2}, Lcom/qiniu/android/dns/local/DnsMessage;->readName([BILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "t":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static readQuestions(Ljava/io/DataInputStream;[BI)V
    .locals 1
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    move v0, p2

    .end local p2    # "count":I
    .local v0, "count":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "count":I
    .restart local p2    # "count":I
    if-lez v0, :cond_0

    .line 173
    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 177
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move v0, p2

    .end local p2    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 179
    .end local v0    # "count":I
    .restart local p2    # "count":I
    :cond_0
    return-void
.end method

.method private static readRecord(Ljava/io/DataInputStream;[B)Lcom/qiniu/android/dns/Record;
    .locals 14
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 194
    .local v2, "type":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 196
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    .line 197
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v12, v0

    add-long v10, v4, v12

    .line 198
    .local v10, "ttl":J
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    .line 199
    .local v8, "payloadLength":I
    const/4 v1, 0x0

    .line 200
    .local v1, "payload":Ljava/lang/String;
    sparse-switch v2, :sswitch_data_0

    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 212
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 211
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 202
    .end local v6    # "i":I
    :sswitch_0
    const/4 v0, 0x4

    new-array v7, v0, [B

    .line 203
    .local v7, "ip":[B
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 204
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 216
    .end local v7    # "ip":[B
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 217
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v3, "no record"

    invoke-direct {v0, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :sswitch_1
    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->readName(Ljava/io/DataInputStream;[B)Ljava/lang/String;

    move-result-object v1

    .line 208
    goto :goto_1

    .line 219
    :cond_1
    new-instance v0, Lcom/qiniu/android/dns/Record;

    long-to-int v3, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    return-object v0

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private static writeDomain(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    const-string v2, "[.\u3002\uff0e\uff61]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 60
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 61
    .local v0, "buffer":[B
    array-length v6, v0

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write(I)V

    .line 62
    array-length v6, v0

    invoke-virtual {p0, v0, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "buffer":[B
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 65
    return-void
.end method

.method private static writeQuestion(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 68
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    .local v0, "dos":Ljava/io/DataOutputStream;
    invoke-static {p0, p1}, Lcom/qiniu/android/dns/local/DnsMessage;->writeDomain(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 73
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 74
    return-void
.end method
