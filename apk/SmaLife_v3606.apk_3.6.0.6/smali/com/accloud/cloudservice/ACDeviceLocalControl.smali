.class public Lcom/accloud/cloudservice/ACDeviceLocalControl;
.super Ljava/lang/Object;
.source "ACDeviceLocalControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "ACDeviceLocalControl"


# instance fields
.field private TimeOut:I

.field private aesKey:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field inputStream:Ljava/io/InputStream;

.field private ip:Ljava/lang/String;

.field outputStream:Ljava/io/OutputStream;

.field socket:Ljava/net/Socket;

.field private zMessage:Lcom/accloud/service/ACMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACMessage;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "aesKey"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "zMessage"    # Lcom/accloud/service/ACMessage;
    .param p4, "TimeOut"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    .line 29
    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    .line 30
    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    .line 33
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->aesKey:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->ip:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->zMessage:Lcom/accloud/service/ACMessage;

    .line 36
    iput p4, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->TimeOut:I

    .line 37
    iput-object p5, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 44
    .local v4, "timestamp":J
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->aesKey:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 45
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->zMessage:Lcom/accloud/service/ACMessage;

    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->aesKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/accloud/service/ACMessage;->setAesKey([B)V

    .line 47
    :cond_0
    const-string v7, "ACDeviceLocalControl"

    const-string v8, "connecting..."

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    iput-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    .line 51
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->ip:Ljava/lang/String;

    const/16 v10, 0x25d9

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v9, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->TimeOut:I

    invoke-virtual {v7, v8, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 52
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    iget v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->TimeOut:I

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 53
    const-string v7, "ACDeviceLocalControl"

    const-string v8, "sending..."

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    .line 56
    const-string v7, "ACDeviceLocalControl"

    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->zMessage:Lcom/accloud/service/ACMessage;

    invoke-virtual {v8}, Lcom/accloud/service/ACMessage;->getTCPBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/accloud/service/ACMessage;->byteToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->zMessage:Lcom/accloud/service/ACMessage;

    invoke-virtual {v8}, Lcom/accloud/service/ACMessage;->getTCPBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 58
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 60
    const-string v7, "ACDeviceLocalControl"

    const-string v8, "receiving..."

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    .line 66
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 67
    .local v2, "length":I
    const/4 v7, 0x4

    if-lt v2, v7, :cond_5

    .line 68
    const-string v7, "ACDeviceLocalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-array v0, v2, [B

    .line 75
    .local v0, "bytes":[B
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v2}, Ljava/io/InputStream;->read([BII)I

    .line 76
    const-string v7, "ACDeviceLocalControl"

    invoke-static {v0}, Lcom/accloud/service/ACMessage;->byteToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->zMessage:Lcom/accloud/service/ACMessage;

    invoke-virtual {v7, v0}, Lcom/accloud/service/ACMessage;->getTCPZMessage([B)Lcom/accloud/service/ACMessage;

    move-result-object v6

    .line 78
    .local v6, "zMsg":Lcom/accloud/service/ACMessage;
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 79
    .local v3, "msg":Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v3, Landroid/os/Message;->what:I

    .line 80
    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    if-eqz v7, :cond_2

    .line 110
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 111
    :cond_2
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_3

    .line 112
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_3
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    if-eqz v7, :cond_4

    .line 115
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 120
    .end local v0    # "bytes":[B
    .end local v2    # "length":I
    .end local v4    # "timestamp":J
    .end local v6    # "zMsg":Lcom/accloud/service/ACMessage;
    :cond_4
    :goto_0
    return-void

    .line 71
    .end local v3    # "msg":Landroid/os/Message;
    .restart local v2    # "length":I
    .restart local v4    # "timestamp":J
    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iget v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->TimeOut:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 72
    new-instance v7, Ljava/net/SocketTimeoutException;

    invoke-direct {v7}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v7
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .end local v2    # "length":I
    .end local v4    # "timestamp":J
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    const-string v7, "ACDeviceLocalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeout:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 85
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v3, Landroid/os/Message;->what:I

    .line 86
    new-instance v7, Lcom/accloud/service/ACException;

    sget v8, Lcom/accloud/service/ACException;->TIMEOUT:I

    const-string v9, "timeout"

    invoke-direct {v7, v8, v9}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :try_start_4
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    if-eqz v7, :cond_6

    .line 110
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 111
    :cond_6
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_7

    .line 112
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_7
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    if-eqz v7, :cond_4

    .line 115
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bytes":[B
    .restart local v2    # "length":I
    .restart local v4    # "timestamp":J
    .restart local v6    # "zMsg":Lcom/accloud/service/ACMessage;
    :catch_2
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "length":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "timestamp":J
    .end local v6    # "zMsg":Lcom/accloud/service/ACMessage;
    :catch_3
    move-exception v1

    .line 89
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    :try_start_5
    const-string v7, "ACDeviceLocalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 91
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v3, Landroid/os/Message;->what:I

    .line 92
    new-instance v7, Lcom/accloud/service/ACException;

    sget v8, Lcom/accloud/service/ACException;->INVALID_PAYLOAD:I

    const-string v9, "decrypt exception"

    invoke-direct {v7, v8, v9}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    :try_start_6
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    if-eqz v7, :cond_8

    .line 110
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 111
    :cond_8
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_9

    .line 112
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_9
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    if-eqz v7, :cond_4

    .line 115
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 116
    :catch_4
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_5
    move-exception v1

    .line 95
    .local v1, "e":Ljava/net/ConnectException;
    :try_start_7
    const-string v7, "ACDeviceLocalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/ConnectException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 97
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v3, Landroid/os/Message;->what:I

    .line 98
    new-instance v7, Lcom/accloud/service/ACException;

    sget v8, Lcom/accloud/service/ACException;->LOCAL_DEVICE_OFFLINE:I

    const-string v9, "local device offline"

    invoke-direct {v7, v8, v9}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 109
    :try_start_8
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    if-eqz v7, :cond_a

    .line 110
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 111
    :cond_a
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_b

    .line 112
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_b
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    if-eqz v7, :cond_4

    .line 115
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 116
    :catch_6
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_7
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v7, "ACDeviceLocalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 103
    .restart local v3    # "msg":Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v3, Landroid/os/Message;->what:I

    .line 104
    new-instance v7, Lcom/accloud/service/ACException;

    sget v8, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 109
    :try_start_a
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    if-eqz v7, :cond_c

    .line 110
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 111
    :cond_c
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_d

    .line 112
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_d
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    if-eqz v7, :cond_4

    .line 115
    iget-object v7, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_0

    .line 116
    :catch_8
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v7

    .line 109
    :try_start_b
    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    if-eqz v8, :cond_e

    .line 110
    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 111
    :cond_e
    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_f

    .line 112
    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_f
    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    if-eqz v8, :cond_10

    .line 115
    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceLocalControl;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 118
    :cond_10
    :goto_1
    throw v7

    .line 116
    :catch_9
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
