.class public final Lcom/qiniu/android/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# instance fields
.field private backUpIp:Ljava/lang/String;

.field private client:Lcom/qiniu/android/http/AsyncHttpClientMod;

.field private converter:Lcom/qiniu/android/http/UrlConverter;

.field private reporter:Lcom/qiniu/android/http/IReport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;)V
    .locals 8
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;
    .param p2, "reporter"    # Lcom/qiniu/android/http/IReport;

    .prologue
    const/4 v3, 0x0

    .line 30
    const/16 v4, 0xa

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;Ljava/lang/String;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;Ljava/lang/String;IILcom/qiniu/android/http/UrlConverter;)V
    .locals 8
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;
    .param p2, "reporter"    # Lcom/qiniu/android/http/IReport;
    .param p3, "backUpIp"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # I
    .param p5, "responseTimeout"    # I
    .param p6, "converter"    # Lcom/qiniu/android/http/UrlConverter;

    .prologue
    .line 35
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;Ljava/lang/String;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;Ljava/lang/String;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V
    .locals 5
    .param p1, "proxy"    # Lcom/qiniu/android/http/Proxy;
    .param p2, "reporter"    # Lcom/qiniu/android/http/IReport;
    .param p3, "backUpIp"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # I
    .param p5, "responseTimeout"    # I
    .param p6, "converter"    # Lcom/qiniu/android/http/UrlConverter;
    .param p7, "dns"    # Lcom/qiniu/android/dns/DnsManager;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/qiniu/android/http/HttpManager;->backUpIp:Ljava/lang/String;

    .line 41
    invoke-static {p7}, Lcom/qiniu/android/http/AsyncHttpClientMod;->create(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/http/AsyncHttpClientMod;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    .line 42
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    mul-int/lit16 v1, p4, 0x3e8

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setConnectTimeout(I)V

    .line 43
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    mul-int/lit16 v1, p5, 0x3e8

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setResponseTimeout(I)V

    .line 44
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/UserAgent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setUserAgent(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setEnableRedirects(Z)V

    .line 46
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    new-instance v1, Lcom/qiniu/android/http/UpRedirectHandler;

    invoke-direct {v1}, Lcom/qiniu/android/http/UpRedirectHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 47
    const-class v0, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    invoke-static {v0}, Lcom/qiniu/android/http/AsyncHttpClientMod;->blockRetryExceptionClass(Ljava/lang/Class;)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    iget-object v1, p1, Lcom/qiniu/android/http/Proxy;->hostAddress:Ljava/lang/String;

    iget v2, p1, Lcom/qiniu/android/http/Proxy;->port:I

    iget-object v3, p1, Lcom/qiniu/android/http/Proxy;->user:Ljava/lang/String;

    iget-object v4, p1, Lcom/qiniu/android/http/Proxy;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    .line 52
    if-nez p2, :cond_1

    .line 53
    new-instance v0, Lcom/qiniu/android/http/HttpManager$1;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/HttpManager$1;-><init>(Lcom/qiniu/android/http/HttpManager;)V

    iput-object v0, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    .line 71
    :cond_1
    iput-object p6, p0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/HttpManager;)Lcom/qiniu/android/http/AsyncHttpClientMod;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/HttpManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/HttpManager;)Lcom/qiniu/android/http/IReport;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/HttpManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    return-object v0
.end method

