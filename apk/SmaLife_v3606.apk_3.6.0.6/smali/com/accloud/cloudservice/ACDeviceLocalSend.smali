.class public Lcom/accloud/cloudservice/ACDeviceLocalSend;
.super Ljava/lang/Object;
.source "ACDeviceLocalSend.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "ACDeviceLocalSend"


# instance fields
.field public final SERVERIP:Ljava/lang/String;

.field public SERVERPORT:I

.field private TimeOut:I

.field socket:Ljava/net/DatagramSocket;

.field private zMessage:Lcom/accloud/service/ACMessage;


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;Lcom/accloud/service/ACMessage;I)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "zMessage"    # Lcom/accloud/service/ACMessage;
    .param p3, "timeout"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "255.255.255.255"

    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->SERVERIP:Ljava/lang/String;

    .line 16
    const/16 v0, 0x1e09

    iput v0, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->SERVERPORT:I

    .line 22
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->socket:Ljava/net/DatagramSocket;

    .line 23
    iput-object p2, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->zMessage:Lcom/accloud/service/ACMessage;

    .line 24
    iput p3, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->TimeOut:I

    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 31
    :try_start_0
    iget-object v4, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->zMessage:Lcom/accloud/service/ACMessage;

    invoke-virtual {v4}, Lcom/accloud/service/ACMessage;->getUDPBytes()[B

    move-result-object v0

    .line 33
    .local v0, "buf":[B
    const-string v4, "255.255.255.255"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 34
    .local v3, "serverAddr":Ljava/net/InetAddress;
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v4, v0

    iget v5, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->SERVERPORT:I

    invoke-direct {v2, v0, v4, v3, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 35
    .local v2, "packet":Ljava/net/DatagramPacket;
    const-string v4, "ACDeviceLocalSend"

    const-string v5, "C: Send..."

    invoke-static {v4, v5}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v4, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 38
    :goto_0
    iget v4, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->TimeOut:I

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_0

    .line 39
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 40
    iget v4, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->TimeOut:I

    add-int/lit16 v4, v4, -0x3e8

    iput v4, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->TimeOut:I

    .line 41
    const-string v4, "ACDeviceLocalSend"

    const-string v5, "C: Send..."

    invoke-static {v4, v5}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v4, p0, Lcom/accloud/cloudservice/ACDeviceLocalSend;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v0    # "buf":[B
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    .end local v3    # "serverAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ACDeviceLocalSend"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C: Error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
