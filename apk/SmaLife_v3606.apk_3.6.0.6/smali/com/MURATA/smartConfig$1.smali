.class final Lcom/MURATA/smartConfig$1;
.super Ljava/lang/Thread;
.source "smartConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MURATA/smartConfig;->receiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    :cond_0
    :goto_0
    :try_start_0
    sget-object v1, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v1}, Lcom/MURATA/UdpBroadCastSocket;->getReceiveData()[B

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v1}, Lcom/MURATA/UdpBroadCastSocket;->getReceiveData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/MURATA/smartConfig;->byteArrayToInt([B)I

    move-result v1

    sget v2, Lcom/MURATA/smartConfig;->random_data:I

    if-ne v1, v2, :cond_2

    .line 218
    sget-object v1, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v1}, Lcom/MURATA/UdpBroadCastSocket;->getReceiveData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/MURATA/smartConfig;->setReceiveData([B)V

    .line 219
    sget-object v1, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    if-eqz v1, :cond_1

    .line 220
    sget-object v1, Lcom/MURATA/smartConfig;->udpBroadcastSocket:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v1}, Lcom/MURATA/UdpBroadCastSocket;->closeUdpSocket()V

    .line 222
    :cond_1
    invoke-static {}, Lcom/MURATA/smartConfig;->access$200()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {}, Lcom/MURATA/smartConfig;->access$200()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    return-void

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/MURATA/smartConfig;->setReceiveData([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
