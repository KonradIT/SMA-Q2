.class public final Lcom/qiniu/android/storage/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x400000


# instance fields
.field public final chunkSize:I

.field public final connectTimeout:I

.field public dns:Lcom/qiniu/android/dns/DnsManager;

.field public final keyGen:Lcom/qiniu/android/storage/KeyGenerator;

.field public final proxy:Lcom/qiniu/android/http/Proxy;

.field public final putThreshold:I

.field public final recorder:Lcom/qiniu/android/storage/Recorder;

.field public final responseTimeout:I

.field public final retryMax:I

.field public final upHost:Ljava/lang/String;

.field public final upHostBackup:Ljava/lang/String;

.field public final upIp:Ljava/lang/String;

.field public final upIp2:Ljava/lang/String;

.field public final upPort:I

.field public urlConverter:Lcom/qiniu/android/http/UrlConverter;


# direct methods
.method private constructor <init>(Lcom/qiniu/android/storage/Configuration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->upHost:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->upHostBackup:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$200(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->upIp:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$300(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->upIp2:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration;->getPort(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->upPort:I

    .line 88
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    .line 89
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$500(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->putThreshold:I

    .line 91
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$600(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->connectTimeout:I

    .line 92
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$700(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->responseTimeout:I

    .line 94
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$800(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/Recorder;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 95
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$900(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/KeyGenerator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/Configuration;->getKeyGen(Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    .line 97
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    .line 99
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->proxy:Lcom/qiniu/android/http/Proxy;

    .line 101
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1200(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    .line 103
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration;->initDns(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/dns/DnsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->dns:Lcom/qiniu/android/dns/DnsManager;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/storage/Configuration$Builder;Lcom/qiniu/android/storage/Configuration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qiniu/android/storage/Configuration$Builder;
    .param p2, "x1"    # Lcom/qiniu/android/storage/Configuration$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/Configuration;-><init>(Lcom/qiniu/android/storage/Configuration$Builder;)V

    return-void
.end method

.method private getKeyGen(Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/KeyGenerator;
    .locals 0
    .param p1, "keyGen"    # Lcom/qiniu/android/storage/KeyGenerator;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance p1, Lcom/qiniu/android/storage/Configuration$1;

    .end local p1    # "keyGen":Lcom/qiniu/android/storage/KeyGenerator;
    invoke-direct {p1, p0}, Lcom/qiniu/android/storage/Configuration$1;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    .line 141
    .restart local p1    # "keyGen":Lcom/qiniu/android/storage/KeyGenerator;
    :cond_0
    return-object p1
.end method

.method private static getPort(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1
    .param p0, "builder"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1200(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    const/16 v0, 0x50

    .line 129
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1400(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    goto :goto_0
.end method

.method private static initDns(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/dns/DnsManager;
    .locals 8
    .param p0, "builder"    # Lcom/qiniu/android/storage/Configuration$Builder;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1300(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/dns/DnsManager;

    move-result-object v0

    .line 108
    .local v0, "d":Lcom/qiniu/android/dns/DnsManager;
    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->defaultResolver()Lcom/qiniu/android/dns/IResolver;

    move-result-object v2

    .line 110
    .local v2, "r1":Lcom/qiniu/android/dns/IResolver;
    const/4 v3, 0x0

    .line 112
    .local v3, "r2":Lcom/qiniu/android/dns/IResolver;
    :try_start_0
    new-instance v4, Lcom/qiniu/android/dns/local/Resolver;

    const-string v5, "114.114.115.115"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "r2":Lcom/qiniu/android/dns/IResolver;
    .local v4, "r2":Lcom/qiniu/android/dns/IResolver;
    move-object v3, v4

    .line 116
    .end local v4    # "r2":Lcom/qiniu/android/dns/IResolver;
    .restart local v3    # "r2":Lcom/qiniu/android/dns/IResolver;
    :goto_0
    new-instance v0, Lcom/qiniu/android/dns/DnsManager;

    .end local v0    # "d":Lcom/qiniu/android/dns/DnsManager;
    sget-object v5, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/qiniu/android/dns/IResolver;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/qiniu/android/dns/DnsManager;-><init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;)V

    .line 118
    .end local v2    # "r1":Lcom/qiniu/android/dns/IResolver;
    .end local v3    # "r2":Lcom/qiniu/android/dns/IResolver;
    .restart local v0    # "d":Lcom/qiniu/android/dns/DnsManager;
    :cond_0
    const-string v5, "upload.qiniu.com"

    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$200(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/qiniu/android/dns/DnsManager;->putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;

    .line 119
    const-string v5, "upload.qiniu.com"

    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$300(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/qiniu/android/dns/DnsManager;->putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;

    .line 120
    const-string v5, "up.qiniu.com"

    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$200(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/qiniu/android/dns/DnsManager;->putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;

    .line 121
    const-string v5, "up.qiniu.com"

    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$300(Lcom/qiniu/android/storage/Configuration$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/qiniu/android/dns/DnsManager;->putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;

    .line 122
    return-object v0

    .line 113
    .restart local v2    # "r1":Lcom/qiniu/android/dns/IResolver;
    .restart local v3    # "r2":Lcom/qiniu/android/dns/IResolver;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
