.class Lcom/MURATA/UdpBroadCastSocket$1;
.super Ljava/lang/Thread;
.source "UdpBroadCastSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MURATA/UdpBroadCastSocket;->send([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MURATA/UdpBroadCastSocket;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/MURATA/UdpBroadCastSocket;[B)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/MURATA/UdpBroadCastSocket$1;->this$0:Lcom/MURATA/UdpBroadCastSocket;

    iput-object p2, p0, Lcom/MURATA/UdpBroadCastSocket$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 94
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/MURATA/UdpBroadCastSocket$1;->val$data:[B

    iget-object v3, p0, Lcom/MURATA/UdpBroadCastSocket$1;->val$data:[B

    array-length v3, v3

    invoke-static {}, Lcom/MURATA/UdpBroadCastSocket;->access$000()Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 96
    .local v1, "packet":Ljava/net/DatagramPacket;
    invoke-static {}, Lcom/MURATA/UdpBroadCastSocket;->access$100()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "packet":Ljava/net/DatagramPacket;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method
