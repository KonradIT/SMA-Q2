.class Lorg/android/agoo/net/channel/chunked/a$2;
.super Ljava/lang/Object;
.source "AbsChunkedChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/net/channel/chunked/a;->connect(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JLorg/android/agoo/net/channel/IPushHandler;Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/android/agoo/net/channel/chunked/a;


# direct methods
.method constructor <init>(Lorg/android/agoo/net/channel/chunked/a;J)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lorg/android/agoo/net/channel/chunked/a$2;->b:Lorg/android/agoo/net/channel/chunked/a;

    iput-wide p2, p0, Lorg/android/agoo/net/channel/chunked/a$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 148
    :try_start_0
    iget-wide v0, p0, Lorg/android/agoo/net/channel/chunked/a$2;->a:J

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$2;->b:Lorg/android/agoo/net/channel/chunked/a;

    iget-object v0, v0, Lorg/android/agoo/net/channel/chunked/a;->a:Lorg/android/agoo/net/channel/ChannelState;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->a:Lorg/android/agoo/net/channel/ChannelState;

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$2;->b:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/chunked/a;->hasCallError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$2;->b:Lorg/android/agoo/net/channel/chunked/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/channel/chunked/a;->callError(Z)V

    .line 154
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$2;->b:Lorg/android/agoo/net/channel/chunked/a;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError;->r:Lorg/android/agoo/net/channel/ChannelError;

    new-instance v2, Lorg/apache/http/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectId:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/android/agoo/net/channel/chunked/a$2;->b:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v4}, Lorg/android/agoo/net/channel/chunked/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] http Status code=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/android/agoo/net/channel/ChannelError;->r:Lorg/android/agoo/net/channel/ChannelError;

    invoke-virtual {v4}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/net/channel/chunked/a;->a(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/Throwable;)V

    .line 160
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$2;->b:Lorg/android/agoo/net/channel/chunked/a;

    invoke-static {v0}, Lorg/android/agoo/net/channel/chunked/a;->a(Lorg/android/agoo/net/channel/chunked/a;)V

    .line 161
    iget-object v0, p0, Lorg/android/agoo/net/channel/chunked/a$2;->b:Lorg/android/agoo/net/channel/chunked/a;

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/chunked/a;->g()V

    .line 165
    :cond_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
