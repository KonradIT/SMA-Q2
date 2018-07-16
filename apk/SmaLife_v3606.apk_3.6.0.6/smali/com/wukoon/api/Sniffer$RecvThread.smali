.class Lcom/wukoon/api/Sniffer$RecvThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukoon/api/Sniffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecvThread"
.end annotation


# instance fields
.field private synthetic jZ:Lcom/wukoon/api/Sniffer;

.field private jw:Z

.field private jx:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Lcom/wukoon/api/Sniffer;)V
    .locals 0

    iput-object p1, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0x400

    new-array v1, v0, [B

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jw:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jx:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jx:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jx:Ljava/net/DatagramSocket;

    :cond_1
    return-void

    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v2, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jx:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    iget-object v2, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v2}, Lcom/wukoon/api/Sniffer;->a(Lcom/wukoon/api/Sniffer;)Lcom/wukoon/api/Sniffer$EventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v2}, Lcom/wukoon/api/Sniffer;->i(Lcom/wukoon/api/Sniffer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v3}, Lcom/wukoon/api/Sniffer;->i(Lcom/wukoon/api/Sniffer;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jw:Z

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jx:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/16 v1, 0x1771

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jx:Ljava/net/DatagramSocket;

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jx:Ljava/net/DatagramSocket;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/wukoon/api/Sniffer;->cu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wukoon/api/Sniffer$RecvThread;->jw:Z

    return-void
.end method
