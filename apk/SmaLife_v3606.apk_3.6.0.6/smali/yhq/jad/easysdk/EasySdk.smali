.class public Lyhq/jad/easysdk/EasySdk;
.super Ljava/lang/Object;
.source "EasySdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyhq/jad/easysdk/EasySdk$sendThread;
    }
.end annotation


# instance fields
.field private SEND_INTERVAL:I

.field private boad_delay:I

.field private boad_time:Ljava/lang/Runnable;

.field private boad_udp:Lyhq/jad/easysdk/UdpSocket;

.field private e_psk:[B

.field private handler:Landroid/os/Handler;

.field private psk:[B

.field private psk_len:I

.field private read_data:[B

.field private recv_status:Z

.field private s_thread:Z

.field private udp:Lyhq/jad/easysdk/UdpSocket;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyhq/jad/easysdk/EasySdk;->s_thread:Z

    .line 10
    iput-object v2, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    .line 11
    iput-object v2, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    .line 12
    new-array v0, v3, [B

    iput-object v0, p0, Lyhq/jad/easysdk/EasySdk;->psk:[B

    .line 13
    new-array v0, v3, [B

    iput-object v0, p0, Lyhq/jad/easysdk/EasySdk;->e_psk:[B

    .line 14
    iput v1, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    .line 15
    iput v1, p0, Lyhq/jad/easysdk/EasySdk;->boad_delay:I

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lyhq/jad/easysdk/EasySdk;->SEND_INTERVAL:I

    .line 17
    iput-boolean v1, p0, Lyhq/jad/easysdk/EasySdk;->recv_status:Z

    .line 18
    iput-object v2, p0, Lyhq/jad/easysdk/EasySdk;->read_data:[B

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lyhq/jad/easysdk/EasySdk;->handler:Landroid/os/Handler;

    .line 204
    new-instance v0, Lyhq/jad/easysdk/EasySdk$1;

    invoke-direct {v0, p0}, Lyhq/jad/easysdk/EasySdk$1;-><init>(Lyhq/jad/easysdk/EasySdk;)V

    iput-object v0, p0, Lyhq/jad/easysdk/EasySdk;->boad_time:Ljava/lang/Runnable;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lyhq/jad/easysdk/EasySdk;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lyhq/jad/easysdk/EasySdk;->boad_delay:I

    return v0
.end method

.method static synthetic access$1(Lyhq/jad/easysdk/EasySdk;I)V
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lyhq/jad/easysdk/EasySdk;->boad_delay:I

    return-void
.end method

.method static synthetic access$2(Lyhq/jad/easysdk/EasySdk;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lyhq/jad/easysdk/EasySdk;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->boad_time:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lyhq/jad/easysdk/EasySdk;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lyhq/jad/easysdk/EasySdk;->s_thread:Z

    return v0
.end method

.method static synthetic access$5(Lyhq/jad/easysdk/EasySdk;)Z
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lyhq/jad/easysdk/EasySdk;->send()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lyhq/jad/easysdk/EasySdk;)Lyhq/jad/easysdk/UdpSocket;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    return-object v0
.end method

.method static synthetic access$7(Lyhq/jad/easysdk/EasySdk;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lyhq/jad/easysdk/EasySdk;->recv_data()V

    return-void
.end method

.method static synthetic access$8(Lyhq/jad/easysdk/EasySdk;)Lyhq/jad/easysdk/UdpSocket;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    return-object v0
.end method

.method static synthetic access$9(Lyhq/jad/easysdk/EasySdk;Z)V
    .locals 0

    .prologue
    .line 9
    iput-boolean p1, p0, Lyhq/jad/easysdk/EasySdk;->s_thread:Z

    return-void
.end method

.method private mac2ip(BBI)Ljava/lang/String;
    .locals 5
    .param p1, "mac1"    # B
    .param p2, "mac2"    # B
    .param p3, "index"    # I

    .prologue
    .line 191
    const-string v0, ""

    .line 192
    .local v0, "mac":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "mac_1":I
    const/4 v2, 0x0

    .line 193
    .local v2, "mac_2":I
    if-gez p1, :cond_0

    .line 194
    add-int/lit16 v1, p1, 0x100

    .line 197
    :goto_0
    if-gez p2, :cond_1

    .line 198
    add-int/lit16 v2, p2, 0x100

    .line 201
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "228."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    return-object v0

    .line 196
    :cond_0
    move v1, p1

    goto :goto_0

    .line 200
    :cond_1
    move v2, p2

    goto :goto_1
.end method

.method private recv_data()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v0}, Lyhq/jad/easysdk/UdpSocket;->Read()[B

    move-result-object v0

    iput-object v0, p0, Lyhq/jad/easysdk/EasySdk;->read_data:[B

    .line 69
    :cond_0
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->read_data:[B

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyhq/jad/easysdk/EasySdk;->recv_status:Z

    .line 74
    :cond_1
    return-void
.end method

.method private send()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x61a9

    const/16 v9, 0x3039

    const/16 v7, 0x10

    const/4 v8, 0x2

    .line 150
    const/4 v4, 0x1

    .line 151
    .local v4, "status":Z
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 152
    .local v0, "buff":[B
    new-instance v5, Lyhq/jad/easysdk/UdpSocket;

    invoke-direct {v5, v10}, Lyhq/jad/easysdk/UdpSocket;-><init>(I)V

    iput-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    .line 153
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    const-string v6, "228.4.5.6"

    invoke-virtual {v5, v6, v9}, Lyhq/jad/easysdk/UdpSocket;->Connect(Ljava/lang/String;I)Z

    .line 154
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v5, v8}, Lyhq/jad/easysdk/UdpSocket;->setTimeout(I)Z

    .line 156
    iget v5, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    if-nez v5, :cond_0

    .line 158
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v7, :cond_1

    .line 160
    iput v7, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    .line 163
    .end local v2    # "j":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v8, :cond_2

    .line 170
    const/4 v2, 0x1

    .restart local v2    # "j":I
    :goto_2
    iget v5, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    div-int/lit8 v5, v5, 0x2

    if-le v2, v5, :cond_3

    .line 183
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    const/16 v6, 0x1e

    invoke-virtual {v5, v0, v6}, Lyhq/jad/easysdk/UdpSocket;->Send([BI)Z

    .line 184
    iget v5, p0, Lyhq/jad/easysdk/EasySdk;->SEND_INTERVAL:I

    invoke-direct {p0, v5}, Lyhq/jad/easysdk/EasySdk;->sleep(I)V

    .line 185
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v5}, Lyhq/jad/easysdk/UdpSocket;->Close()V

    .line 186
    iput-object v11, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    .line 187
    return v4

    .line 159
    .end local v1    # "i":I
    :cond_1
    const/4 v5, 0x0

    aput-byte v5, v0, v2

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "j":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    const/16 v6, 0x14

    invoke-virtual {v5, v0, v6}, Lyhq/jad/easysdk/UdpSocket;->Send([BI)Z

    .line 166
    iget v5, p0, Lyhq/jad/easysdk/EasySdk;->SEND_INTERVAL:I

    invoke-direct {p0, v5}, Lyhq/jad/easysdk/EasySdk;->sleep(I)V

    .line 167
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v5, v0, v8}, Lyhq/jad/easysdk/UdpSocket;->Send([BI)Z

    .line 168
    iget v5, p0, Lyhq/jad/easysdk/EasySdk;->SEND_INTERVAL:I

    invoke-direct {p0, v5}, Lyhq/jad/easysdk/EasySdk;->sleep(I)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .restart local v2    # "j":I
    :cond_3
    const/4 v3, 0x0

    .line 172
    .local v3, "mac_str":Ljava/lang/String;
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->e_psk:[B

    add-int/lit8 v6, v2, -0x1

    mul-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    iget-object v6, p0, Lyhq/jad/easysdk/EasySdk;->e_psk:[B

    add-int/lit8 v7, v2, -0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    invoke-direct {p0, v5, v6, v2}, Lyhq/jad/easysdk/EasySdk;->mac2ip(BBI)Ljava/lang/String;

    move-result-object v3

    .line 173
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v5}, Lyhq/jad/easysdk/UdpSocket;->Close()V

    .line 174
    iput-object v11, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    .line 175
    new-instance v5, Lyhq/jad/easysdk/UdpSocket;

    invoke-direct {v5, v10}, Lyhq/jad/easysdk/UdpSocket;-><init>(I)V

    iput-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    .line 176
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v5, v3, v9}, Lyhq/jad/easysdk/UdpSocket;->Connect(Ljava/lang/String;I)Z

    .line 177
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v5, v8}, Lyhq/jad/easysdk/UdpSocket;->setTimeout(I)Z

    .line 178
    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    const/16 v6, 0x96

    invoke-virtual {v5, v0, v6}, Lyhq/jad/easysdk/UdpSocket;->Send([BI)Z

    .line 179
    iget v5, p0, Lyhq/jad/easysdk/EasySdk;->SEND_INTERVAL:I

    invoke-direct {p0, v5}, Lyhq/jad/easysdk/EasySdk;->sleep(I)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private sleep(I)V
    .locals 2
    .param p1, "ms"    # I

    .prologue
    .line 29
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public Start([BI)V
    .locals 8
    .param p1, "psk_data"    # [B
    .param p2, "len"    # I

    .prologue
    const/16 v4, 0x30

    const/16 v3, 0x20

    const/16 v2, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lyhq/jad/easysdk/EasySdk;->psk:[B

    .line 91
    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lyhq/jad/easysdk/EasySdk;->psk:[B

    .line 92
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk;->psk:[B

    invoke-static {p1, v6, v1, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    if-eqz p2, :cond_0

    .line 95
    const/16 v1, 0x70

    if-le p2, v1, :cond_1

    .line 96
    const/16 v1, 0x80

    iput v1, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    .line 113
    :goto_0
    :try_start_0
    iget v1, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    iget-object v2, p0, Lyhq/jad/easysdk/EasySdk;->psk:[B

    iget-object v3, p0, Lyhq/jad/easysdk/EasySdk;->e_psk:[B

    invoke-static {v1, v2, v3}, Lyhq/jad/easysdk/AESLib;->J_encrypt(I[B[B)V

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk;->e_psk:[B

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_8

    .line 121
    .end local v0    # "i":I
    :cond_0
    :goto_2
    new-instance v1, Lyhq/jad/easysdk/UdpSocket;

    const/16 v2, 0x61a8

    invoke-direct {v1, v2}, Lyhq/jad/easysdk/UdpSocket;-><init>(I)V

    iput-object v1, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    .line 122
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lyhq/jad/easysdk/UdpSocket;->setTimeout(I)Z

    .line 124
    iput-boolean v7, p0, Lyhq/jad/easysdk/EasySdk;->s_thread:Z

    .line 125
    iput v6, p0, Lyhq/jad/easysdk/EasySdk;->boad_delay:I

    .line 126
    iput-boolean v6, p0, Lyhq/jad/easysdk/EasySdk;->recv_status:Z

    .line 127
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lyhq/jad/easysdk/EasySdk;->boad_time:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lyhq/jad/easysdk/EasySdk$sendThread;

    invoke-direct {v2, p0}, Lyhq/jad/easysdk/EasySdk$sendThread;-><init>(Lyhq/jad/easysdk/EasySdk;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 129
    return-void

    .line 97
    :cond_1
    const/16 v1, 0x60

    if-le p2, v1, :cond_2

    .line 98
    const/16 v1, 0x70

    iput v1, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    goto :goto_0

    .line 99
    :cond_2
    const/16 v1, 0x50

    if-le p2, v1, :cond_3

    .line 100
    const/16 v1, 0x60

    iput v1, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    goto :goto_0

    .line 101
    :cond_3
    const/16 v1, 0x40

    if-le p2, v1, :cond_4

    .line 102
    const/16 v1, 0x50

    iput v1, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    goto :goto_0

    .line 103
    :cond_4
    if-le p2, v4, :cond_5

    .line 104
    const/16 v1, 0x40

    iput v1, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    goto :goto_0

    .line 105
    :cond_5
    if-le p2, v3, :cond_6

    .line 106
    iput v4, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    goto :goto_0

    .line 107
    :cond_6
    if-le p2, v2, :cond_7

    .line 108
    iput v3, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    goto :goto_0

    .line 110
    :cond_7
    iput v2, p0, Lyhq/jad/easysdk/EasySdk;->psk_len:I

    goto :goto_0

    .line 115
    .restart local v0    # "i":I
    :cond_8
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "x%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lyhq/jad/easysdk/EasySdk;->e_psk:[B

    aget-byte v5, v5, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public Stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    iput-boolean v1, p0, Lyhq/jad/easysdk/EasySdk;->s_thread:Z

    .line 133
    :cond_0
    iget-boolean v0, p0, Lyhq/jad/easysdk/EasySdk;->s_thread:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v0}, Lyhq/jad/easysdk/UdpSocket;->Close()V

    .line 137
    iput-object v2, p0, Lyhq/jad/easysdk/EasySdk;->udp:Lyhq/jad/easysdk/UdpSocket;

    .line 139
    :cond_1
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    invoke-virtual {v0}, Lyhq/jad/easysdk/UdpSocket;->Close()V

    .line 142
    iput-object v2, p0, Lyhq/jad/easysdk/EasySdk;->boad_udp:Lyhq/jad/easysdk/UdpSocket;

    .line 144
    :cond_2
    iput-boolean v1, p0, Lyhq/jad/easysdk/EasySdk;->recv_status:Z

    .line 145
    iget-object v0, p0, Lyhq/jad/easysdk/EasySdk;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk;->boad_time:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public chek_data()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "re_data":[B
    iget-boolean v1, p0, Lyhq/jad/easysdk/EasySdk;->recv_status:Z

    if-eqz v1, :cond_0

    .line 80
    iput-boolean v3, p0, Lyhq/jad/easysdk/EasySdk;->recv_status:Z

    .line 81
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk;->read_data:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 82
    iget-object v1, p0, Lyhq/jad/easysdk/EasySdk;->read_data:[B

    iget-object v2, p0, Lyhq/jad/easysdk/EasySdk;->read_data:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    :cond_0
    return-object v0
.end method
