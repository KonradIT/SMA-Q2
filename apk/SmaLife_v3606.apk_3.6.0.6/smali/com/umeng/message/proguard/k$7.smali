.class Lcom/umeng/message/proguard/k$7;
.super Lcom/umeng/message/proguard/k$b;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/proguard/k;->a(Ljava/lang/Appendable;)Lcom/umeng/message/proguard/k;
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
.field final synthetic a:Ljava/io/BufferedReader;

.field final synthetic b:Ljava/lang/Appendable;

.field final synthetic c:Lcom/umeng/message/proguard/k;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V
    .locals 0

    .prologue
    .line 1910
    iput-object p1, p0, Lcom/umeng/message/proguard/k$7;->c:Lcom/umeng/message/proguard/k;

    iput-object p4, p0, Lcom/umeng/message/proguard/k$7;->a:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/umeng/message/proguard/k$7;->b:Ljava/lang/Appendable;

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
    .line 1914
    iget-object v0, p0, Lcom/umeng/message/proguard/k$7;->c:Lcom/umeng/message/proguard/k;

    invoke-static {v0}, Lcom/umeng/message/proguard/k;->a(Lcom/umeng/message/proguard/k;)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1916
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/proguard/k$7;->a:Ljava/io/BufferedReader;

    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1917
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 1918
    iget-object v2, p0, Lcom/umeng/message/proguard/k$7;->b:Ljava/lang/Appendable;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1919
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k$7;->c:Lcom/umeng/message/proguard/k;

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
    .line 1910
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k$7;->a()Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method
