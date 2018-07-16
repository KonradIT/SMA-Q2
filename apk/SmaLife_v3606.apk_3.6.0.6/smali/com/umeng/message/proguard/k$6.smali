.class Lcom/umeng/message/proguard/k$6;
.super Lcom/umeng/message/proguard/k$b;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/proguard/k;->a(Ljava/io/File;)Lcom/umeng/message/proguard/k;
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
.field final synthetic a:Ljava/io/OutputStream;

.field final synthetic b:Lcom/umeng/message/proguard/k;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/k;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/umeng/message/proguard/k$6;->b:Lcom/umeng/message/proguard/k;

    iput-object p4, p0, Lcom/umeng/message/proguard/k$6;->a:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/umeng/message/proguard/k$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/message/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/umeng/message/proguard/k$6;->b:Lcom/umeng/message/proguard/k;

    iget-object v1, p0, Lcom/umeng/message/proguard/k$6;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/k;->a(Ljava/io/OutputStream;)Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/proguard/k$e;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1863
    invoke-virtual {p0}, Lcom/umeng/message/proguard/k$6;->a()Lcom/umeng/message/proguard/k;

    move-result-object v0

    return-object v0
.end method
