.class public Lcom/MARVELL/xmitterTask;
.super Landroid/os/AsyncTask;
.source "xmitterTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public mac:[C

.field public passCRC:I

.field public passLen:I

.field public passphrase:[B

.field public preamble:[C

.field public ssid:Ljava/lang/String;

.field public ssidCRC:I

.field public ssidLen:I

.field private state:I

.field private substate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private stateMachine()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    iget v0, p0, Lcom/MARVELL/xmitterTask;->state:I

    packed-switch v0, :pswitch_data_0

    .line 165
    const-string v0, "MRVL"

    const-string v1, "I shouldn\'t be here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 125
    iput v3, p0, Lcom/MARVELL/xmitterTask;->state:I

    .line 126
    iput v2, p0, Lcom/MARVELL/xmitterTask;->substate:I

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    invoke-direct {p0, v0}, Lcom/MARVELL/xmitterTask;->xmitState0(I)V

    .line 129
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    goto :goto_0

    .line 133
    :pswitch_1
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    invoke-direct {p0, v0, v4}, Lcom/MARVELL/xmitterTask;->xmitState1(II)V

    .line 134
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    .line 135
    iget v0, p0, Lcom/MARVELL/xmitterTask;->ssidLen:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_2

    .line 136
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/MARVELL/xmitterTask;->ssidLen:I

    add-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_0

    .line 137
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    invoke-direct {p0, v0, v3}, Lcom/MARVELL/xmitterTask;->xmitState1(II)V

    .line 138
    iput v4, p0, Lcom/MARVELL/xmitterTask;->state:I

    .line 139
    iput v2, p0, Lcom/MARVELL/xmitterTask;->substate:I

    goto :goto_0

    .line 142
    :cond_2
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/MARVELL/xmitterTask;->ssidLen:I

    add-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    .line 143
    iput v4, p0, Lcom/MARVELL/xmitterTask;->state:I

    .line 144
    iput v2, p0, Lcom/MARVELL/xmitterTask;->substate:I

    goto :goto_0

    .line 149
    :pswitch_2
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    invoke-direct {p0, v0, v4}, Lcom/MARVELL/xmitterTask;->xmitState2(II)V

    .line 150
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    .line 151
    iget v0, p0, Lcom/MARVELL/xmitterTask;->passLen:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_3

    .line 152
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/MARVELL/xmitterTask;->passLen:I

    add-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_0

    .line 153
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    invoke-direct {p0, v0, v3}, Lcom/MARVELL/xmitterTask;->xmitState2(II)V

    .line 154
    iput v2, p0, Lcom/MARVELL/xmitterTask;->state:I

    .line 155
    iput v2, p0, Lcom/MARVELL/xmitterTask;->substate:I

    goto :goto_0

    .line 158
    :cond_3
    iget v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/MARVELL/xmitterTask;->passLen:I

    add-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    .line 159
    iput v2, p0, Lcom/MARVELL/xmitterTask;->state:I

    .line 160
    iput v2, p0, Lcom/MARVELL/xmitterTask;->substate:I

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private xmitRaw(III)V
    .locals 8
    .param p1, "u"    # I
    .param p2, "m"    # I
    .param p3, "l"    # I

    .prologue
    .line 40
    const/4 v5, 0x2

    new-array v0, v5, [B

    .line 41
    .local v0, "data":[B
    const-string v5, "a"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 43
    and-int/lit8 p1, p1, 0x7f

    .line 46
    :try_start_0
    const-string v5, "MRVL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "226."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "226."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 49
    .local v4, "sessAddr":Ljava/net/InetAddress;
    new-instance v3, Ljava/net/MulticastSocket;

    const/16 v5, 0x4d2

    invoke-direct {v3, v5}, Ljava/net/MulticastSocket;-><init>(I)V

    .line 50
    .local v3, "ms":Ljava/net/MulticastSocket;
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v5, v0

    const/16 v6, 0x157c

    invoke-direct {v1, v0, v5, v4, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 51
    .local v1, "dp":Ljava/net/DatagramPacket;
    invoke-virtual {v3, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 52
    invoke-virtual {v3}, Ljava/net/MulticastSocket;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v1    # "dp":Ljava/net/DatagramPacket;
    .end local v3    # "ms":Ljava/net/MulticastSocket;
    .end local v4    # "sessAddr":Ljava/net/InetAddress;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v5, "MRVL"

    const-string v6, "Exiting 5"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private xmitState0(I)V
    .locals 5
    .param p1, "substate"    # I

    .prologue
    .line 68
    iget-object v3, p0, Lcom/MARVELL/xmitterTask;->preamble:[C

    mul-int/lit8 v4, p1, 0x2

    aget-char v2, v3, v4

    .line 69
    .local v2, "k":I
    iget-object v3, p0, Lcom/MARVELL/xmitterTask;->preamble:[C

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v1, v3, v4

    .line 70
    .local v1, "j":I
    or-int/lit8 v0, p1, 0x78

    .line 72
    .local v0, "i":I
    invoke-direct {p0, v0, v1, v2}, Lcom/MARVELL/xmitterTask;->xmitRaw(III)V

    .line 73
    return-void
.end method

.method private xmitState1(II)V
    .locals 9
    .param p1, "substate"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v8, 0x2

    .line 78
    if-nez p1, :cond_0

    .line 79
    const/16 v5, 0x40

    .line 80
    .local v5, "u":I
    iget v6, p0, Lcom/MARVELL/xmitterTask;->ssidLen:I

    iget v7, p0, Lcom/MARVELL/xmitterTask;->ssidLen:I

    invoke-direct {p0, v5, v6, v7}, Lcom/MARVELL/xmitterTask;->xmitRaw(III)V

    .line 96
    .end local v5    # "u":I
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    if-ne p1, v8, :cond_2

    .line 82
    :cond_1
    iget v6, p0, Lcom/MARVELL/xmitterTask;->ssidCRC:I

    add-int/lit8 v7, p1, -0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x0

    mul-int/lit8 v7, v7, 0x8

    shr-int/2addr v6, v7

    and-int/lit16 v2, v6, 0xff

    .line 83
    .local v2, "k":I
    iget v6, p0, Lcom/MARVELL/xmitterTask;->ssidCRC:I

    add-int/lit8 v7, p1, -0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x8

    shr-int/2addr v6, v7

    and-int/lit16 v1, v6, 0xff

    .line 84
    .local v1, "j":I
    or-int/lit8 v0, p1, 0x40

    .line 85
    .local v0, "i":I
    invoke-direct {p0, v0, v1, v2}, Lcom/MARVELL/xmitterTask;->xmitRaw(III)V

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "k":I
    :cond_2
    or-int/lit8 v5, p1, 0x40

    .line 88
    .restart local v5    # "u":I
    iget-object v6, p0, Lcom/MARVELL/xmitterTask;->ssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, p1, -0x3

    mul-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v3, v6, 0xff

    .line 90
    .local v3, "l":I
    if-ne p2, v8, :cond_3

    .line 91
    iget-object v6, p0, Lcom/MARVELL/xmitterTask;->ssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, p1, -0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v4, v6, 0xff

    .line 94
    .local v4, "m":I
    :goto_1
    invoke-direct {p0, v5, v4, v3}, Lcom/MARVELL/xmitterTask;->xmitRaw(III)V

    goto :goto_0

    .line 93
    .end local v4    # "m":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "m":I
    goto :goto_1
.end method

.method private xmitState2(II)V
    .locals 9
    .param p1, "substate"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v8, 0x2

    .line 101
    if-nez p1, :cond_0

    .line 102
    const/4 v5, 0x0

    .line 103
    .local v5, "u":I
    iget v6, p0, Lcom/MARVELL/xmitterTask;->passLen:I

    iget v7, p0, Lcom/MARVELL/xmitterTask;->passLen:I

    invoke-direct {p0, v5, v6, v7}, Lcom/MARVELL/xmitterTask;->xmitRaw(III)V

    .line 119
    .end local v5    # "u":I
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    if-ne p1, v8, :cond_2

    .line 105
    :cond_1
    iget v6, p0, Lcom/MARVELL/xmitterTask;->passCRC:I

    add-int/lit8 v7, p1, -0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x0

    mul-int/lit8 v7, v7, 0x8

    shr-int/2addr v6, v7

    and-int/lit16 v2, v6, 0xff

    .line 106
    .local v2, "k":I
    iget v6, p0, Lcom/MARVELL/xmitterTask;->passCRC:I

    add-int/lit8 v7, p1, -0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x8

    shr-int/2addr v6, v7

    and-int/lit16 v1, v6, 0xff

    .line 107
    .local v1, "j":I
    move v0, p1

    .line 108
    .local v0, "i":I
    invoke-direct {p0, v0, v1, v2}, Lcom/MARVELL/xmitterTask;->xmitRaw(III)V

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "k":I
    :cond_2
    move v5, p1

    .line 111
    .restart local v5    # "u":I
    iget-object v6, p0, Lcom/MARVELL/xmitterTask;->passphrase:[B

    add-int/lit8 v7, p1, -0x3

    mul-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v3, v6, 0xff

    .line 113
    .local v3, "l":I
    if-ne p2, v8, :cond_3

    .line 114
    iget-object v6, p0, Lcom/MARVELL/xmitterTask;->passphrase:[B

    add-int/lit8 v7, p1, -0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v4, v6, 0xff

    .line 117
    .local v4, "m":I
    :goto_1
    invoke-direct {p0, v5, v4, v3}, Lcom/MARVELL/xmitterTask;->xmitRaw(III)V

    goto :goto_0

    .line 116
    .end local v4    # "m":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "m":I
    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/MARVELL/xmitterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 170
    sget-object v3, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 171
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    const-string v3, "mcastlock"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    .line 172
    .local v1, "mcastLock":Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/MARVELL/xmitterTask;->passLen:I

    if-ge v0, v3, :cond_0

    .line 174
    const-string v3, "MRVL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/MARVELL/xmitterTask;->passphrase:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_1
    iget v3, p0, Lcom/MARVELL/xmitterTask;->state:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/MARVELL/xmitterTask;->substate:I

    if-nez v3, :cond_1

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_1
    const/16 v3, 0x1388

    if-lt v0, v3, :cond_3

    .line 203
    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 204
    const/4 v3, 0x0

    return-object v3

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/MARVELL/xmitterTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/MARVELL/xmitterTask;->stateMachine()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/MARVELL/xmitterTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 209
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/MARVELL/xmitterTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 217
    return-void
.end method

.method public resetStateMachine()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/MARVELL/xmitterTask;->state:I

    .line 32
    iput v0, p0, Lcom/MARVELL/xmitterTask;->substate:I

    .line 33
    return-void
.end method
