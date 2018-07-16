.class public Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;
.super Ljava/lang/Object;
.source "MulticastSmartLinkerSendAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_DATA_LENGTH:I = 0x1e

.field private static final UDP_PORT:I = 0x1770


# instance fields
.field private mPassword:Ljava/lang/String;

.field private mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

.field private mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiflying/smartlink/ISmartLinker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smartLinker"    # Lcom/hiflying/smartlink/ISmartLinker;
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    .line 28
    iput-object p3, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->mSsid:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->mPassword:Ljava/lang/String;

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params smartLinker is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    if-nez p3, :cond_2

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params ssid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    if-nez p4, :cond_3

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params password is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_3
    return-void
.end method

.method private encodedPMK(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    new-array v2, v3, [B

    .line 111
    :goto_0
    return-object v2

    .line 109
    :cond_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v3, [C

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x1000

    const/16 v5, 0x100

    invoke-direct {v0, v2, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 110
    .local v0, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 111
    .local v1, "secretKeyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    goto :goto_0

    .line 109
    .end local v0    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v1    # "secretKeyFactory":Ljavax/crypto/SecretKeyFactory;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_1
.end method

.method private generateData2Send(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 117
    .local v5, "ssidDataArray":[B
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-array v3, v7, [B

    .line 118
    .local v3, "passwordArray":[B
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->encodedPMK(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 119
    .local v4, "pmkDataArray":[B
    new-array v6, v7, [B

    .line 121
    .local v6, "userDataArray":[B
    array-length v8, v5

    add-int/lit8 v8, v8, 0x4

    array-length v9, v3

    add-int/2addr v8, v9

    .line 122
    array-length v9, v4

    .line 121
    add-int/2addr v8, v9

    .line 122
    array-length v9, v6

    .line 121
    add-int v1, v8, v9

    .line 123
    .local v1, "bufferSize":I
    rem-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    .line 124
    .local v2, "odd":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 128
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v8, v5

    int-to-byte v8, v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    array-length v8, v3

    int-to-byte v8, v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    array-length v8, v4

    int-to-byte v8, v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 132
    array-length v8, v6

    int-to-byte v8, v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 141
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    return-object v7

    .line 117
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "bufferSize":I
    .end local v2    # "odd":Z
    .end local v3    # "passwordArray":[B
    .end local v4    # "pmkDataArray":[B
    .end local v6    # "userDataArray":[B
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_0

    .restart local v1    # "bufferSize":I
    .restart local v3    # "passwordArray":[B
    .restart local v4    # "pmkDataArray":[B
    .restart local v6    # "userDataArray":[B
    :cond_3
    move v2, v7

    .line 123
    goto :goto_1
.end method

.method private sleep(J)V
    .locals 1
    .param p1, "millseconds"    # J

    .prologue
    .line 47
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "datas":[B
    :try_start_0
    iget-object v7, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->mSsid:Ljava/lang/String;

    iget-object v8, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->generateData2Send(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    const/4 v4, 0x0

    .line 66
    .local v4, "multicastSocket":Ljava/net/MulticastSocket;
    :try_start_1
    new-instance v5, Ljava/net/MulticastSocket;

    invoke-direct {v5}, Ljava/net/MulticastSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v4    # "multicastSocket":Ljava/net/MulticastSocket;
    .local v5, "multicastSocket":Ljava/net/MulticastSocket;
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v7}, Lcom/hiflying/smartlink/ISmartLinker;->isSmartLinking()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-nez v7, :cond_2

    .line 95
    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v5}, Ljava/net/MulticastSocket;->close()V

    .line 98
    invoke-virtual {v5}, Ljava/net/MulticastSocket;->disconnect()V

    :cond_0
    move-object v4, v5

    .line 102
    .end local v5    # "multicastSocket":Ljava/net/MulticastSocket;
    .restart local v4    # "multicastSocket":Ljava/net/MulticastSocket;
    :cond_1
    :goto_1
    return-void

    .line 59
    .end local v4    # "multicastSocket":Ljava/net/MulticastSocket;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "generateData2Send error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "multicastSocket":Ljava/net/MulticastSocket;
    :cond_2
    :try_start_3
    new-instance v6, Ljava/net/DatagramPacket;

    const/16 v7, 0x1e

    new-array v7, v7, [B

    const/16 v8, 0x1e

    .line 71
    const-string v9, "239.48.0.0"

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    const/16 v10, 0x1770

    .line 70
    invoke-direct {v6, v7, v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 72
    .local v6, "pack":Ljava/net/DatagramPacket;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v7, 0x5

    if-lt v2, v7, :cond_3

    .line 77
    array-length v7, v0

    div-int/lit8 v3, v7, 0x2

    .line 78
    .local v3, "length":I
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v3, :cond_4

    .line 88
    const-wide/16 v8, 0x64

    invoke-direct {p0, v8, v9}, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->sleep(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v6    # "pack":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 92
    .end local v5    # "multicastSocket":Ljava/net/MulticastSocket;
    .local v1, "e":Ljava/io/IOException;
    .restart local v4    # "multicastSocket":Ljava/net/MulticastSocket;
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    if-eqz v4, :cond_1

    .line 97
    invoke-virtual {v4}, Ljava/net/MulticastSocket;->close()V

    .line 98
    invoke-virtual {v4}, Ljava/net/MulticastSocket;->disconnect()V

    goto :goto_1

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "multicastSocket":Ljava/net/MulticastSocket;
    .restart local v2    # "i":I
    .restart local v5    # "multicastSocket":Ljava/net/MulticastSocket;
    .restart local v6    # "pack":Ljava/net/DatagramPacket;
    :cond_3
    :try_start_5
    invoke-virtual {v5, v6}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 74
    const-wide/16 v8, 0xa

    invoke-direct {p0, v8, v9}, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->sleep(J)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 80
    .restart local v3    # "length":I
    :cond_4
    new-instance v6, Ljava/net/DatagramPacket;

    .end local v6    # "pack":Ljava/net/DatagramPacket;
    add-int/lit8 v7, v2, 0x1e

    new-array v7, v7, [B

    add-int/lit8 v8, v2, 0x1e

    .line 82
    const-string v9, "239.46.%s.%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    mul-int/lit8 v12, v2, 0x2

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    mul-int/lit8 v12, v2, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 83
    const/16 v10, 0x1770

    .line 80
    invoke-direct {v6, v7, v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 84
    .restart local v6    # "pack":Ljava/net/DatagramPacket;
    invoke-virtual {v5, v6}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 85
    const-wide/16 v8, 0xa

    invoke-direct {p0, v8, v9}, Lcom/hiflying/smartlink/v7/MulticastSmartLinkerSendAction;->sleep(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 93
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v5    # "multicastSocket":Ljava/net/MulticastSocket;
    .end local v6    # "pack":Ljava/net/DatagramPacket;
    .restart local v4    # "multicastSocket":Ljava/net/MulticastSocket;
    :catchall_0
    move-exception v7

    .line 95
    :goto_5
    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {v4}, Ljava/net/MulticastSocket;->close()V

    .line 98
    invoke-virtual {v4}, Ljava/net/MulticastSocket;->disconnect()V

    .line 100
    :cond_5
    throw v7

    .line 93
    .end local v4    # "multicastSocket":Ljava/net/MulticastSocket;
    .restart local v5    # "multicastSocket":Ljava/net/MulticastSocket;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "multicastSocket":Ljava/net/MulticastSocket;
    .restart local v4    # "multicastSocket":Ljava/net/MulticastSocket;
    goto :goto_5

    .line 90
    :catch_2
    move-exception v1

    goto :goto_4
.end method
