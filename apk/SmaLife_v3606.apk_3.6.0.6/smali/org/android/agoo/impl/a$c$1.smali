.class Lorg/android/agoo/impl/a$c$1;
.super Ljava/lang/Object;
.source "ElectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/agoo/impl/a$c;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/a$c;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/a$c;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lorg/android/agoo/impl/a$c$1;->a:Lorg/android/agoo/impl/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 858
    :try_start_0
    const-string v0, "ElectionService"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lorg/android/agoo/impl/a$c$1;->a:Lorg/android/agoo/impl/a$c;

    invoke-static {v0}, Lorg/android/agoo/impl/a$c;->b(Lorg/android/agoo/impl/a$c;)Lorg/android/agoo/service/ElectionReceiverService;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/a$c$1;->a:Lorg/android/agoo/impl/a$c;

    invoke-static {v1}, Lorg/android/agoo/impl/a$c;->a(Lorg/android/agoo/impl/a$c;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/android/agoo/service/ElectionReceiverService;->sendElectionResult(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    invoke-static {}, Lorg/android/agoo/impl/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/a$c$1;->a:Lorg/android/agoo/impl/a$c;

    invoke-static {v1}, Lorg/android/agoo/impl/a$c;->c(Lorg/android/agoo/impl/a$c;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 867
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    :try_start_1
    const-string v1, "ElectionService"

    const-string v2, "send error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    invoke-static {}, Lorg/android/agoo/impl/a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/a$c$1;->a:Lorg/android/agoo/impl/a$c;

    invoke-static {v1}, Lorg/android/agoo/impl/a$c;->c(Lorg/android/agoo/impl/a$c;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/android/agoo/impl/a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/impl/a$c$1;->a:Lorg/android/agoo/impl/a$c;

    invoke-static {v2}, Lorg/android/agoo/impl/a$c;->c(Lorg/android/agoo/impl/a$c;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method