.method private postEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Z)V
    .locals 32
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p5, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p6, "forceIp"    # Z

    .prologue
    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/HttpManager;->wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;

    move-result-object v31

    .line 106
    .local v31, "wrapper":Lcom/qiniu/android/http/CompletionHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/qiniu/android/http/IReport;->appendStatHeaders([Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 108
    .local v6, "h":[Lorg/apache/http/Header;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v3, :cond_0

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->backUpIp:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v3, :cond_2

    .line 113
    :cond_1
    new-instance v9, Lcom/qiniu/android/http/ResponseHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, p4

    invoke-direct {v9, v0, v1, v2}, Lcom/qiniu/android/http/ResponseHandler;-><init>(Ljava/lang/String;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;)V

    .line 114
    .local v9, "handler":Lcom/qiniu/android/http/ResponseHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/qiniu/android/http/AsyncHttpClientMod;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 157
    .end local v9    # "handler":Lcom/qiniu/android/http/ResponseHandler;
    :goto_0
    return-void

    .line 117
    :cond_2
    move-object/from16 v30, p1

    .line 120
    .local v30, "url2":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v29

    .line 121
    .local v29, "uri":Ljava/net/URI;
    const/4 v13, 0x0

    .line 122
    .local v13, "ip":Ljava/lang/String;
    if-eqz p6, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qiniu/android/http/HttpManager;->backUpIp:Ljava/lang/String;

    .line 128
    :goto_1
    array-length v3, v6

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Lorg/apache/http/Header;

    move-object/from16 v20, v0

    .line 129
    .local v20, "h2":[Lorg/apache/http/Header;
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v6

    move-object/from16 v0, v20

    invoke-static {v6, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    const/16 v23, 0x0

    .line 133
    .local v23, "newUrl":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/net/URI;

    invoke-virtual/range {v29 .. v29}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/net/URI;->getPort()I

    move-result v14

    invoke-virtual/range {v29 .. v29}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v29 .. v29}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 137
    array-length v3, v6

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Host"

    invoke-virtual/range {v29 .. v29}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v20, v3

    .line 138
    move-object/from16 v18, v13

    .line 139
    .local v18, "ip2":Ljava/lang/String;
    new-instance v27, Lcom/qiniu/android/http/ResponseHandler;

    new-instance v14, Lcom/qiniu/android/http/HttpManager$2;

    move-object/from16 v15, p0

    move-object/from16 v16, v29

    move-object/from16 v17, p5

    move-object/from16 v19, p4

    move-object/from16 v21, p2

    invoke-direct/range {v14 .. v21}, Lcom/qiniu/android/http/HttpManager$2;-><init>(Lcom/qiniu/android/http/HttpManager;Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ProgressHandler;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/qiniu/android/http/HttpManager;->wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v3, v2}, Lcom/qiniu/android/http/ResponseHandler;-><init>(Ljava/lang/String;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;)V

    .line 156
    .local v27, "handler2":Lcom/qiniu/android/http/ResponseHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v20

    move-object/from16 v25, p2

    invoke-virtual/range {v21 .. v27}, Lcom/qiniu/android/http/AsyncHttpClientMod;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_0

    .line 125
    .end local v18    # "ip2":Ljava/lang/String;
    .end local v20    # "h2":[Lorg/apache/http/Header;
    .end local v23    # "newUrl":Ljava/lang/String;
    .end local v27    # "handler2":Lcom/qiniu/android/http/ResponseHandler;
    :cond_3
    invoke-virtual/range {v29 .. v29}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 134
    .restart local v20    # "h2":[Lorg/apache/http/Header;
    .restart local v23    # "newUrl":Ljava/lang/String;
    :catch_0
    move-exception v28

    .line 135
    .local v28, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/AssertionError;

    move-object/from16 v0, v28

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;
    .locals 1
    .param p1, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 198
    new-instance v0, Lcom/qiniu/android/http/HttpManager$3;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/http/HttpManager$3;-><init>(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/http/CompletionHandler;)V

    return-object v0
.end method


# virtual methods
.method public multipartPost(Ljava/lang/String;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/qiniu/android/http/PostArgs;
    .param p3, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p4, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p5, "c"    # Lcom/qiniu/android/http/CancellationHandler;
    .param p6, "forceIp"    # Z

    .prologue
    .line 171
    new-instance v13, Lcom/qiniu/android/http/MultipartBuilder;

    invoke-direct {v13}, Lcom/qiniu/android/http/MultipartBuilder;-><init>()V

    .line 172
    .local v13, "mbuilder":Lcom/qiniu/android/http/MultipartBuilder;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qiniu/android/http/PostArgs;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 173
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qiniu/android/http/PostArgs;->data:[B

    if-eqz v2, :cond_1

    .line 176
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/qiniu/android/http/PostArgs;->data:[B

    invoke-direct {v9, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 178
    .local v9, "buff":Ljava/io/ByteArrayInputStream;
    :try_start_0
    const-string v2, "file"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    invoke-virtual {v13, v2, v3, v9, v6}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v9    # "buff":Ljava/io/ByteArrayInputStream;
    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v13, v0, v1}, Lcom/qiniu/android/http/MultipartBuilder;->build(Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)Lcom/qiniu/android/http/ByteArrayEntity;

    move-result-object v4

    .line 193
    .local v4, "entity":Lcom/qiniu/android/http/ByteArrayEntity;
    iget-object v2, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/http/Header;

    invoke-interface {v2, v3}, Lcom/qiniu/android/http/IReport;->appendStatHeaders([Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, "h":[Lorg/apache/http/Header;
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    .line 194
    invoke-direct/range {v2 .. v8}, Lcom/qiniu/android/http/HttpManager;->postEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Z)V

    .line 195
    .end local v4    # "entity":Lcom/qiniu/android/http/ByteArrayEntity;
    .end local v5    # "h":[Lorg/apache/http/Header;
    :goto_2
    return-void

    .line 179
    .restart local v9    # "buff":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v10

    .line 180
    .local v10, "e":Ljava/io/IOException;
    invoke-static {v10}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 185
    .end local v9    # "buff":Ljava/io/ByteArrayInputStream;
    .end local v10    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    const-string v2, "file"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    const-string v7, "filename"

    invoke-virtual {v13, v2, v3, v6, v7}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 186
    :catch_1
    move-exception v10

    .line 187
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-static {v10}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public postData(Ljava/lang/String;[BII[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "headers"    # [Lorg/apache/http/Header;
    .param p6, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p7, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p8, "c"    # Lcom/qiniu/android/http/CancellationHandler;
    .param p9, "forceIp"    # Z

    .prologue
    .line 94
    new-instance v0, Lcom/qiniu/android/http/ByteArrayEntity;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p6

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/ByteArrayEntity;-><init>([BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .local v0, "entity":Lcom/qiniu/android/http/ByteArrayEntity;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p9

    .line 95
    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/http/HttpManager;->postEntity(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Z)V

    .line 96
    return-void
.end method

.method public postData(Ljava/lang/String;[B[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p5, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p6, "c"    # Lcom/qiniu/android/http/CancellationHandler;
    .param p7, "forceIp"    # Z

    .prologue
    .line 100
    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/qiniu/android/http/HttpManager;->postData(Ljava/lang/String;[BII[Lorg/apache/http/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;Z)V

    .line 101
    return-void
.end method
