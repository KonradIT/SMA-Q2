.class public final Lcom/qiniu/android/dns/local/AndroidDnsServer;
.super Ljava/lang/Object;
.source "AndroidDnsServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultResolver()Lcom/qiniu/android/dns/IResolver;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/qiniu/android/dns/local/AndroidDnsServer$1;

    invoke-direct {v0}, Lcom/qiniu/android/dns/local/AndroidDnsServer$1;-><init>()V

    return-object v0
.end method

.method public static getByCommand()[Ljava/net/InetAddress;
    .locals 13

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "getprop"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 26
    .local v5, "process":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 27
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 29
    .local v4, "lnr":Ljava/io/LineNumberReader;
    const/4 v3, 0x0

    .line 30
    .local v3, "line":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    const/4 v10, 0x5

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v7, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 32
    const-string v10, "]: ["

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 33
    .local v8, "split":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    .line 36
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "property":Ljava/lang/String;
    add-int/lit8 v10, v8, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 38
    .local v9, "value":Ljava/lang/String;
    const-string v10, ".dns"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".dns1"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".dns2"

    .line 39
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".dns3"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".dns4"

    .line 40
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 44
    :cond_1
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 46
    .local v2, "ip":Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 50
    if-eqz v9, :cond_0

    .line 51
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 53
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "ip":Ljava/net/InetAddress;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lnr":Ljava/io/LineNumberReader;
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v8    # "split":I
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "AndroidDnsServer"

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "Exception in findDNSByExec"

    invoke-virtual {v10, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v10, 0x0

    :goto_1
    return-object v10

    .line 56
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lnr":Ljava/io/LineNumberReader;
    .restart local v7    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/net/InetAddress;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getByReflection()[Ljava/net/InetAddress;
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 68
    :try_start_0
    const-string v9, "android.os.SystemProperties"

    .line 69
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "get"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 73
    .local v3, "method":Ljava/lang/reflect/Method;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v5, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "net.dns1"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "net.dns2"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "net.dns3"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "net.dns4"

    aput-object v11, v9, v10

    array-length v10, v9

    :goto_0
    if-ge v7, v10, :cond_3

    aget-object v4, v9, v7

    .line 78
    .local v4, "propKey":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-virtual {v3, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 80
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 75
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 83
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 85
    .local v2, "ip":Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_0

    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 91
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 93
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    .end local v2    # "ip":Ljava/net/InetAddress;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "propKey":Ljava/lang/String;
    .end local v5    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "AndroidDnsServer"

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Exception in findDNSByReflection"

    invoke-virtual {v7, v9, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v7, v8

    .line 103
    :goto_2
    return-object v7

    .line 96
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 97
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/net/InetAddress;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
