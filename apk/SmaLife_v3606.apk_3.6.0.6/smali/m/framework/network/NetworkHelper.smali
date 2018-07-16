.class public Lm/framework/network/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field public static connectionTimeout:I

.field public static readTimout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 273
    .local v6, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "boundary":Ljava/lang/String;
    new-instance v5, Lm/framework/network/MultiPart;

    invoke-direct {v5}, Lm/framework/network/MultiPart;-><init>()V

    .line 275
    .local v5, "mp":Lm/framework/network/MultiPart;
    new-instance v7, Lm/framework/network/StringPart;

    invoke-direct {v7}, Lm/framework/network/StringPart;-><init>()V

    .line 276
    .local v7, "sp":Lm/framework/network/StringPart;
    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 284
    :cond_0
    const-string v9, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "multipart/form-data; boundary="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v9, "--"

    invoke-virtual {v7, v9}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    invoke-virtual {v9, v0}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 286
    new-instance v3, Ljava/io/File;

    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v3, "imageFile":Ljava/io/File;
    const-string v9, "Content-Disposition: form-data; name=\""

    invoke-virtual {v7, v9}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    iget-object v10, p3, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    .line 288
    const-string v10, "\"; filename=\""

    invoke-virtual {v9, v10}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    const-string v10, "\"\r\n"

    invoke-virtual {v9, v10}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 289
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v10

    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10, v9}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "mime":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    .line 291
    :cond_1
    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 292
    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "jepg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 293
    :cond_2
    const-string v4, "image/jpeg"

    .line 307
    :cond_3
    :goto_1
    const-string v9, "Content-Type: "

    invoke-virtual {v7, v9}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    invoke-virtual {v9, v4}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    const-string v10, "\r\n\r\n"

    invoke-virtual {v9, v10}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 308
    invoke-virtual {v5, v7}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 310
    new-instance v2, Lm/framework/network/FilePart;

    invoke-direct {v2}, Lm/framework/network/FilePart;-><init>()V

    .line 311
    .local v2, "fp":Lm/framework/network/FilePart;
    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Lm/framework/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v5, v2}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 313
    new-instance v7, Lm/framework/network/StringPart;

    .end local v7    # "sp":Lm/framework/network/StringPart;
    invoke-direct {v7}, Lm/framework/network/StringPart;-><init>()V

    .line 314
    .restart local v7    # "sp":Lm/framework/network/StringPart;
    const-string v9, "\r\n--"

    invoke-virtual {v7, v9}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    invoke-virtual {v9, v0}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    const-string v10, "--\r\n"

    invoke-virtual {v9, v10}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 315
    invoke-virtual {v5, v7}, Lm/framework/network/MultiPart;->append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;

    .line 317
    invoke-virtual {v5}, Lm/framework/network/MultiPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 318
    return-object v6

    .line 277
    .end local v2    # "fp":Lm/framework/network/FilePart;
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v4    # "mime":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm/framework/network/KVPair;

    .line 278
    .local v8, "value":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    const-string v9, "--"

    invoke-virtual {v7, v9}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    invoke-virtual {v9, v0}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 279
    const-string v9, "content-disposition: form-data; name=\""

    invoke-virtual {v7, v9}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    iget-object v11, v8, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    const-string v11, "\"\r\n\r\n"

    invoke-virtual {v9, v11}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 280
    iget-object v9, v8, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    goto/16 :goto_0

    .line 294
    .end local v8    # "value":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .restart local v3    # "imageFile":Ljava/io/File;
    .restart local v4    # "mime":Ljava/lang/String;
    :cond_5
    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "png"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 295
    const-string v4, "image/png"

    .line 296
    goto/16 :goto_1

    :cond_6
    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 297
    const-string v4, "image/gif"

    .line 298
    goto/16 :goto_1

    .line 299
    :cond_7
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 302
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    .line 303
    :cond_8
    const-string v4, "application/octet-stream"

    goto/16 :goto_1
.end method

