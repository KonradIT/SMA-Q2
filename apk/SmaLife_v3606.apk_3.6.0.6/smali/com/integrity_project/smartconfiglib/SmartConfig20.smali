.class public Lcom/integrity_project/smartconfiglib/SmartConfig20;
.super Ljava/lang/Object;
.source "SmartConfig20.java"


# instance fields
.field private hasEncryption:Z

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:[B

.field private mSsid:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mfreeData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructFreeData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x1

    .line 129
    .local v0, "ConstOffset_1":I
    const/16 v1, 0x1b

    .line 131
    .local v1, "ConstOffset_2":I
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mfreeData:[B

    array-length v3, v4

    .line 133
    .local v3, "freeDataLength":I
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v4, 0x1b

    .line 135
    .local v2, "freeDataL":I
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mfreeData:[B

    invoke-direct {p0, v4}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->encodeFreeData([B)V

    .line 138
    return-void
.end method

.method private constructKey()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "ConstOffset_1":I
    const/16 v1, 0x1b

    .line 96
    .local v1, "ConstOffset_2":I
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mKey:[B

    array-length v3, v4

    .line 99
    .local v3, "keyLength":I
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v4, 0x1b

    .line 101
    .local v2, "keyL":I
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mKey:[B

    invoke-direct {p0, v4}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->encodeKeyString([B)V

    .line 104
    return-void
.end method

.method private constructSsid()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "ConstOffset_1":I
    const/16 v1, 0x1b

    .line 58
    .local v1, "ConstOffset_2":I
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mSsid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 59
    .local v3, "ssidLength":I
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v4, 0x1b

    .line 61
    .local v2, "ssidL":I
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mSsid:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->encodeSsidString(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private convertStringToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private encodeFreeData([B)V
    .locals 10
    .param p1, "freeData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    const/16 v0, 0x251

    .line 142
    .local v0, "DataOffset":I
    const/4 v7, 0x0

    .line 143
    .local v7, "prevNibble":B
    const/4 v2, 0x0

    .line 145
    .local v2, "currentIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, p1

    if-lt v5, v8, :cond_0

    .line 158
    return-void

    .line 146
    :cond_0
    aget-byte v8, p1, v5

    invoke-direct {p0, v8}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->intToUint8(I)I

    move-result v1

    .line 147
    .local v1, "currentChar":I
    and-int/lit8 v6, v1, 0xf

    .line 148
    .local v6, "lowNibble":I
    shr-int/lit8 v4, v1, 0x4

    .line 150
    .local v4, "highNibble":I
    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "currentIndex":I
    .local v3, "currentIndex":I
    xor-int v9, v7, v2

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v4

    add-int/lit16 v9, v9, 0x251

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    int-to-byte v7, v4

    .line 152
    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "currentIndex":I
    .restart local v2    # "currentIndex":I
    xor-int v9, v7, v3

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v6

    add-int/lit16 v9, v9, 0x251

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    int-to-byte v7, v6

    .line 155
    and-int/lit8 v2, v2, 0xf

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private encodeKeyString([B)V
    .locals 10
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    const/16 v0, 0x251

    .line 109
    .local v0, "DataOffset":I
    const/4 v7, 0x0

    .line 110
    .local v7, "prevNibble":B
    const/4 v2, 0x0

    .line 112
    .local v2, "currentIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, p1

    if-lt v5, v8, :cond_0

    .line 125
    return-void

    .line 113
    :cond_0
    aget-byte v8, p1, v5

    invoke-direct {p0, v8}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->intToUint8(I)I

    move-result v1

    .line 114
    .local v1, "currentChar":I
    and-int/lit8 v6, v1, 0xf

    .line 115
    .local v6, "lowNibble":I
    shr-int/lit8 v4, v1, 0x4

    .line 117
    .local v4, "highNibble":I
    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "currentIndex":I
    .local v3, "currentIndex":I
    xor-int v9, v7, v2

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v4

    add-int/lit16 v9, v9, 0x251

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    int-to-byte v7, v4

    .line 119
    iget-object v8, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "currentIndex":I
    .restart local v2    # "currentIndex":I
    xor-int v9, v7, v3

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v6

    add-int/lit16 v9, v9, 0x251

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    int-to-byte v7, v6

    .line 122
    and-int/lit8 v2, v2, 0xf

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private encodeSsidString(Ljava/lang/String;)V
    .locals 11
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    const/16 v0, 0x251

    .line 69
    .local v0, "DataOffset":I
    const/4 v7, 0x0

    .line 70
    .local v7, "prevNibble":B
    const/4 v2, 0x0

    .line 71
    .local v2, "currentIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    new-array v8, v9, [B

    .line 73
    .local v8, "stringBuffer":[B
    invoke-direct {p0, p1}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->convertStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 75
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v5, v9, :cond_0

    .line 88
    return-void

    .line 76
    :cond_0
    aget-byte v1, v8, v5

    .line 78
    .local v1, "currentChar":B
    and-int/lit8 v6, v1, 0xf

    .line 79
    .local v6, "lowNibble":I
    shr-int/lit8 v4, v1, 0x4

    .line 81
    .local v4, "highNibble":I
    iget-object v9, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "currentIndex":I
    .local v3, "currentIndex":I
    xor-int v10, v7, v2

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v10, v4

    add-int/lit16 v10, v10, 0x251

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    int-to-byte v7, v4

    .line 83
    iget-object v9, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "currentIndex":I
    .restart local v2    # "currentIndex":I
    xor-int v10, v7, v3

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v10, v6

    add-int/lit16 v10, v10, 0x251

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    int-to-byte v7, v6

    .line 86
    and-int/lit8 v2, v2, 0xf

    .line 75
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private intToUint8(I)I
    .locals 1
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public encodePackets()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    .line 33
    const/16 v3, 0x44b

    .line 34
    .local v3, "T_START":I
    const/16 v2, 0x4af

    .line 35
    .local v2, "T_MID_NO_ENCRYPTION":I
    const/16 v1, 0x4b0

    .line 36
    .local v1, "T_MID_ENCRYPTION":I
    const/16 v0, 0x47d

    .line 38
    .local v0, "T_FREE":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    .line 39
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    const/16 v5, 0x44b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->constructSsid()V

    .line 41
    iget-boolean v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->hasEncryption:Z

    if-eqz v4, :cond_1

    .line 42
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    const/16 v5, 0x4b0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_0
    invoke-direct {p0}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->constructKey()V

    .line 47
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mfreeData:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 48
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    const/16 v5, 0x47d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Lcom/integrity_project/smartconfiglib/SmartConfig20;->constructFreeData()V

    .line 51
    :cond_0
    return-void

    .line 44
    :cond_1
    iget-object v4, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    const/16 v5, 0x4af

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getmData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmFreeData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mfreeData:[B

    return-object v0
.end method

.method public getmKey()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mKey:[B

    return-object v0
.end method

.method public getmSsid()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getmToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setHasEncryption(Z)V
    .locals 0
    .param p1, "hasEncryption"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->hasEncryption:Z

    .line 214
    return-void
.end method

.method public setmFreeData([B)V
    .locals 0
    .param p1, "mFreeData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mfreeData:[B

    .line 202
    return-void
.end method

.method public setmKey([B)V
    .locals 0
    .param p1, "mKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mKey:[B

    .line 193
    return-void
.end method

.method public setmSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSsid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mSsid:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setmToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/integrity_project/smartconfiglib/SmartConfig20;->mToken:Ljava/lang/String;

    .line 210
    return-void
.end method
