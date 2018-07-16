.class Lcom/wukoon/api/UDPClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wukoon/api/UDPClient$UDPListener;,
        Lcom/wukoon/api/UDPClient$UDPTask;
    }
.end annotation


# static fields
.field private static final kg:Lcom/wukoon/api/UDPClient;


# instance fields
.field private jx:Ljava/net/DatagramSocket;

.field private kf:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wukoon/api/UDPClient;

    invoke-direct {v0}, Lcom/wukoon/api/UDPClient;-><init>()V

    sput-object v0, Lcom/wukoon/api/UDPClient;->kg:Lcom/wukoon/api/UDPClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wukoon/api/UDPClient;->jx:Ljava/net/DatagramSocket;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wukoon/api/UDPClient;->kf:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/wukoon/api/UDPClient;->jx:Ljava/net/DatagramSocket;

    iget-object v0, p0, Lcom/wukoon/api/UDPClient;->jx:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBroadcastAddress(Landroid/net/wifi/WifiManager;)Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UDPHelper"

    const-string v1, "Could not get dhcp info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    iget v2, v0, Landroid/net/DhcpInfo;->netmask:I

    and-int/2addr v1, v2

    iget v0, v0, Landroid/net/DhcpInfo;->netmask:I

    xor-int/lit8 v0, v0, -0x1

    or-int/2addr v1, v0

    new-array v2, v4, [B

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v0, 0x8

    shr-int v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/wukoon/api/UDPClient;
    .locals 1

    sget-object v0, Lcom/wukoon/api/UDPClient;->kg:Lcom/wukoon/api/UDPClient;

    return-object v0
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    :try_start_1
    iget-object v0, p0, Lcom/wukoon/api/UDPClient;->jx:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAndRecv(Ljava/lang/String;Ljava/lang/String;ILcom/wukoon/api/UDPClient$UDPListener;I)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    const-string v1, "Calling _send_ on an multicast address is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/wukoon/api/UDPClient;->jx:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/wukoon/api/UDPClient$UDPTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/wukoon/api/UDPClient$UDPTask;-><init>(Lcom/wukoon/api/UDPClient;Ljava/lang/String;Ljava/lang/String;ILcom/wukoon/api/UDPClient$UDPListener;)V

    iget-object v1, p0, Lcom/wukoon/api/UDPClient;->kf:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/wukoon/api/UDPClient$UDPTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/wukoon/api/UDPClient$UDPTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/wukoon/api/UDPClient$UDPTask;-><init>(Lcom/wukoon/api/UDPClient;Ljava/lang/String;Ljava/lang/String;ILcom/wukoon/api/UDPClient$UDPListener;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/wukoon/api/UDPClient$UDPTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
