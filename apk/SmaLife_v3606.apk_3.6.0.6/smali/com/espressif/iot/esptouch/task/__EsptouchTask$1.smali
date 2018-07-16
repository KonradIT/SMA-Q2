.class Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;
.super Ljava/lang/Thread;
.source "__EsptouchTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/espressif/iot/esptouch/task/__EsptouchTask;->__listenAsyn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

.field final synthetic val$expectDataLen:I


# direct methods
.method constructor <init>(Lcom/espressif/iot/esptouch/task/__EsptouchTask;I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    iput p2, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->val$expectDataLen:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 149
    const-string v11, "EsptouchTask"

    const-string v12, "__listenAsyn() start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 152
    .local v8, "startTimestamp":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v12}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$000(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v12}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$100(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/espressif/iot/esptouch/util/ByteUtil;->getBytesByString(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    .local v0, "apSsidAndPassword":[B
    array-length v11, v0

    add-int/lit8 v11, v11, 0x9

    int-to-byte v4, v11

    .line 156
    .local v4, "expectOneByte":B
    const-string v11, "EsptouchTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "expectOneByte: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v4, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v7, -0x1

    .line 159
    .local v7, "receiveOneByte":B
    const/4 v6, 0x0

    .line 160
    .local v6, "receiveBytes":[B
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$200(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget-object v12, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v12}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-result-object v12

    invoke-interface {v12}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getExpectTaskResultCount()I

    move-result v12

    if-ge v11, v12, :cond_1

    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$400(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 162
    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$500(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/udp/UDPSocketServer;

    move-result-object v11

    iget v12, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->val$expectDataLen:I

    invoke-virtual {v11, v12}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->receiveSpecLenBytes(I)[B

    move-result-object v6

    .line 164
    if-eqz v6, :cond_2

    .line 165
    const/4 v11, 0x0

    aget-byte v7, v6, v11

    .line 169
    :goto_1
    if-ne v7, v4, :cond_4

    .line 171
    const-string v11, "EsptouchTask"

    const-string v12, "receive correct broadcast"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v2, v12, v8

    .line 176
    .local v2, "consume":J
    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-result-object v11

    invoke-interface {v11}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getWaitUdpTotalMillisecond()I

    move-result v11

    int-to-long v12, v11

    sub-long/2addr v12, v2

    long-to-int v10, v12

    .line 178
    .local v10, "timeout":I
    if-gez v10, :cond_3

    .line 180
    const-string v11, "EsptouchTask"

    const-string v12, "esptouch timeout"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v2    # "consume":J
    .end local v10    # "timeout":I
    :cond_1
    iget-object v12, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$200(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget-object v13, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v13}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-result-object v13

    invoke-interface {v13}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getExpectTaskResultCount()I

    move-result v13

    if-lt v11, v13, :cond_5

    const/4 v11, 0x1

    :goto_2
    invoke-static {v12, v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$702(Lcom/espressif/iot/esptouch/task/__EsptouchTask;Z)Z

    .line 214
    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$800(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)V

    .line 216
    const-string v11, "EsptouchTask"

    const-string v12, "__listenAsyn() finish"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 167
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 185
    .restart local v2    # "consume":J
    .restart local v10    # "timeout":I
    :cond_3
    const-string v11, "EsptouchTask"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSocketServer\'s new timeout is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " milliseconds"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$500(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/udp/UDPSocketServer;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/espressif/iot/esptouch/udp/UDPSocketServer;->setSoTimeout(I)Z

    .line 190
    const-string v11, "EsptouchTask"

    const-string v12, "receive correct broadcast"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz v6, :cond_0

    .line 193
    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-result-object v11

    invoke-interface {v11}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getEsptouchResultOneLen()I

    move-result v11

    iget-object v12, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v12}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-result-object v12

    invoke-interface {v12}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getEsptouchResultMacLen()I

    move-result v12

    invoke-static {v6, v11, v12}, Lcom/espressif/iot/esptouch/util/ByteUtil;->parseBssid([BII)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "bssid":Ljava/lang/String;
    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v11}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-result-object v11

    invoke-interface {v11}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getEsptouchResultOneLen()I

    move-result v11

    iget-object v12, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v12}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-result-object v12

    invoke-interface {v12}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getEsptouchResultMacLen()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    invoke-static {v12}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$300(Lcom/espressif/iot/esptouch/task/__EsptouchTask;)Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;

    move-result-object v12

    invoke-interface {v12}, Lcom/espressif/iot/esptouch/task/IEsptouchTaskParameter;->getEsptouchResultIpLen()I

    move-result v12

    invoke-static {v6, v11, v12}, Lcom/espressif/iot/esptouch/util/EspNetUtil;->parseInetAddr([BII)Ljava/net/InetAddress;

    move-result-object v5

    .line 203
    .local v5, "inetAddress":Ljava/net/InetAddress;
    iget-object v11, p0, Lcom/espressif/iot/esptouch/task/__EsptouchTask$1;->this$0:Lcom/espressif/iot/esptouch/task/__EsptouchTask;

    const/4 v12, 0x1

    invoke-static {v11, v12, v1, v5}, Lcom/espressif/iot/esptouch/task/__EsptouchTask;->access$600(Lcom/espressif/iot/esptouch/task/__EsptouchTask;ZLjava/lang/String;Ljava/net/InetAddress;)V

    goto/16 :goto_0

    .line 208
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "consume":J
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    .end local v10    # "timeout":I
    :cond_4
    const-string v11, "EsptouchTask"

    const-string v12, "receive rubbish message, just ignore"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2
.end method
