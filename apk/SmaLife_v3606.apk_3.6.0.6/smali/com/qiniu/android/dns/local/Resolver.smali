.class public final Lcom/qiniu/android/dns/local/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# static fields
.field private static final random:Ljava/util/Random;


# instance fields
.field final address:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    .line 25
    return-void
.end method

.method private udpCommunicate([B)[B
    .locals 6
    .param p1, "question"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v1    # "socket":Ljava/net/DatagramSocket;
    .local v2, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v3, p1

    iget-object v4, p0, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    const/16 v5, 0x35

    invoke-direct {v0, p1, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 49
    .local v0, "packet":Ljava/net/DatagramPacket;
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 50
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 51
    new-instance v0, Ljava/net/DatagramPacket;

    .end local v0    # "packet":Ljava/net/DatagramPacket;
    const/16 v3, 0x5dc

    new-array v3, v3, [B

    const/16 v4, 0x5dc

    invoke-direct {v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 52
    .restart local v0    # "packet":Ljava/net/DatagramPacket;
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 54
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 56
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    return-object v3

    .line 56
    .end local v0    # "packet":Ljava/net/DatagramPacket;
    .end local v2    # "socket":Ljava/net/DatagramSocket;
    .restart local v1    # "socket":Ljava/net/DatagramSocket;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v3

    .line 56
    .end local v1    # "socket":Ljava/net/DatagramSocket;
    .restart local v2    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "socket":Ljava/net/DatagramSocket;
    .restart local v1    # "socket":Ljava/net/DatagramSocket;
    goto :goto_0
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 7
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .param p2, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    sget-object v5, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    monitor-enter v5

    .line 31
    :try_start_0
    sget-object v4, Lcom/qiniu/android/dns/local/Resolver;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 32
    .local v1, "id":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v4, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/qiniu/android/dns/local/DnsMessage;->buildQuery(Ljava/lang/String;I)[B

    move-result-object v2

    .line 34
    .local v2, "query":[B
    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/local/Resolver;->udpCommunicate([B)[B

    move-result-object v0

    .line 35
    .local v0, "answer":[B
    if-nez v0, :cond_0

    .line 36
    new-instance v4, Lcom/qiniu/android/dns/DnsException;

    iget-object v5, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    const-string v6, "cant get answer"

    invoke-direct {v4, v5, v6}, Lcom/qiniu/android/dns/DnsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 32
    .end local v0    # "answer":[B
    .end local v1    # "id":I
    .end local v2    # "query":[B
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 38
    .restart local v0    # "answer":[B
    .restart local v1    # "id":I
    .restart local v2    # "query":[B
    :cond_0
    iget-object v4, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/qiniu/android/dns/local/DnsMessage;->parseResponse([BILjava/lang/String;)[Lcom/qiniu/android/dns/Record;

    move-result-object v3

    .line 40
    .local v3, "records":[Lcom/qiniu/android/dns/Record;
    return-object v3
.end method
