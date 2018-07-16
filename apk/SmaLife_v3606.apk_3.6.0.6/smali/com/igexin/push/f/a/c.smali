.class public Lcom/igexin/push/f/a/c;
.super Lcom/igexin/a/a/d/d;


# instance fields
.field public a:Lcom/igexin/push/f/a/b;

.field public b:Lorg/apache/http/client/methods/HttpRequestBase;

.field public c:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lcom/igexin/push/f/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/a/a/d/d;-><init>(I)V

    iput-object p1, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 6

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->a_()V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v0, v0, Lcom/igexin/push/f/a/b;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/f/a/c;->c:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v0, v0, Lcom/igexin/push/f/a/b;->f:[B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v0, v0, Lcom/igexin/push/f/a/b;->g:Ljava/io/InputStream;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v1, v1, Lcom/igexin/push/f/a/b;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/igexin/push/f/a/c;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v1, p0, Lcom/igexin/push/f/a/c;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/f/a/b;->a([B)V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v1, v1, Lcom/igexin/push/f/a/b;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/igexin/push/f/a/c;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v1, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v1, v1, Lcom/igexin/push/f/a/b;->g:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v1, v1, Lcom/igexin/push/f/a/b;->g:Ljava/io/InputStream;

    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v3, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-wide v4, v3, Lcom/igexin/push/f/a/b;->h:J

    invoke-direct {v2, v1, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_2
    iget-object v1, p0, Lcom/igexin/push/f/a/c;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v2, v2, Lcom/igexin/push/f/a/b;->f:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v3, p0, Lcom/igexin/push/f/a/c;->a:Lcom/igexin/push/f/a/b;

    iget-object v3, v3, Lcom/igexin/push/f/a/b;->f:[B

    array-length v3, v3

    int-to-long v4, v3

    invoke-direct {v2, v1, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http response code is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " try times = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()I
    .locals 1

    const v0, -0x7ffffff6

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/f/a/c;->z:Z

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->f()V

    iget-object v0, p0, Lcom/igexin/push/f/a/c;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/f/a/c;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/f/a/c;->c:Lorg/apache/http/client/HttpClient;

    return-void
.end method
