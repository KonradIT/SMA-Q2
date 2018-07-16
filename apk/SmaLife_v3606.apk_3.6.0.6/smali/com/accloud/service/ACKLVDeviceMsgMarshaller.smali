.class public Lcom/accloud/service/ACKLVDeviceMsgMarshaller;
.super Ljava/lang/Object;
.source "ACKLVDeviceMsgMarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get2Bytes(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x2

    .line 88
    new-array v0, v3, [B

    .line 89
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v0, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-object v0
.end method

.method public static marshal(Lcom/accloud/service/ACKLVObject;)[B
    .locals 3
    .param p0, "object"    # Lcom/accloud/service/ACKLVObject;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/accloud/service/ACKLVObject;->getKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    return-object v2

    .line 19
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 22
    .local v1, "outputStream":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {v1, p0}, Lcom/accloud/service/ACKLVDeviceMsgMarshaller;->writeObject(Ljava/io/DataOutputStream;Lcom/accloud/service/ACKLVObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static unmarshal([B)Lcom/accloud/service/ACKLVObject;
    .locals 14
    .param p0, "payload"    # [B

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 29
    if-eqz p0, :cond_0

    array-length v8, p0

    if-nez v8, :cond_2

    :cond_0
    move-object v7, v10

    .line 84
    :cond_1
    return-object v7

    .line 32
    :cond_2
    new-instance v7, Lcom/accloud/service/ACKLVObject;

    invoke-direct {v7}, Lcom/accloud/service/ACKLVObject;-><init>()V

    .line 33
    .local v7, "object":Lcom/accloud/service/ACKLVObject;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/4 v11, 0x2

    if-lt v8, v11, :cond_1

    .line 35
    invoke-static {v1}, Lcom/accloud/service/ACKLVDeviceMsgMarshaller;->get2Bytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/accloud/service/ACKLVMessage;->getHead([B)Lcom/accloud/service/ACKLVHead;

    move-result-object v3

    .line 36
    .local v3, "head":Lcom/accloud/service/ACKLVHead;
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 38
    :pswitch_0
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    if-ne v8, v9, :cond_3

    move v8, v9

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 44
    :pswitch_2
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto :goto_0

    .line 47
    :pswitch_3
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto :goto_0

    .line 50
    :pswitch_4
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto :goto_0

    .line 53
    :pswitch_5
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto :goto_0

    .line 56
    :pswitch_6
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto/16 :goto_0

    .line 59
    :pswitch_7
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto/16 :goto_0

    .line 62
    :pswitch_8
    new-instance v8, Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/accloud/service/ACKLVDeviceMsgMarshaller;->get2Bytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->shortValue()S

    move-result v5

    .line 63
    .local v5, "length":I
    new-array v0, v5, [B

    .line 64
    .local v0, "bString":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_4

    .line 65
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    aput-byte v8, v0, v4

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 68
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v11, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8, v11}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 69
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 73
    .end local v0    # "bString":[B
    .end local v4    # "i":I
    .end local v5    # "length":I
    :pswitch_9
    new-instance v8, Ljava/math/BigInteger;

    invoke-static {v1}, Lcom/accloud/service/ACKLVDeviceMsgMarshaller;->get2Bytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->shortValue()S

    move-result v6

    .line 74
    .local v6, "length1":I
    new-array v2, v6, [B

    .line 75
    .local v2, "bytes":[B
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v6, :cond_5

    .line 76
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    aput-byte v8, v2, v4

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {v3}, Lcom/accloud/service/ACKLVHead;->getKey()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lcom/accloud/service/ACKLVObject;->put(ILjava/lang/Object;)Lcom/accloud/service/ACKLVObject;

    goto/16 :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static writeObject(Ljava/io/DataOutputStream;Lcom/accloud/service/ACKLVObject;)V
    .locals 10
    .param p0, "outputStream"    # Ljava/io/DataOutputStream;
    .param p1, "object"    # Lcom/accloud/service/ACKLVObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/accloud/service/ACKLVObject;->getKeys()Ljava/util/Set;

    move-result-object v3

    .line 96
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 97
    :cond_0
    invoke-static {v9, v9}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 148
    :cond_1
    return-void

    .line 99
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 100
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Lcom/accloud/service/ACKLVObject;->get(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v4

    .line 101
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_4

    .line 102
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v9}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 103
    :cond_4
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    move-object v5, v4

    .line 104
    check-cast v5, Ljava/lang/Boolean;

    .line 105
    .local v5, "value":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 106
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0

    .line 107
    .end local v5    # "value":Ljava/lang/Boolean;
    :cond_5
    instance-of v6, v4, Ljava/lang/Byte;

    if-eqz v6, :cond_6

    move-object v5, v4

    .line 108
    check-cast v5, Ljava/lang/Byte;

    .line 109
    .local v5, "value":Ljava/lang/Byte;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 110
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 111
    .end local v5    # "value":Ljava/lang/Byte;
    :cond_6
    instance-of v6, v4, Ljava/lang/Short;

    if-eqz v6, :cond_7

    move-object v5, v4

    .line 112
    check-cast v5, Ljava/lang/Short;

    .line 113
    .local v5, "value":Ljava/lang/Short;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 114
    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 115
    .end local v5    # "value":Ljava/lang/Short;
    :cond_7
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_8

    move-object v5, v4

    .line 116
    check-cast v5, Ljava/lang/Integer;

    .line 117
    .local v5, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 118
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_8
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_9

    move-object v5, v4

    .line 120
    check-cast v5, Ljava/lang/Long;

    .line 121
    .local v5, "value":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 122
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_0

    .line 123
    .end local v5    # "value":Ljava/lang/Long;
    :cond_9
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_a

    move-object v5, v4

    .line 124
    check-cast v5, Ljava/lang/Float;

    .line 125
    .local v5, "value":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 126
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_0

    .line 127
    .end local v5    # "value":Ljava/lang/Float;
    :cond_a
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_b

    move-object v5, v4

    .line 128
    check-cast v5, Ljava/lang/Double;

    .line 129
    .local v5, "value":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x7

    invoke-static {v6, v7}, Lcom/accloud/service/ACKLVMessage;->getBytes(II)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 130
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_0

    .line 131
    .end local v5    # "value":Ljava/lang/Double;
    :cond_b
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_c

    move-object v5, v4

    .line 132
    check-cast v5, Ljava/lang/String;

    .line 133
    .local v5, "value":Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    .local v0, "bytes":[B
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x8

    array-length v8, v0

    invoke-static {v6, v7, v8}, Lcom/accloud/service/ACKLVMessage;->getBytes(III)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 135
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "bytes":[B
    .end local v5    # "value":Ljava/lang/String;
    :cond_c
    instance-of v6, v4, [B

    if-eqz v6, :cond_3

    .line 137
    check-cast v4, [B

    .end local v4    # "o":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, [B

    .line 138
    .local v5, "value":[B
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x9

    array-length v8, v5

    invoke-static {v6, v7, v8}, Lcom/accloud/service/ACKLVMessage;->getBytes(III)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 139
    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->write([B)V

    goto/16 :goto_0
.end method
