.class public Lcom/umeng/message/proguard/k;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/k$g;,
        Lcom/umeng/message/proguard/k$d;,
        Lcom/umeng/message/proguard/k$b;,
        Lcom/umeng/message/proguard/k$f;,
        Lcom/umeng/message/proguard/k$e;,
        Lcom/umeng/message/proguard/k$a;,
        Lcom/umeng/message/proguard/k$c;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "POST"

.field public static final B:Ljava/lang/String; = "PUT"

.field public static final C:Ljava/lang/String; = "TRACE"

.field public static final D:Ljava/lang/String; = "charset"

.field private static final E:Ljava/lang/String; = "00content0boundary00"

.field private static final F:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final G:Ljava/lang/String; = "\r\n"

.field private static final H:[Ljava/lang/String;

.field private static I:Ljavax/net/ssl/SSLSocketFactory; = null

.field private static J:Ljavax/net/ssl/HostnameVerifier; = null

.field private static K:Lcom/umeng/message/proguard/k$c; = null

.field public static final a:Ljava/lang/String; = "UTF-8"

.field public static final b:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final c:Ljava/lang/String; = "application/json"

.field public static final d:Ljava/lang/String; = "gzip"

.field public static final e:Ljava/lang/String; = "Accept"

.field public static final f:Ljava/lang/String; = "Accept-Charset"

.field public static final g:Ljava/lang/String; = "Accept-Encoding"

.field public static final h:Ljava/lang/String; = "Authorization"

.field public static final i:Ljava/lang/String; = "Cache-Control"

.field public static final j:Ljava/lang/String; = "Content-Encoding"

.field public static final k:Ljava/lang/String; = "Content-Length"

.field public static final l:Ljava/lang/String; = "Content-Type"

.field public static final m:Ljava/lang/String; = "Date"

.field public static final n:Ljava/lang/String; = "ETag"

.field public static final o:Ljava/lang/String; = "Expires"

.field public static final p:Ljava/lang/String; = "If-None-Match"

.field public static final q:Ljava/lang/String; = "Last-Modified"

.field public static final r:Ljava/lang/String; = "Location"

.field public static final s:Ljava/lang/String; = "Proxy-Authorization"

.field public static final t:Ljava/lang/String; = "Referer"

.field public static final u:Ljava/lang/String; = "Server"

.field public static final v:Ljava/lang/String; = "User-Agent"

.field public static final w:Ljava/lang/String; = "DELETE"

.field public static final x:Ljava/lang/String; = "GET"

.field public static final y:Ljava/lang/String; = "HEAD"

.field public static final z:Ljava/lang/String; = "OPTIONS"


# instance fields
.field private L:Ljava/net/HttpURLConnection;

.field private final M:Ljava/net/URL;

.field private final N:Ljava/lang/String;

.field private O:Lcom/umeng/message/proguard/k$g;

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:I

.field private U:Ljava/lang/String;

.field private V:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/message/proguard/k;->H:[Ljava/lang/String;

    .line 369
    sget-object v0, Lcom/umeng/message/proguard/k$c;->a:Lcom/umeng/message/proguard/k$c;

    sput-object v0, Lcom/umeng/message/proguard/k;->K:Lcom/umeng/message/proguard/k$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/k;->L:Ljava/net/HttpURLConnection;

    .line 1374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/k;->R:Z

    .line 1376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/k;->S:Z

    .line 1378
    const/16 v0, 0x2000

    iput v0, p0, Lcom/umeng/message/proguard/k;->T:I

    .line 1394
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/k;->M:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    iput-object p2, p0, Lcom/umeng/message/proguard/k;->N:Ljava/lang/String;

    .line 1399
    return-void

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/k;->L:Ljava/net/HttpURLConnection;

    .line 1374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/k;->R:Z

    .line 1376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/k;->S:Z

    .line 1378
    const/16 v0, 0x2000

    iput v0, p0, Lcom/umeng/message/proguard/k;->T:I

    .line 1410
    iput-object p1, p0, Lcom/umeng/message/proguard/k;->M:Ljava/net/URL;

    .line 1411
    iput-object p2, p0, Lcom/umeng/message/proguard/k;->N:Ljava/lang/String;

    .line 1412
    return-void
.end method

.method private static R()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 269
    sget-object v0, Lcom/umeng/message/proguard/k;->I:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/umeng/message/proguard/k$1;

    invoke-direct {v2}, Lcom/umeng/message/proguard/k$1;-><init>()V

    aput-object v2, v0, v1

    .line 285
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 286
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 287
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/k;->I:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/k;->I:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Security exception configuring SSL context"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 292
    new-instance v0, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v0, v1}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method private static S()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/umeng/message/proguard/k;->J:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/umeng/message/proguard/k$3;

    invoke-direct {v0}, Lcom/umeng/message/proguard/k$3;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/k;->J:Ljavax/net/ssl/HostnameVerifier;

    .line 308
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/k;->J:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private T()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 1415
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/umeng/message/proguard/k;->U:Ljava/lang/String;

    iget v4, p0, Lcom/umeng/message/proguard/k;->V:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method private U()Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1421
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->U:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1422
    sget-object v0, Lcom/umeng/message/proguard/k;->K:Lcom/umeng/message/proguard/k$c;

    iget-object v1, p0, Lcom/umeng/message/proguard/k;->M:Ljava/net/URL;

    invoke-direct {p0}, Lcom/umeng/message/proguard/k;->T()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/umeng/message/proguard/k$c;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1425
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/proguard/k;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1426
    return-object v0

    .line 1424
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/k;->K:Lcom/umeng/message/proguard/k$c;

    iget-object v1, p0, Lcom/umeng/message/proguard/k;->M:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/umeng/message/proguard/k$c;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic a(Lcom/umeng/message/proguard/k;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/umeng/message/proguard/k;->T:I

    return v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .prologue
    .line 948
    invoke-static {p0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 949
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 969
    invoke-static {p0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 970
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/net/URL;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 929
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 797
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 803
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 804
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 808
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 809
    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 810
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 811
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v3, "%2B"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 814
    :cond_1
    return-object v0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 815
    :catch_1
    move-exception v0

    .line 816
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Parsing URI failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 818
    new-instance v0, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v0, v1}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3d

    .line 833
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-object v0

    .line 837
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 839
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 840
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 844
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 845
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 846
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 848
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 852
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 855
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 857
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_2

    .line 859
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 862
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3d

    .line 877
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-object v0

    .line 881
    :cond_1
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an even number of parameter names/values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 888
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 891
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    const/4 v0, 0x1

    aget-object v0, p1, v0

    .line 894
    if-eqz v0, :cond_3

    .line 895
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 897
    :cond_3
    const/4 v0, 0x2

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 898
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 899
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 901
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    .line 902
    if-eqz v2, :cond_4

    .line 903
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 897
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 906
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 317
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    return-object p1
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 1308
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1309
    const-string v1, "http.proxyPort"

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/k;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1310
    const-string v1, "https.proxyPort"

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/k;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1311
    return-void
.end method

.method public static a(Lcom/umeng/message/proguard/k$c;)V
    .locals 1

    .prologue
    .line 375
    if-nez p0, :cond_0

    .line 376
    sget-object v0, Lcom/umeng/message/proguard/k$c;->a:Lcom/umeng/message/proguard/k$c;

    sput-object v0, Lcom/umeng/message/proguard/k;->K:Lcom/umeng/message/proguard/k$c;

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    sput-object p0, Lcom/umeng/message/proguard/k;->K:Lcom/umeng/message/proguard/k$c;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1295
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Lcom/umeng/message/proguard/k;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1296
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Lcom/umeng/message/proguard/k;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1297
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 1283
    const-string v0, "http.keepAlive"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/k;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1284
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1323
    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    .line 1326
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1327
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1328
    :cond_0
    aget-object v0, p0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string v0, "http.nonProxyHosts"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/k;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1332
    :goto_1
    return-void

    .line 1331
    :cond_1
    const-string v0, "http.nonProxyHosts"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/k;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static b(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 918
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .prologue
    .line 1012
    invoke-static {p0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->c(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1033
    invoke-static {p0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->c(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/net/URL;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x3f

    const/16 v3, 0x26

    .line 325
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 326
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 327
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 328
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    :goto_0
    return-object p1

    .line 329
    :cond_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    .line 330
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static c(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 982
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .prologue
    .line 1076
    invoke-static {p0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->d(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static varargs c(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1097
    invoke-static {p0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->d(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/net/URL;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1057
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1046
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .prologue
    .line 1140
    invoke-static {p0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1161
    invoke-static {p0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/net/URL;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1121
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .prologue
    .line 1204
    invoke-static {p0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->f(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static varargs e(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1225
    invoke-static {p0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/proguard/k;->f(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/net/URL;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1185
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1174
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/net/URL;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1249
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1238
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(Ljava/net/URL;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1272
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1261
    new-instance v0, Lcom/umeng/message/proguard/k;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/proguard/k;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1345
    if-eqz p1, :cond_0

    .line 1346
    new-instance v0, Lcom/umeng/message/proguard/k$4;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/proguard/k$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :goto_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1353
    :cond_0
    new-instance v0, Lcom/umeng/message/proguard/k$5;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/k$5;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {p0}, Lcom/umeng/message/proguard/k;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 264
    :goto_0
    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    goto :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2324
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2333
    const-string v0, "ETag"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()J
    .locals 2

    .prologue
    .line 2342
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public D()J
    .locals 2

    .prologue
    .line 2351
    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2360
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2459
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 2468
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public H()Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2508
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->t(Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method protected I()Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    if-nez v0, :cond_0

    .line 2578
    :goto_0
    return-object p0

    .line 2567
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/message/proguard/k;->P:Z

    if-eqz v0, :cond_1

    .line 2568
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/k$g;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/k$g;

    .line 2569
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/message/proguard/k;->R:Z

    if-eqz v0, :cond_2

    .line 2571
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/k$g;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2577
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    goto :goto_0

    .line 2576
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/k$g;->close()V

    goto :goto_1

    .line 2572
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected J()Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2590
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->I()Lcom/umeng/message/proguard/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2591
    :catch_0
    move-exception v0

    .line 2592
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method protected K()Lcom/umeng/message/proguard/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    if-eqz v0, :cond_0

    .line 2610
    :goto_0
    return-object p0

    .line 2605
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2607
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    .line 2606
    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2608
    new-instance v1, Lcom/umeng/message/proguard/k$g;

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/umeng/message/proguard/k;->T:I

    invoke-direct {v1, v2, v0, v3}, Lcom/umeng/message/proguard/k$g;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    goto :goto_0
.end method

.method protected L()Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2620
    iget-boolean v0, p0, Lcom/umeng/message/proguard/k;->P:Z

    if-nez v0, :cond_0

    .line 2621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/k;->P:Z

    .line 2622
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->r(Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/k;->K()Lcom/umeng/message/proguard/k;

    .line 2623
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/k$g;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/k$g;

    .line 2626
    :goto_0
    return-object p0

    .line 2625
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/k$g;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/k$g;

    goto :goto_0
.end method

.method public M()Ljava/io/OutputStreamWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2939
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->K()Lcom/umeng/message/proguard/k;

    .line 2940
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    iget-object v2, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-static {v2}, Lcom/umeng/message/proguard/k$g;->a(Lcom/umeng/message/proguard/k$g;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2941
    :catch_0
    move-exception v0

    .line 2942
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public N()Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 3065
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3066
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 3067
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 3068
    invoke-static {}, Lcom/umeng/message/proguard/k;->R()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 3069
    :cond_0
    return-object p0
.end method

.method public O()Lcom/umeng/message/proguard/k;
    .locals 2

    .prologue
    .line 3082
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3083
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 3084
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 3085
    invoke-static {}, Lcom/umeng/message/proguard/k;->S()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 3086
    :cond_0
    return-object p0
.end method

.method public P()Ljava/net/URL;
    .locals 1

    .prologue
    .line 3095
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3104
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2087
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->J()Lcom/umeng/message/proguard/k;

    .line 2088
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2059
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->J()Lcom/umeng/message/proguard/k;

    .line 2060
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2414
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 2415
    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/umeng/message/proguard/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1859
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v2, p0, Lcom/umeng/message/proguard/k;->T:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    new-instance v1, Lcom/umeng/message/proguard/k$6;

    iget-boolean v2, p0, Lcom/umeng/message/proguard/k;->R:Z

    invoke-direct {v1, p0, v0, v2, v0}, Lcom/umeng/message/proguard/k$6;-><init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    .line 1869
    invoke-virtual {v1}, Lcom/umeng/message/proguard/k$6;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/k;

    return-object v0

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/io/InputStream;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2877
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->K()Lcom/umeng/message/proguard/k;

    .line 2878
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2882
    return-object p0

    .line 2879
    :catch_0
    move-exception v0

    .line 2880
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method protected a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2521
    new-instance v0, Lcom/umeng/message/proguard/k$9;

    iget-boolean v3, p0, Lcom/umeng/message/proguard/k;->R:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/proguard/k$9;-><init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2531
    invoke-virtual {v0}, Lcom/umeng/message/proguard/k$9;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/k;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1882
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->q()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1883
    :catch_0
    move-exception v0

    .line 1884
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/io/PrintStream;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1897
    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Lcom/umeng/message/proguard/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2896
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->K()Lcom/umeng/message/proguard/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    iget-object v2, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    .line 2901
    invoke-static {v2}, Lcom/umeng/message/proguard/k$g;->a(Lcom/umeng/message/proguard/k$g;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2902
    new-instance v1, Lcom/umeng/message/proguard/k$2;

    invoke-direct {v1, p0, v0, p1, v0}, Lcom/umeng/message/proguard/k$2;-><init>(Lcom/umeng/message/proguard/k;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    .line 2908
    invoke-virtual {v1}, Lcom/umeng/message/proguard/k$2;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/k;

    return-object v0

    .line 2897
    :catch_0
    move-exception v0

    .line 2898
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method protected a(Ljava/io/Reader;Ljava/io/Writer;)Lcom/umeng/message/proguard/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2544
    new-instance v0, Lcom/umeng/message/proguard/k$10;

    iget-boolean v3, p0, Lcom/umeng/message/proguard/k;->R:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/proguard/k$10;-><init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    .line 2554
    invoke-virtual {v0}, Lcom/umeng/message/proguard/k$10;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/k;

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/umeng/message/proguard/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1934
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->t()Ljava/io/BufferedReader;

    move-result-object v2

    .line 1935
    new-instance v0, Lcom/umeng/message/proguard/k$8;

    iget-boolean v3, p0, Lcom/umeng/message/proguard/k;->R:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/proguard/k$8;-><init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    .line 1941
    invoke-virtual {v0}, Lcom/umeng/message/proguard/k$8;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/k;

    return-object v0
.end method

.method public a(Ljava/lang/Appendable;)Lcom/umeng/message/proguard/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->t()Ljava/io/BufferedReader;

    move-result-object v2

    .line 1910
    new-instance v0, Lcom/umeng/message/proguard/k$7;

    iget-boolean v3, p0, Lcom/umeng/message/proguard/k;->R:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/proguard/k$7;-><init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    .line 1923
    invoke-virtual {v0}, Lcom/umeng/message/proguard/k$7;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/k;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 3003
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3020
    iget-boolean v0, p0, Lcom/umeng/message/proguard/k;->Q:Z

    if-nez v0, :cond_3

    move v0, v1

    .line 3021
    :goto_0
    if-eqz v0, :cond_0

    .line 3022
    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v2, p3}, Lcom/umeng/message/proguard/k;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    .line 3023
    iput-boolean v1, p0, Lcom/umeng/message/proguard/k;->Q:Z

    .line 3025
    :cond_0
    invoke-static {p3}, Lcom/umeng/message/proguard/k;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3027
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->K()Lcom/umeng/message/proguard/k;

    .line 3028
    if-nez v0, :cond_1

    .line 3029
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/k$g;->write(I)V

    .line 3030
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/k$g;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/k$g;

    .line 3031
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/k$g;->write(I)V

    .line 3032
    if-eqz p2, :cond_2

    .line 3033
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/k$g;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/k$g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3037
    :cond_2
    return-object p0

    .line 3020
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 3034
    :catch_0
    move-exception v0

    .line 3035
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2798
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1986
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2763
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2736
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2654
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2655
    if-eqz p2, :cond_0

    .line 2656
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2658
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/message/proguard/k;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    .line 2659
    if-eqz p3, :cond_1

    .line 2660
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p3}, Lcom/umeng/message/proguard/k;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    .line 2661
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->i(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2781
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2785
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0

    .line 2782
    :catch_0
    move-exception v0

    .line 2783
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2816
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->L()Lcom/umeng/message/proguard/k;

    .line 2817
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    .line 2818
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-virtual {p0, p4, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2822
    return-object p0

    .line 2819
    :catch_0
    move-exception v0

    .line 2820
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2703
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->L()Lcom/umeng/message/proguard/k;

    .line 2704
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    .line 2705
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-virtual {v0, p4}, Lcom/umeng/message/proguard/k$g;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/k$g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    return-object p0

    .line 2706
    :catch_0
    move-exception v0

    .line 2707
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .prologue
    .line 2010
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2987
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .prologue
    .line 1997
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1998
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1999
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/util/Map$Entry;)Lcom/umeng/message/proguard/k;

    goto :goto_0

    .line 2000
    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 3050
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3051
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3052
    invoke-virtual {p0, v0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    goto :goto_0

    .line 3053
    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1498
    return-object p0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1703
    return-object p0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1716
    invoke-virtual {p0, p2}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1717
    return-object p0
.end method

.method public a([B)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2863
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/io/InputStream;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->L:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1444
    invoke-direct {p0}, Lcom/umeng/message/proguard/k;->U()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/k;->L:Ljava/net/HttpURLConnection;

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->L:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public b(I)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1593
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1594
    return-object p0
.end method

.method public b(Ljava/io/File;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2848
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2852
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/io/InputStream;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0

    .line 2849
    :catch_0
    move-exception v0

    .line 2850
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public b(Ljava/lang/String;I)Lcom/umeng/message/proguard/k;
    .locals 2

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->L:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection has already been created. This method must be called before reading or writing to the request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3119
    :cond_0
    iput-object p1, p0, Lcom/umeng/message/proguard/k;->U:Ljava/lang/String;

    .line 3120
    iput p2, p0, Lcom/umeng/message/proguard/k;->V:I

    .line 3121
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Number;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2722
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2686
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map$Entry;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2971
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/umeng/message/proguard/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2957
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/umeng/message/proguard/k;
    .locals 0

    .prologue
    .line 1458
    iput-boolean p1, p0, Lcom/umeng/message/proguard/k;->R:Z

    .line 1459
    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1673
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->m()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1675
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->q()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;

    .line 1676
    invoke-static {p1}, Lcom/umeng/message/proguard/k;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/umeng/message/proguard/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/umeng/message/proguard/k;->R:Z

    return v0
.end method

.method public c()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1480
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->I()Lcom/umeng/message/proguard/k;

    .line 1481
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public c(I)Lcom/umeng/message/proguard/k;
    .locals 2

    .prologue
    .line 1609
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1611
    :cond_0
    iput p1, p0, Lcom/umeng/message/proguard/k;->T:I

    .line 1612
    return-object p0
.end method

.method public c(Z)Lcom/umeng/message/proguard/k;
    .locals 0

    .prologue
    .line 1645
    iput-boolean p1, p0, Lcom/umeng/message/proguard/k;->S:Z

    .line 1646
    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1805
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->r()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/umeng/message/proguard/k;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x22

    const/4 v2, 0x0

    const/16 v6, 0x3b

    const/4 v5, -0x1

    .line 2186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 2218
    :cond_1
    :goto_0
    return-object v0

    .line 2189
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2190
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 2191
    if-eqz v3, :cond_3

    if-ne v3, v1, :cond_4

    :cond_3
    move-object v0, v2

    .line 2192
    goto :goto_0

    .line 2194
    :cond_4
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2195
    if-ne v0, v5, :cond_8

    move v0, v3

    move v3, v1

    .line 2198
    :goto_1
    if-ge v0, v3, :cond_7

    .line 2199
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2200
    if-eq v4, v5, :cond_5

    if-ge v4, v3, :cond_5

    .line 2201
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2202
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2204
    if-eqz v4, :cond_5

    .line 2205
    const/4 v1, 0x2

    if-le v4, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_1

    add-int/lit8 v1, v4, -0x1

    .line 2206
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_1

    .line 2207
    const/4 v1, 0x1

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2212
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 2213
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2214
    if-ne v0, v5, :cond_6

    move v0, v1

    :cond_6
    move v8, v0

    move v0, v3

    move v3, v8

    .line 2216
    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 2218
    goto :goto_0

    :cond_8
    move v8, v0

    move v0, v3

    move v3, v8

    goto :goto_1
.end method

.method public d(I)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1951
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1952
    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 3

    .prologue
    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/k$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->o(Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2257
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2258
    return-object p0
.end method

.method public d(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1834
    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/k;->c(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v1

    iget v2, p0, Lcom/umeng/message/proguard/k;->T:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method public d()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1508
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1963
    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 3

    .prologue
    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/k$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->p(Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)Lcom/umeng/message/proguard/k;
    .locals 0

    .prologue
    .line 3132
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    invoke-static {p1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 3133
    return-object p0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->J()Lcom/umeng/message/proguard/k;

    .line 2022
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1518
    const/16 v0, 0xc9

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2045
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(I)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2488
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 2489
    return-object p0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 3

    .prologue
    .line 2446
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2447
    const-string v0, "; charset="

    .line 2448
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    .line 2450
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1528
    const/16 v0, 0x1f4

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2072
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2639
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1538
    const/16 v0, 0x190

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2672
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1548
    const/16 v0, 0x194

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2098
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->u()Ljava/util/Map;

    move-result-object v0

    .line 2099
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2100
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/k;->H:[Ljava/lang/String;

    .line 2106
    :goto_0
    return-object v0

    .line 2102
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2103
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 2106
    :cond_2
    sget-object v0, Lcom/umeng/message/proguard/k;->H:[Ljava/lang/String;

    goto :goto_0
.end method

.method public i(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2923
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->K()Lcom/umeng/message/proguard/k;

    .line 2924
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->O:Lcom/umeng/message/proguard/k$g;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/k$g;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/k$g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2928
    return-object p0

    .line 2925
    :catch_0
    move-exception v0

    .line 2926
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2835
    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/k;->i(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/k;->i(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/message/proguard/k;->i(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/k;->i(Ljava/lang/CharSequence;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2130
    invoke-virtual {p0, p1}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->j(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1558
    const/16 v0, 0x130

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1569
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->I()Lcom/umeng/message/proguard/k;

    .line 1570
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1571
    :catch_0
    move-exception v0

    .line 1572
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method protected j(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x22

    const/16 v8, 0x3b

    const/4 v7, -0x1

    .line 2140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2141
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 2175
    :goto_0
    return-object v0

    .line 2143
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2144
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 2145
    if-eqz v3, :cond_2

    if-ne v3, v1, :cond_3

    .line 2146
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2148
    :cond_3
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2149
    if-ne v0, v7, :cond_4

    move v0, v1

    .line 2152
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2153
    :cond_5
    :goto_1
    if-ge v3, v0, :cond_8

    .line 2154
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2155
    if-eq v4, v7, :cond_6

    if-ge v4, v0, :cond_6

    .line 2156
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2157
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 2158
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2159
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 2160
    if-eqz v5, :cond_6

    .line 2161
    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v9, v6, :cond_7

    add-int/lit8 v6, v5, -0x1

    .line 2162
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v9, v6, :cond_7

    .line 2163
    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    :cond_6
    :goto_2
    add-int/lit8 v3, v0, 0x1

    .line 2170
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2171
    if-ne v0, v7, :cond_5

    move v0, v1

    .line 2172
    goto :goto_1

    .line 2165
    :cond_7
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move-object v0, v2

    .line 2175
    goto :goto_0
.end method

.method public k()Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1583
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2237
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 1623
    iget v0, p0, Lcom/umeng/message/proguard/k;->T:I

    return v0
.end method

.method public l(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2247
    const-string v0, "Referer"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2268
    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .prologue
    .line 1655
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->G()I

    move-result v1

    .line 1656
    if-lez v1, :cond_0

    .line 1657
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1659
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0
.end method

.method public n(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2288
    const-string v0, "Accept-Charset"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1690
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2370
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->G()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2380
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public p()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1738
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->m()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1740
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->q()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/umeng/message/proguard/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 1741
    :catch_0
    move-exception v0

    .line 1742
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public q(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2425
    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/io/BufferedInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1755
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->r()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/umeng/message/proguard/k;->T:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public r(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/proguard/k;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1766
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->c()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_2

    .line 1768
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1782
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/umeng/message/proguard/k;->S:Z

    if-eqz v1, :cond_1

    const-string v1, "gzip"

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1786
    :cond_1
    :goto_1
    return-object v0

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1773
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1774
    if-nez v0, :cond_0

    .line 1776
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1777
    :catch_1
    move-exception v0

    .line 1778
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1786
    :cond_3
    :try_start_2
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_1

    .line 1787
    :catch_2
    move-exception v0

    .line 1788
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public s(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2478
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->f(I)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/io/InputStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->c(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/String;)Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2499
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/proguard/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->d(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->P()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;
        }
    .end annotation

    .prologue
    .line 2032
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->J()Lcom/umeng/message/proguard/k;

    .line 2033
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2227
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/umeng/message/proguard/k;
    .locals 1

    .prologue
    .line 2278
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->m(Ljava/lang/String;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2297
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2306
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 2315
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/k;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
