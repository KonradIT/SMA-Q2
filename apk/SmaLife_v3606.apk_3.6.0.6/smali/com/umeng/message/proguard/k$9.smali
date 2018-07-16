.class Lcom/umeng/message/proguard/k$9;
.super Lcom/umeng/message/proguard/k$b;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/proguard/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/message/proguard/k$b",
        "<",
        "Lcom/umeng/message/proguard/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lcom/umeng/message/proguard/k;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 2521
    iput-object p1, p0, Lcom/umeng/message/proguard/k$9;->c:Lcom/umeng/message/proguard/k;

    iput-object p4, p0, Lcom/umeng/message/proguard/k$9;->a:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/umeng/message/proguard/k$9;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/umeng/message/proguard/k$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/message/proguard/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/umeng/message/proguard/k$9;->c:Lcom/umeng/message/proguard/k;

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Lcom/umeng/message/proguard/k;)I

    move-result v0

    new-array v0, v0, [B

    .line 2527
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/proguard/k$9;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2528
    iget-object v2, p0, Lcom/umeng/message/proguard/k$9;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2529
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k$9;->c:Lcom/umeng/message/proguard/k;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2521
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k$9;->a()Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method
