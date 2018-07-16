.class public Lcom/xlwtech/util/UdpClient;
.super Ljava/lang/Object;
.source "UdpClient.java"


# static fields
.field public static allUdpConnector:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xlwtech/util/UdpConnector;",
            ">;"
        }
    .end annotation
.end field

.field private static broadcast_port:I

.field private static instance:Lcom/xlwtech/util/UdpClient;

.field public static localIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xlwtech/util/UdpClient;->allUdpConnector:Ljava/util/Map;

    .line 16
    const v0, 0xea61

    sput v0, Lcom/xlwtech/util/UdpClient;->broadcast_port:I

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/xlwtech/util/UdpClient;->localIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xlwtech/util/UdpClient;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/xlwtech/util/UdpClient;->instance:Lcom/xlwtech/util/UdpClient;

    if-nez v0, :cond_0

    .line 24
    :try_start_0
    sget-object v0, Lcom/xlwtech/util/UdpClient;->instance:Lcom/xlwtech/util/UdpClient;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/xlwtech/util/UdpClient;

    invoke-direct {v0}, Lcom/xlwtech/util/UdpClient;-><init>()V

    sput-object v0, Lcom/xlwtech/util/UdpClient;->instance:Lcom/xlwtech/util/UdpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    sget-object v0, Lcom/xlwtech/util/UdpClient;->instance:Lcom/xlwtech/util/UdpClient;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    .line 29
    throw v0
.end method


# virtual methods
.method public closeConnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/xlwtech/util/UdpClient;->allUdpConnector:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public sendBroadCastSignaling(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "buffer"    # [B

    .prologue
    .line 42
    sget-object v1, Lcom/xlwtech/util/UdpClient;->allUdpConnector:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xlwtech/util/UdpConnector;

    .line 43
    .local v0, "udpConnector":Lcom/xlwtech/util/UdpConnector;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/xlwtech/util/UdpConnector;

    .end local v0    # "udpConnector":Lcom/xlwtech/util/UdpConnector;
    sget v1, Lcom/xlwtech/util/UdpClient;->broadcast_port:I

    invoke-direct {v0, p1, v1}, Lcom/xlwtech/util/UdpConnector;-><init>(Ljava/lang/String;I)V

    .line 45
    .restart local v0    # "udpConnector":Lcom/xlwtech/util/UdpConnector;
    invoke-virtual {v0}, Lcom/xlwtech/util/UdpConnector;->connect()V

    .line 46
    invoke-virtual {v0, p2}, Lcom/xlwtech/util/UdpConnector;->sendBroadCasetBuffer([B)V

    .line 47
    sget-object v1, Lcom/xlwtech/util/UdpClient;->allUdpConnector:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/xlwtech/util/UdpConnector;->getUdpSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v0, p2}, Lcom/xlwtech/util/UdpConnector;->sendBroadCasetBuffer([B)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/xlwtech/util/UdpConnector;->connect()V

    .line 52
    invoke-virtual {v0, p2}, Lcom/xlwtech/util/UdpConnector;->sendBroadCasetBuffer([B)V

    goto :goto_0
.end method
