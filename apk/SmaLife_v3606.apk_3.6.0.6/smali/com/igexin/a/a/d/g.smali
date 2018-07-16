.class final Lcom/igexin/a/a/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/concurrent/BlockingQueue;

.field b:Lcom/igexin/a/a/d/d;

.field c:Lcom/igexin/a/a/d/d;

.field volatile d:I

.field e:Landroid/os/PowerManager$WakeLock;

.field final synthetic f:Lcom/igexin/a/a/d/f;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/d/f;Lcom/igexin/a/a/d/d;)V
    .locals 3

    iput-object p1, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/igexin/a/a/d/g;->b:Lcom/igexin/a/a/d/d;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v0, p1, Lcom/igexin/a/a/d/f;->i:Lcom/igexin/a/a/d/e;

    iget-object v0, v0, Lcom/igexin/a/a/d/e;->p:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iput-object v1, p0, Lcom/igexin/a/a/d/g;->c:Lcom/igexin/a/a/d/d;

    iput-object v1, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public final a(Lcom/igexin/a/a/d/d;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Lcom/igexin/a/a/d/d;->a(Landroid/os/PowerManager$WakeLock;)V

    iget v1, p0, Lcom/igexin/a/a/d/g;->d:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/igexin/a/a/d/d;->L:I

    iput v1, p0, Lcom/igexin/a/a/d/g;->d:I

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_b

    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->U:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->a_()V

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->s()V

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->U:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V

    :cond_4
    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->A:Z

    if-nez v0, :cond_1

    :cond_5
    move v1, v2

    move-object p1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p1, Lcom/igexin/a/a/d/d;->F:Z

    iput-object v0, p1, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->v()V

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->o()V

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    iget-object v0, v0, Lcom/igexin/a/a/d/f;->i:Lcom/igexin/a/a/d/e;

    invoke-virtual {v0, p1}, Lcom/igexin/a/a/d/e;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    iget-object v0, v0, Lcom/igexin/a/a/d/f;->i:Lcom/igexin/a/a/d/e;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/e;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->U:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V

    :cond_7
    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/igexin/a/a/d/d;->A:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-boolean v4, p1, Lcom/igexin/a/a/d/d;->U:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/igexin/a/a/d/g;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    iget-boolean v4, p1, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v4, :cond_9

    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->c()V

    :cond_9
    iget-boolean v4, p1, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v4, :cond_a

    iget-boolean v4, p1, Lcom/igexin/a/a/d/d;->A:Z

    if-nez v4, :cond_1

    :cond_a
    throw v0

    :cond_b
    return-void
.end method

.method final b()Lcom/igexin/a/a/d/d;
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/igexin/a/a/d/g;->d:I

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    iget-wide v2, v2, Lcom/igexin/a/a/d/f;->e:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/d/d;

    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    iget-object v2, v0, Lcom/igexin/a/a/d/f;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/igexin/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    iget-object v0, v0, Lcom/igexin/a/a/d/f;->b:Ljava/util/HashMap;

    iget v3, p0, Lcom/igexin/a/a/d/g;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->c:Lcom/igexin/a/a/d/d;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/d;->e()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/a/a/d/g;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final run()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/d/g;->b:Lcom/igexin/a/a/d/d;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/igexin/a/a/d/g;->b:Lcom/igexin/a/a/d/d;

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/igexin/a/a/d/g;->b()Lcom/igexin/a/a/d/d;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/f;->a()Lcom/igexin/a/a/d/d;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/igexin/a/a/d/g;->c:Lcom/igexin/a/a/d/d;

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/d/g;->a(Lcom/igexin/a/a/d/d;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/g;->c:Lcom/igexin/a/a/d/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    invoke-virtual {v0, p0}, Lcom/igexin/a/a/d/f;->a(Lcom/igexin/a/a/d/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/a/d/g;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    invoke-virtual {v0, p0}, Lcom/igexin/a/a/d/f;->a(Lcom/igexin/a/a/d/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/a/d/g;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/igexin/a/a/d/g;->f:Lcom/igexin/a/a/d/f;

    invoke-virtual {v1, p0}, Lcom/igexin/a/a/d/f;->a(Lcom/igexin/a/a/d/g;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/igexin/a/a/d/g;->a()V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method
