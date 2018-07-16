.class Lcom/xlwtech/util/UdpConnector$1;
.super Ljava/lang/Object;
.source "UdpConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xlwtech/util/UdpConnector;->wanReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/UdpConnector;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/UdpConnector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/UdpConnector$1;->this$0:Lcom/xlwtech/util/UdpConnector;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/xlwtech/util/UdpConnector$1;->this$0:Lcom/xlwtech/util/UdpConnector;

    invoke-static {v2}, Lcom/xlwtech/util/UdpConnector;->access$0(Lcom/xlwtech/util/UdpConnector;)Ljava/net/DatagramSocket;

    move-result-object v2

    iget-object v3, p0, Lcom/xlwtech/util/UdpConnector$1;->this$0:Lcom/xlwtech/util/UdpConnector;

    invoke-static {v3}, Lcom/xlwtech/util/UdpConnector;->access$1(Lcom/xlwtech/util/UdpConnector;)Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 109
    iget-object v2, p0, Lcom/xlwtech/util/UdpConnector$1;->this$0:Lcom/xlwtech/util/UdpConnector;

    invoke-static {v2}, Lcom/xlwtech/util/UdpConnector;->access$2(Lcom/xlwtech/util/UdpConnector;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 120
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
