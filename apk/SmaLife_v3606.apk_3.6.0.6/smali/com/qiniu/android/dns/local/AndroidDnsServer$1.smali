.class final Lcom/qiniu/android/dns/local/AndroidDnsServer$1;
.super Ljava/lang/Object;
.source "AndroidDnsServer.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/local/AndroidDnsServer;->defaultResolver()Lcom/qiniu/android/dns/IResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 10
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .param p2, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->getByReflection()[Ljava/net/InetAddress;

    move-result-object v0

    .line 112
    .local v0, "addresses":[Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->getByCommand()[Ljava/net/InetAddress;

    move-result-object v0

    .line 115
    :cond_0
    if-nez v0, :cond_1

    .line 116
    new-instance v5, Ljava/io/IOException;

    const-string v6, "cant get local dns server"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_1
    new-instance v4, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;

    new-instance v5, Lcom/qiniu/android/dns/local/Resolver;

    aget-object v7, v0, v6

    invoke-direct {v5, v7}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;)V

    invoke-direct {v4, v5}, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;-><init>(Lcom/qiniu/android/dns/local/Resolver;)V

    .line 119
    .local v4, "resolver":Lcom/qiniu/android/dns/IResolver;
    invoke-interface {v4, p1, p2}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object v3

    .line 120
    .local v3, "records":[Lcom/qiniu/android/dns/Record;
    iget-boolean v5, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    if-eqz v5, :cond_4

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "cname":Z
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v2, v3, v5

    .line 123
    .local v2, "r":Lcom/qiniu/android/dns/Record;
    invoke-virtual {v2}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    const/4 v1, 0x1

    .line 128
    .end local v2    # "r":Lcom/qiniu/android/dns/Record;
    :cond_2
    if-nez v1, :cond_4

    .line 129
    new-instance v5, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v7, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aget-object v6, v0, v6

    .line 130
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 122
    .restart local v2    # "r":Lcom/qiniu/android/dns/Record;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "cname":Z
    .end local v2    # "r":Lcom/qiniu/android/dns/Record;
    :cond_4
    iget v5, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v5, :cond_6

    .line 134
    array-length v7, v3

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v2, v3, v5

    .line 135
    .restart local v2    # "r":Lcom/qiniu/android/dns/Record;
    invoke-virtual {v2}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v8

    if-nez v8, :cond_5

    .line 136
    iget v8, v2, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v9, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-le v8, v9, :cond_5

    .line 137
    new-instance v5, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v7, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aget-object v6, v0, v6

    .line 138
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iget v8, v2, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {v5, v7, v6, v8}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v5

    .line 134
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 143
    .end local v2    # "r":Lcom/qiniu/android/dns/Record;
    :cond_6
    return-object v3
.end method
