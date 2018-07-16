.class Lcom/MURATA/UdpSocket$1;
.super Ljava/lang/Thread;
.source "UdpSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MURATA/UdpSocket;->send([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MURATA/UdpSocket;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/MURATA/UdpSocket;[B)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/MURATA/UdpSocket$1;->this$0:Lcom/MURATA/UdpSocket;

    iput-object p2, p0, Lcom/MURATA/UdpSocket$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/MURATA/UdpSocket$1;->val$data:[B

    iget-object v3, p0, Lcom/MURATA/UdpSocket$1;->val$data:[B

    array-length v3, v3

    invoke-static {}, Lcom/MURATA/UdpSocket;->access$000()Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x4e20

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 91
    .local v1, "packet":Ljava/net/DatagramPacket;
    invoke-static {}, Lcom/MURATA/UdpSocket;->access$100()Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v1    # "packet":Ljava/net/DatagramPacket;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method
