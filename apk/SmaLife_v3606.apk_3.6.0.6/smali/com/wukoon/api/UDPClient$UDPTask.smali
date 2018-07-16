.class Lcom/wukoon/api/UDPClient$UDPTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukoon/api/UDPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UDPTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private kh:Ljava/lang/String;

.field private ki:Ljava/lang/String;

.field private kj:Lcom/wukoon/api/UDPClient$UDPListener;

.field private port:I


# direct methods
.method public constructor <init>(Lcom/wukoon/api/UDPClient;Ljava/lang/String;Ljava/lang/String;ILcom/wukoon/api/UDPClient$UDPListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kh:Ljava/lang/String;

    iput p4, p0, Lcom/wukoon/api/UDPClient$UDPTask;->port:I

    iput-object p2, p0, Lcom/wukoon/api/UDPClient$UDPTask;->ki:Ljava/lang/String;

    iput-object p5, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kj:Lcom/wukoon/api/UDPClient$UDPListener;

    return-void
.end method

.method private varargs cw()Ljava/lang/Void;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kh:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v3, p0, Lcom/wukoon/api/UDPClient$UDPTask;->ki:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/net/DatagramPacket;

    iget-object v5, p0, Lcom/wukoon/api/UDPClient$UDPTask;->ki:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget v6, p0, Lcom/wukoon/api/UDPClient$UDPTask;->port:I

    invoke-direct {v4, v5, v3, v0, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v0, 0x400

    new-array v3, v0, [B

    new-instance v4, Ljava/net/DatagramPacket;

    array-length v0, v3

    invoke-direct {v4, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-direct {v0, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    iget-object v2, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kj:Lcom/wukoon/api/UDPClient$UDPListener;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kj:Lcom/wukoon/api/UDPClient$UDPListener;

    invoke-interface {v2, v0}, Lcom/wukoon/api/UDPClient$UDPListener;->onMessage(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kj:Lcom/wukoon/api/UDPClient$UDPListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kj:Lcom/wukoon/api/UDPClient$UDPListener;

    invoke-interface {v0}, Lcom/wukoon/api/UDPClient$UDPListener;->onTimeout()V

    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kj:Lcom/wukoon/api/UDPClient$UDPListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wukoon/api/UDPClient$UDPTask;->kj:Lcom/wukoon/api/UDPClient$UDPListener;

    invoke-interface {v0}, Lcom/wukoon/api/UDPClient$UDPListener;->onIOException()V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/wukoon/api/UDPClient$UDPTask;->cw()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