.method private getSSLHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 437
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 438
    .local v4, "trustStore":Ljava/security/KeyStore;
    invoke-virtual {v4, v6, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 439
    new-instance v3, Lm/framework/network/SSLSocketFactoryEx;

    invoke-direct {v3, v4}, Lm/framework/network/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 440
    .local v3, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 442
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 443
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 444
    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 446
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 447
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 448
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 450
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 451
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v5
.end method

.method private kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 423
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/framework/network/KVPair;

    .line 424
    .local v3, "value":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    iget-object v4, v3, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "encodedName":Ljava/lang/String;
    iget-object v4, v3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, v3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "encodedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 429
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 426
    .end local v1    # "encodedValue":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 325
    new-instance v2, Lm/framework/network/StringPart;

    invoke-direct {v2}, Lm/framework/network/StringPart;-><init>()V

    .line 326
    .local v2, "sp":Lm/framework/network/StringPart;
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm/framework/network/StringPart;->append(Ljava/lang/String;)Lm/framework/network/StringPart;

    .line 327
    invoke-virtual {v2}, Lm/framework/network/StringPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v0

    .line 328
    .local v0, "entity":Lorg/apache/http/entity/InputStreamEntity;
    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 332
    .end local v0    # "entity":Lorg/apache/http/entity/InputStreamEntity;
    .end local v2    # "sp":Lm/framework/network/StringPart;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/io/File;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 128
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    const/4 v1, 0x0

    .line 129
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    const-string v9, "https://"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 130
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 135
    :goto_0
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 136
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 137
    .local v8, "status":I
    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 138
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 139
    .local v5, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 141
    .local v0, "buf":[B
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 142
    .local v6, "len":I
    :goto_1
    if-gtz v6, :cond_1

    .line 146
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 147
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 148
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 149
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 156
    return-void

    .line 133
    .end local v0    # "buf":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "status":I
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 143
    .restart local v0    # "buf":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "status":I
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 144
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    goto :goto_1

    .line 152
    .end local v0    # "buf":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    :cond_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "error":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 154
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public download(Ljava/lang/String;Lm/framework/network/ResponseCallback;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lm/framework/network/ResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    const/4 v0, 0x0

    .line 161
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string v6, "https://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 167
    :goto_0
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 168
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 169
    .local v5, "status":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 170
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 171
    .local v3, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 172
    invoke-interface {p2, v3}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 174
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 175
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 182
    return-void

    .line 165
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "status":I
    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 178
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "status":I
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "error":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 180
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz p2, :cond_0

    .line 41
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "param":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    .end local v5    # "param":Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_1

    .line 49
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 54
    :cond_1
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 55
    .local v4, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v9, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    sget v9, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string v9, "https://"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 61
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 66
    :goto_1
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 67
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 68
    .local v8, "status":I
    const/4 v6, 0x0

    .line 69
    .local v6, "resp":Ljava/lang/String;
    const/16 v9, 0xc8

    if-ne v8, v9, :cond_4

    .line 70
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 78
    return-object v6

    .line 49
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v6    # "resp":Ljava/lang/String;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "status":I
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/framework/network/KVPair;

    .line 50
    .local v3, "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    iget-object v11, v3, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v9, v3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v11, v9}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v3    # "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    :cond_3
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .line 73
    .restart local v6    # "resp":Ljava/lang/String;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "status":I
    :cond_4
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "error":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 75
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lm/framework/network/ResponseCallback;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "callback"    # Lm/framework/network/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz p2, :cond_0

    .line 85
    invoke-direct {p0, p2}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "param":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    .end local v7    # "param":Ljava/lang/String;
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "get":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_1

    .line 93
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 98
    :cond_1
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 99
    .local v5, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v10, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {v5, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 100
    sget v10, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {v5, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 101
    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    const-string v10, "https://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 105
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 110
    :goto_1
    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 111
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 112
    .local v9, "status":I
    const/16 v10, 0xc8

    if-ne v9, v10, :cond_5

    .line 113
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 114
    .local v6, "is":Ljava/io/InputStream;
    if-eqz p4, :cond_2

    .line 115
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 117
    :cond_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 118
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 124
    return-void

    .line 93
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "status":I
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/framework/network/KVPair;

    .line 94
    .local v4, "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    iget-object v12, v4, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v10, v4, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v12, v10}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v4    # "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    :cond_4
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .line 120
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "status":I
    :cond_5
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-static {v10, v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "error":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 122
    new-instance v10, Ljava/lang/Throwable;

    invoke-direct {v10, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_2

    iget-object v8, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v8, :cond_2

    new-instance v9, Ljava/io/File;

    iget-object v8, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lm/framework/network/NetworkHelper;->filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    .line 194
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    if-eqz p4, :cond_0

    .line 195
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 200
    :cond_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 201
    .local v3, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v8, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 202
    sget v8, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 203
    invoke-virtual {v5, v3}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string v8, "https://"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 207
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 212
    :goto_2
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 213
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 214
    .local v7, "status":I
    const/4 v6, 0x0

    .line 215
    .local v6, "resp":Ljava/lang/String;
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    const/16 v8, 0xc9

    if-ne v7, v8, :cond_5

    .line 216
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 224
    return-object v6

    .line 191
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "resp":Ljava/lang/String;
    .end local v7    # "status":I
    :cond_2
    invoke-direct {p0, p1, p2}, Lm/framework/network/NetworkHelper;->textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 195
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/framework/network/KVPair;

    .line 196
    .local v2, "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    iget-object v10, v2, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v8, v2, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v10, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    .end local v2    # "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    :cond_4
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .line 220
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v6    # "resp":Ljava/lang/String;
    .restart local v7    # "status":I
    :cond_5
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "error":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 222
    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;Lm/framework/network/ResponseCallback;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "callback"    # Lm/framework/network/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_3

    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    if-eqz v9, :cond_3

    new-instance v10, Ljava/io/File;

    iget-object v9, p3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lm/framework/network/NetworkHelper;->filePost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v7

    .line 237
    .local v7, "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    if-eqz p4, :cond_0

    .line 238
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 243
    :cond_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 244
    .local v4, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v9, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 245
    sget v9, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 246
    invoke-virtual {v7, v4}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    const-string v9, "https://"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 250
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 254
    :goto_2
    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 255
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 256
    .local v8, "status":I
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_1

    const/16 v9, 0xc9

    if-ne v8, v9, :cond_6

    .line 257
    :cond_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 258
    .local v6, "is":Ljava/io/InputStream;
    if-eqz p5, :cond_2

    .line 259
    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 261
    :cond_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 262
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 268
    return-void

    .line 234
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "status":I
    :cond_3
    invoke-direct {p0, p1, p2}, Lm/framework/network/NetworkHelper;->textPost(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v7

    .restart local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 238
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/framework/network/KVPair;

    .line 239
    .local v3, "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    iget-object v11, v3, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v9, v3, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v11, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    .end local v3    # "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    :cond_5
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .line 264
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v8    # "status":I
    :cond_6
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "error":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 266
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public httpPut(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/KVPair;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 372
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    .local p3, "file":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    if-eqz p2, :cond_0

    .line 373
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lm/framework/network/NetworkHelper;->kvPairsToUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, "param":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 375
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 379
    .end local v8    # "param":Ljava/lang/String;
    :cond_0
    new-instance v9, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 380
    .local v9, "put":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p4, :cond_1

    .line 381
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 386
    :cond_1
    new-instance v4, Lm/framework/network/FilePart;

    invoke-direct {v4}, Lm/framework/network/FilePart;-><init>()V

    .line 387
    .local v4, "fp":Lm/framework/network/FilePart;
    move-object/from16 v0, p3

    iget-object v12, v0, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v12}, Lm/framework/network/FilePart;->setFile(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v4}, Lm/framework/network/FilePart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v2

    .line 389
    .local v2, "entity":Lorg/apache/http/entity/InputStreamEntity;
    const-string v12, "application/octet-stream"

    invoke-virtual {v2, v12}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v9, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 392
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 393
    .local v6, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v12, Lm/framework/network/NetworkHelper;->connectionTimeout:I

    invoke-static {v6, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 394
    sget v12, Lm/framework/network/NetworkHelper;->readTimout:I

    invoke-static {v6, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 395
    invoke-virtual {v9, v6}, Lorg/apache/http/client/methods/HttpPut;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    const-string v12, "https://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 399
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 404
    :goto_1
    invoke-interface {v1, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 405
    .local v7, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 406
    .local v11, "status":I
    const/4 v10, 0x0

    .line 407
    .local v10, "resp":Ljava/lang/String;
    const/16 v12, 0xc8

    if-eq v11, v12, :cond_2

    const/16 v12, 0xc9

    if-ne v11, v12, :cond_5

    .line 408
    :cond_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    const-string v13, "utf-8"

    invoke-static {v12, v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 409
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 416
    return-object v10

    .line 381
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/entity/InputStreamEntity;
    .end local v4    # "fp":Lm/framework/network/FilePart;
    .end local v6    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "resp":Ljava/lang/String;
    .end local v11    # "status":I
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm/framework/network/KVPair;

    .line 382
    .local v5, "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    iget-object v14, v5, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v12, v5, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v14, v12}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .end local v5    # "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "entity":Lorg/apache/http/entity/InputStreamEntity;
    .restart local v4    # "fp":Lm/framework/network/FilePart;
    .restart local v6    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    :cond_4
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_1

    .line 412
    .restart local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v10    # "resp":Ljava/lang/String;
    .restart local v11    # "status":I
    :cond_5
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    const-string v13, "utf-8"

    invoke-static {v12, v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "error":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 414
    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public rawPost(Ljava/lang/String;Ljava/util/ArrayList;Lm/framework/network/HTTPPart;Lm/framework/network/ResponseCallback;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "data"    # Lm/framework/network/HTTPPart;
    .param p4, "callback"    # Lm/framework/network/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/KVPair",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lm/framework/network/HTTPPart;",
            "Lm/framework/network/ResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lm/framework/network/KVPair<Ljava/lang/String;>;>;"
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 339
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 340
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 345
    :cond_0
    invoke-virtual {p3}, Lm/framework/network/HTTPPart;->getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string v7, "https://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 349
    invoke-direct {p0}, Lm/framework/network/NetworkHelper;->getSSLHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 354
    :goto_1
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 355
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 356
    .local v6, "status":I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2

    .line 357
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 358
    .local v4, "is":Ljava/io/InputStream;
    if-eqz p4, :cond_1

    .line 359
    invoke-interface {p4, v4}, Lm/framework/network/ResponseCallback;->onResponse(Ljava/io/InputStream;)V

    .line 361
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 362
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 365
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "error":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 367
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v7

    .line 340
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "error":Ljava/lang/String;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "status":I
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/framework/network/KVPair;

    .line 341
    .local v2, "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    iget-object v9, v2, Lm/framework/network/KVPair;->name:Ljava/lang/String;

    iget-object v7, v2, Lm/framework/network/KVPair;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v9, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    .end local v2    # "header":Lm/framework/network/KVPair;, "Lm/framework/network/KVPair<Ljava/lang/String;>;"
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    :cond_4
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method
