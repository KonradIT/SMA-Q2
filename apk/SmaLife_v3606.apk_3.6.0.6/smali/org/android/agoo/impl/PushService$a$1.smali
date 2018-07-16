.class Lorg/android/agoo/impl/PushService$a$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/impl/PushService$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/PushService$a;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/PushService$a;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 731
    :try_start_0
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected running tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService$a;->b(Lorg/android/agoo/impl/PushService$a;)Lorg/android/agoo/service/SendMessage;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->a(Lorg/android/agoo/impl/PushService$a;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/android/agoo/service/SendMessage;->doSend(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    const-string v0, "PushService"

    const-string v1, "send finish. close this connection"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v0, v4}, Lorg/android/agoo/impl/PushService$a;->a(Lorg/android/agoo/impl/PushService$a;Lorg/android/agoo/service/SendMessage;)Lorg/android/agoo/service/SendMessage;

    .line 740
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$a;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->e(Lorg/android/agoo/impl/PushService$a;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 742
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    :try_start_1
    const-string v1, "PushService"

    const-string v2, "send error"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/aK;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 736
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService$a;->d(Lorg/android/agoo/impl/PushService$a;)Lcom/umeng/message/proguard/aR;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->c(Lorg/android/agoo/impl/PushService$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v3}, Lorg/android/agoo/impl/PushService$a;->d(Lorg/android/agoo/impl/PushService$a;)Lcom/umeng/message/proguard/aR;

    const-string v3, "14"

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    const-string v0, "PushService"

    const-string v1, "send finish. close this connection"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v0, v4}, Lorg/android/agoo/impl/PushService$a;->a(Lorg/android/agoo/impl/PushService$a;Lorg/android/agoo/service/SendMessage;)Lorg/android/agoo/service/SendMessage;

    .line 740
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$a;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->e(Lorg/android/agoo/impl/PushService$a;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 738
    :catchall_0
    move-exception v0

    const-string v1, "PushService"

    const-string v2, "send finish. close this connection"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1, v4}, Lorg/android/agoo/impl/PushService$a;->a(Lorg/android/agoo/impl/PushService$a;Lorg/android/agoo/service/SendMessage;)Lorg/android/agoo/service/SendMessage;

    .line 740
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    iget-object v1, v1, Lorg/android/agoo/impl/PushService$a;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v2}, Lorg/android/agoo/impl/PushService$a;->e(Lorg/android/agoo/impl/PushService$a;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method
