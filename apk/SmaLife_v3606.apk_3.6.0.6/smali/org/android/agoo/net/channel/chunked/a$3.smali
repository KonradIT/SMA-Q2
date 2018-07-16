.class Lorg/android/agoo/net/channel/chunked/a$3;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/net/channel/chunked/a;->asyncDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/net/channel/chunked/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/channel/chunked/a;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lorg/android/agoo/net/channel/chunked/a$3;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$3;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/chunked/a;->f()V

    .line 207
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$3;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/chunked/a;->g()V

    .line 208
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http chunked connect["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/net/channel/chunked/a$3;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/chunked/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection disconnecting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$3;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/chunked/a;->c()V

    .line 211
    const-string v0, "HttpChunked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http chunked connect["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/net/channel/chunked/a$3;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v2}, Lorg/android/agoo/net/channel/chunked/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] connection disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$3;->a:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/chunked/a;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method
