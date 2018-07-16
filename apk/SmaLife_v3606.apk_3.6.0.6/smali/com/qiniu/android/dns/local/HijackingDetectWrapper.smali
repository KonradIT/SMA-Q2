.class public final Lcom/qiniu/android/dns/local/HijackingDetectWrapper;
.super Ljava/lang/Object;
.source "HijackingDetectWrapper.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final resolver:Lcom/qiniu/android/dns/local/Resolver;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/local/Resolver;)V
    .locals 0
    .param p1, "r"    # Lcom/qiniu/android/dns/local/Resolver;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    .line 18
    return-void
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
    const/4 v3, 0x0

    .line 22
    iget-object v4, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    invoke-virtual {v4, p1, p2}, Lcom/qiniu/android/dns/local/Resolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object v2

    .line 23
    .local v2, "records":[Lcom/qiniu/android/dns/Record;
    iget-boolean v4, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    if-eqz v4, :cond_2

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "cname":Z
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 26
    .local v1, "r":Lcom/qiniu/android/dns/Record;
    invoke-virtual {v1}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 31
    .end local v1    # "r":Lcom/qiniu/android/dns/Record;
    :cond_0
    if-nez v0, :cond_2

    .line 32
    new-instance v3, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v4, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    iget-object v5, v5, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    .line 33
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 25
    .restart local v1    # "r":Lcom/qiniu/android/dns/Record;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "cname":Z
    .end local v1    # "r":Lcom/qiniu/android/dns/Record;
    :cond_2
    iget v4, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v4, :cond_4

    .line 37
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v2, v3

    .line 38
    .restart local v1    # "r":Lcom/qiniu/android/dns/Record;
    invoke-virtual {v1}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v5

    if-nez v5, :cond_3

    .line 39
    iget v5, v1, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v6, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-le v5, v6, :cond_3

    .line 40
    new-instance v3, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v4, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    iget-object v5, v5, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    .line 41
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {v3, v4, v5, v6}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    .line 37
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 46
    .end local v1    # "r":Lcom/qiniu/android/dns/Record;
    :cond_4
    return-object v2
.end method
