.class public final Lcom/qiniu/android/dns/http/DnspodFree;
.super Ljava/lang/Object;
.source "DnspodFree.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final ip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "119.29.29.29"

    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/http/DnspodFree;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/qiniu/android/dns/http/DnspodFree;->ip:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 28
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .param p2, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/16 v24, 0x0

    .line 37
    .local v24, "uri":Ljava/net/URI;
    :try_start_0
    new-instance v24, Ljava/net/URI;

    .end local v24    # "uri":Ljava/net/URI;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/dns/http/DnspodFree;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/d?ttl=1&dn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .restart local v24    # "uri":Ljava/net/URI;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 43
    .local v9, "client":Lorg/apache/http/client/HttpClient;
    new-instance v21, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 44
    .local v21, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 45
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 46
    .local v22, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    .line 47
    .local v23, "responseCode":I
    const/16 v2, 0xc8

    move/from16 v0, v23

    if-eq v0, v2, :cond_1

    .line 48
    const/16 v20, 0x0

    .line 85
    :cond_0
    :goto_0
    return-object v20

    .line 38
    .end local v9    # "client":Lorg/apache/http/client/HttpClient;
    .end local v21    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "responseCode":I
    .end local v24    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v11

    .line 39
    .local v11, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 50
    .end local v11    # "e":Ljava/net/URISyntaxException;
    .restart local v9    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v21    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v23    # "responseCode":I
    .restart local v24    # "uri":Ljava/net/URI;
    :cond_1
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 51
    .local v12, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    .line 52
    .local v16, "length":J
    const-wide/16 v2, 0x400

    cmp-long v2, v16, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_3

    .line 53
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 56
    .local v15, "is":Ljava/io/InputStream;
    move-wide/from16 v0, v16

    long-to-int v2, v0

    new-array v10, v2, [B

    .line 57
    .local v10, "data":[B
    const/16 v19, 0x0

    .line 59
    .local v19, "read":I
    :try_start_1
    invoke-virtual {v15, v10}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    .line 63
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 65
    new-instance v8, Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-direct {v8, v10, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 66
    .local v8, "body":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 67
    .local v18, "r1":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 68
    const/16 v20, 0x0

    goto :goto_0

    .line 60
    .end local v8    # "body":Ljava/lang/String;
    .end local v18    # "r1":[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 61
    .local v11, "e":Ljava/io/IOException;
    :try_start_2
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    throw v2

    .line 72
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v18    # "r1":[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    :try_start_3
    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    .line 76
    .local v5, "ttl":I
    const/4 v2, 0x0

    aget-object v2, v18, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "ips":[Ljava/lang/String;
    array-length v2, v14

    if-nez v2, :cond_5

    .line 78
    const/16 v20, 0x0

    goto :goto_0

    .line 73
    .end local v5    # "ttl":I
    .end local v14    # "ips":[Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 74
    .local v11, "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    goto :goto_0

    .line 80
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v5    # "ttl":I
    .restart local v14    # "ips":[Ljava/lang/String;
    :cond_5
    array-length v2, v14

    new-array v0, v2, [Lcom/qiniu/android/dns/Record;

    move-object/from16 v20, v0

    .line 81
    .local v20, "records":[Lcom/qiniu/android/dns/Record;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v26, 0x3e8

    div-long v6, v2, v26

    .line 82
    .local v6, "time":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v2, v14

    if-ge v13, v2, :cond_0

    .line 83
    new-instance v2, Lcom/qiniu/android/dns/Record;

    aget-object v3, v14, v13

    const/4 v4, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJ)V

    aput-object v2, v20, v13

    .line 82
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method
