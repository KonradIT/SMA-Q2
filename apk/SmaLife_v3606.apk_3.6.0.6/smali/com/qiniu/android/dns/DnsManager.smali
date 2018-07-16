.class public final Lcom/qiniu/android/dns/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/DnsManager$1;,
        Lcom/qiniu/android/dns/DnsManager$ShuffleIps;
    }
.end annotation


# instance fields
.field private final cache:Lcom/qiniu/android/dns/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/dns/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final hosts:Lcom/qiniu/android/dns/local/Hosts;

.field private volatile index:I

.field private volatile info:Lcom/qiniu/android/dns/NetworkInfo;

.field private final resolvers:[Lcom/qiniu/android/dns/IResolver;

.field private final sorter:Lcom/qiniu/android/dns/IpSorter;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;)V
    .locals 1
    .param p1, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .param p2, "resolvers"    # [Lcom/qiniu/android/dns/IResolver;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qiniu/android/dns/DnsManager;-><init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;Lcom/qiniu/android/dns/IpSorter;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;Lcom/qiniu/android/dns/IpSorter;)V
    .locals 2
    .param p1, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .param p2, "resolvers"    # [Lcom/qiniu/android/dns/IResolver;
    .param p3, "sorter"    # Lcom/qiniu/android/dns/IpSorter;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/qiniu/android/dns/local/Hosts;

    invoke-direct {v0}, Lcom/qiniu/android/dns/local/Hosts;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    .line 23
    iput-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 40
    if-nez p1, :cond_0

    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    .end local p1    # "info":Lcom/qiniu/android/dns/NetworkInfo;
    :cond_0
    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    .line 41
    invoke-virtual {p2}, [Lcom/qiniu/android/dns/IResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/IResolver;

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    .line 42
    new-instance v0, Lcom/qiniu/android/dns/util/LruCache;

    invoke-direct {v0}, Lcom/qiniu/android/dns/util/LruCache;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    .line 43
    if-nez p3, :cond_1

    new-instance p3, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;

    .end local p3    # "sorter":Lcom/qiniu/android/dns/IpSorter;
    invoke-direct {p3, v1}, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;-><init>(Lcom/qiniu/android/dns/DnsManager$1;)V

    :cond_1
    iput-object p3, p0, Lcom/qiniu/android/dns/DnsManager;->sorter:Lcom/qiniu/android/dns/IpSorter;

    .line 44
    return-void
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v0}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private queryInternal(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .locals 17
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v11, 0x0

    .line 103
    .local v11, "records":[Lcom/qiniu/android/dns/Record;
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    if-eqz v14, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/qiniu/android/dns/local/Hosts;->query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, "ret":[Ljava/lang/String;
    if-eqz v12, :cond_0

    array-length v14, v12

    if-eqz v14, :cond_0

    .line 168
    .end local v12    # "ret":[Ljava/lang/String;
    :goto_0
    return-object v12

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 110
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v15

    .line 111
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    sget-object v16, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/qiniu/android/dns/Network;->isNetworkChanged()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v14}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 115
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_1
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, "lastE":Ljava/io/IOException;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v14, v14

    if-ge v4, v14, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget v14, v0, Lcom/qiniu/android/dns/DnsManager;->index:I

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v15, v15

    rem-int v10, v14, v15

    .line 129
    .local v10, "pos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    .line 130
    .local v2, "before":Lcom/qiniu/android/dns/NetworkInfo;
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "ip":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    aget-object v14, v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    :try_end_3
    .catch Lcom/qiniu/android/dns/http/DomainNotOwn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v11

    .line 139
    :goto_2
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "ip2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    if-ne v14, v2, :cond_4

    if-eqz v11, :cond_2

    array-length v14, v11

    if-nez v14, :cond_4

    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v15

    .line 142
    :try_start_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/qiniu/android/dns/DnsManager;->index:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 143
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 127
    .end local v6    # "ip2":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 115
    .end local v2    # "before":Lcom/qiniu/android/dns/NetworkInfo;
    .end local v4    # "i":I
    .end local v5    # "ip":Ljava/lang/String;
    .end local v7    # "lastE":Ljava/io/IOException;
    .end local v10    # "pos":I
    :catchall_0
    move-exception v14

    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v14

    .line 124
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v14

    .line 117
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/qiniu/android/dns/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    move-object v11, v0

    .line 118
    if-eqz v11, :cond_1

    array-length v14, v11

    if-eqz v14, :cond_1

    .line 119
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14, v8, v9}, Lcom/qiniu/android/dns/Record;->isExpired(J)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 120
    invoke-static {v11}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v12

    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 133
    .restart local v2    # "before":Lcom/qiniu/android/dns/NetworkInfo;
    .restart local v4    # "i":I
    .restart local v5    # "ip":Ljava/lang/String;
    .restart local v7    # "lastE":Ljava/io/IOException;
    .restart local v10    # "pos":I
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Lcom/qiniu/android/dns/http/DomainNotOwn;
    goto :goto_3

    .line 135
    .end local v3    # "e":Lcom/qiniu/android/dns/http/DomainNotOwn;
    :catch_1
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    move-object v7, v3

    .line 137
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "ip2":Ljava/lang/String;
    :catchall_2
    move-exception v14

    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v14

    .line 149
    .end local v2    # "before":Lcom/qiniu/android/dns/NetworkInfo;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "ip2":Ljava/lang/String;
    .end local v10    # "pos":I
    :cond_4
    if-eqz v11, :cond_5

    array-length v14, v11

    if-nez v14, :cond_8

    .line 150
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    if-nez v14, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/qiniu/android/dns/local/Hosts;->query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "rs":[Ljava/lang/String;
    if-eqz v13, :cond_6

    array-length v14, v13

    if-eqz v14, :cond_6

    move-object v12, v13

    .line 153
    goto/16 :goto_0

    .line 156
    .end local v13    # "rs":[Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_7

    .line 157
    throw v7

    .line 159
    :cond_7
    new-instance v14, Ljava/net/UnknownHostException;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 161
    :cond_8
    invoke-static {v11}, Lcom/qiniu/android/dns/DnsManager;->trimCname([Lcom/qiniu/android/dns/Record;)[Lcom/qiniu/android/dns/Record;

    move-result-object v11

    .line 162
    array-length v14, v11

    if-nez v14, :cond_9

    .line 163
    new-instance v14, Ljava/net/UnknownHostException;

    const-string v15, "no A records"

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 165
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v15

    .line 166
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v11}, Lcom/qiniu/android/dns/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/qiniu/android/dns/util/LruCache;

    .line 167
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 168
    invoke-static {v11}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 167
    :catchall_3
    move-exception v14

    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v14
.end method

.method private static records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;
    .locals 6
    .param p0, "records"    # [Lcom/qiniu/android/dns/Record;

    .prologue
    const/4 v2, 0x0

    .line 57
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, p0, v3

    .line 62
    .local v1, "r":Lcom/qiniu/android/dns/Record;
    iget-object v5, v1, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    .end local v1    # "r":Lcom/qiniu/android/dns/Record;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static trimCname([Lcom/qiniu/android/dns/Record;)[Lcom/qiniu/android/dns/Record;
    .locals 6
    .param p0, "records"    # [Lcom/qiniu/android/dns/Record;

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/Record;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 49
    .local v1, "r":Lcom/qiniu/android/dns/Record;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/qiniu/android/dns/Record;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "r":Lcom/qiniu/android/dns/Record;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/qiniu/android/dns/Record;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/qiniu/android/dns/Record;

    return-object v2
.end method


# virtual methods
.method public onNetworkChange(Lcom/qiniu/android/dns/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/qiniu/android/dns/NetworkInfo;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/qiniu/android/dns/DnsManager;->clearCache()V

    .line 187
    if-nez p1, :cond_0

    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    .end local p1    # "info":Lcom/qiniu/android/dns/NetworkInfo;
    :cond_0
    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    .line 188
    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v1

    .line 189
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    .line 190
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/local/Hosts;

    .line 221
    return-object p0
.end method

.method public putHosts(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/DnsManager;
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "provider"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    new-instance v1, Lcom/qiniu/android/dns/local/Hosts$Value;

    invoke-direct {v1, p2, p3}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Lcom/qiniu/android/dns/local/Hosts$Value;)Lcom/qiniu/android/dns/local/Hosts;

    .line 209
    return-object p0
.end method

.method public query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .locals 3
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/DnsManager;->queryInternal(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "r":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 86
    .end local v0    # "r":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "r":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->sorter:Lcom/qiniu/android/dns/IpSorter;

    invoke-interface {v1, v0}, Lcom/qiniu/android/dns/IpSorter;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/qiniu/android/dns/Domain;

    invoke-direct {v0, p1}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryInetAdress(Lcom/qiniu/android/dns/Domain;)[Ljava/net/InetAddress;
    .locals 4
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "ips":[Ljava/lang/String;
    array-length v3, v2

    new-array v0, v3, [Ljava/net/InetAddress;

    .line 174
    .local v0, "addresses":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 175
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-object v0
.end method
