.class Lcom/umeng/message/proguard/k$8;
.super Lcom/umeng/message/proguard/k$b;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/proguard/k;->a(Ljava/io/Writer;)Lcom/umeng/message/proguard/k;
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

.field final synthetic b:Ljava/io/Writer;

.field final synthetic c:Lcom/umeng/message/proguard/k;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/umeng/message/proguard/k$8;->c:Lcom/umeng/message/proguard/k;

    iput-object p4, p0, Lcom/umeng/message/proguard/k$8;->a:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/umeng/message/proguard/k$8;->b:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lcom/umeng/message/proguard/k$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/message/proguard/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/umeng/message/proguard/k$8;->c:Lcom/umeng/message/proguard/k;

    iget-object v1, p0, Lcom/umeng/message/proguard/k$8;->a:Ljava/io/BufferedReader;

    iget-object v2, p0, Lcom/umeng/message/proguard/k$8;->b:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/proguard/k;->a(Ljava/io/Reader;Ljava/io/Writer;)Lcom/umeng/message/proguard/k;

    move-result-object v0

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
    .line 1935
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k$8;->a()Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method
