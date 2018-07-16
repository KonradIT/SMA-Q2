.class Lcom/MURATA/UdpBroadCastSocket$2;
.super Ljava/lang/Thread;
.source "UdpBroadCastSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MURATA/UdpBroadCastSocket;->receive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MURATA/UdpBroadCastSocket;


# direct methods
.method constructor <init>(Lcom/MURATA/UdpBroadCastSocket;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/MURATA/UdpBroadCastSocket$2;->this$0:Lcom/MURATA/UdpBroadCastSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 112
    :cond_0
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [B

    .line 113
    .local v0, "buf":[B
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 114
    .local v3, "rcvdp":Ljava/net/DatagramPacket;
    invoke-static {}, Lcom/MURATA/UdpBroadCastSocket;->access$100()Ljava/net/DatagramSocket;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    .line 121
    .local v2, "rcvData":[B
    iget-object v4, p0, Lcom/MURATA/UdpBroadCastSocket$2;->this$0:Lcom/MURATA/UdpBroadCastSocket;

    invoke-virtual {v4, v2}, Lcom/MURATA/UdpBroadCastSocket;->setReceiveData([B)V

    .line 122
    const/4 v4, 0x0

    aget-byte v4, v2, v4

    sget v5, Lcom/MURATA/smartConfig;->random_data:I

    if-ne v4, v5, :cond_0

    .line 123
    iget-object v4, p0, Lcom/MURATA/UdpBroadCastSocket$2;->this$0:Lcom/MURATA/UdpBroadCastSocket;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/MURATA/UdpBroadCastSocket;->receiveOkFlag:Z

    .line 124
    invoke-static {}, Lcom/MURATA/UdpBroadCastSocket;->access$200()Lcom/MURATA/UdpCallBackIf;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v5, v2, v5

    invoke-interface {v4, v5}, Lcom/MURATA/UdpCallBackIf;->udp_appConfigAck(I)V

    .line 133
    .end local v0    # "buf":[B
    .end local v2    # "rcvData":[B
    .end local v3    # "rcvdp":Ljava/net/DatagramPacket;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method
