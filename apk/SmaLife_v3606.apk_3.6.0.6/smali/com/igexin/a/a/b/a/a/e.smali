.class public final Lcom/igexin/a/a/b/a/a/e;
.super Lcom/igexin/a/a/b/f;


# static fields
.field static volatile l:Lcom/igexin/a/a/b/a/a/e;


# instance fields
.field e:Ljava/nio/channels/Selector;

.field f:Ljava/nio/channels/Selector;

.field g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile i:Z

.field final j:J

.field k:I

.field volatile m:J

.field volatile n:J

.field volatile o:J

.field p:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field q:Ljava/util/List;

.field r:Lcom/igexin/a/a/b/a/a/d;

.field s:Ljava/nio/ByteBuffer;

.field t:Z

.field u:I

.field final v:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/igexin/a/a/b/c;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/a/a/b/f;-><init>(ILjava/lang/String;Lcom/igexin/a/a/b/c;)V

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/igexin/a/a/b/a/a/e;->j:J

    new-instance v0, Lcom/igexin/a/a/b/a/a/f;

    invoke-direct {v0, p0}, Lcom/igexin/a/a/b/a/a/f;-><init>(Lcom/igexin/a/a/b/a/a/e;)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->v:Ljava/util/Comparator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    const v0, 0xf000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->s:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/a/a/e;
    .locals 2

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    iget-boolean v0, v0, Lcom/igexin/a/a/b/a/a/e;->F:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    iget-boolean v0, v0, Lcom/igexin/a/a/b/a/a/e;->x:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    iget-object v0, v0, Lcom/igexin/a/a/b/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/igexin/a/a/b/a/a/e;

    const/16 v1, -0x7ff

    invoke-direct {v0, v1, p0, p1}, Lcom/igexin/a/a/b/a/a/e;-><init>(ILjava/lang/String;Lcom/igexin/a/a/b/c;)V

    sput-object v0, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    goto :goto_0
.end method

.method public static h()Lcom/igexin/a/a/b/a/a/e;
    .locals 1

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/nio/channels/SocketChannel;)V
    .locals 8

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "socketread|-1|"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/igexin/a/a/b/a/a/e;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/a/a/b/a/a/e;->u:I

    iget v0, p0, Lcom/igexin/a/a/b/a/a/e;->u:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/a/a/b/a/a/e;->u:I

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "NioConnection Read EOF!"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceptionsocketread|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_3

    :try_start_1
    const-string v0, "socketread|0|"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/igexin/a/a/b/a/a/e;->t:Z

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sget-boolean v2, Lcom/igexin/a/a/b/d;->f:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    iget-wide v4, v2, Lcom/igexin/a/a/b/d;->d:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/igexin/a/a/b/d;->d:J

    :goto_1
    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->b:Lcom/igexin/a/a/b/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->b:Lcom/igexin/a/a/b/c;

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iget-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0, v2, v3}, Lcom/igexin/a/a/b/c;->c(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    iget-wide v4, v2, Lcom/igexin/a/a/b/d;->b:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/igexin/a/a/b/d;->b:J
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceptionsocketread|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public a_()V
    .locals 12

    const/4 v2, 0x1

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/igexin/a/a/b/f;->a_()V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    throw v0

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    iget-boolean v0, v0, Lcom/igexin/a/a/b/a/a/d;->b:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/igexin/a/a/b/a/a/b;

    invoke-direct {v0}, Lcom/igexin/a/a/b/a/a/b;-><init>()V

    iput v2, v0, Lcom/igexin/a/a/b/a/a/b;->a:I

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/b/a/a/d;->b(Z)V

    :cond_7
    iget-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    cmp-long v0, v4, v10

    if-gez v0, :cond_8

    iput-wide v10, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->n:J

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_1
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "wakelock|niosockettask|off"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    iget-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    cmp-long v0, v4, v10

    if-lez v0, :cond_b

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->Q:Lcom/igexin/a/a/d/e;

    iget-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->n:J

    iget-wide v6, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    add-long/2addr v4, v6

    sget-wide v6, Lcom/igexin/a/a/d/e;->z:J

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/igexin/a/a/d/e;->b(J)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    iget-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    sget-object v3, Lcom/igexin/a/a/b/a/a/e;->Q:Lcom/igexin/a/a/d/e;

    invoke-virtual {v3}, Lcom/igexin/a/a/d/e;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v3, "wakelock|niosockettask|on"

    invoke-static {v3}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_a
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/igexin/a/a/b/a/a/e;->n:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->o:J

    iget-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->o:J

    const-wide/16 v6, 0x1e

    cmp-long v3, v4, v6

    if-gez v3, :cond_f

    if-nez v0, :cond_f

    iget v3, p0, Lcom/igexin/a/a/b/a/a/e;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/igexin/a/a/b/a/a/e;->k:I

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget v3, p0, Lcom/igexin/a/a/b/a/a/e;->k:I

    const/16 v4, 0x3b

    if-le v3, v4, :cond_10

    const-string v0, "exceptionrebuildselector"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    iget-object v4, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    iget-object v4, v4, Lcom/igexin/a/a/b/a/a/d;->a:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, v3, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    goto :goto_2

    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "wakelock|niosockettask|on"

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_c
    throw v0

    :cond_d
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    :cond_e
    iput v1, p0, Lcom/igexin/a/a/b/a/a/e;->k:I

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/nio/channels/Selector;

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    goto/16 :goto_0

    :cond_f
    iput v1, p0, Lcom/igexin/a/a/b/a/a/e;->k:I

    :cond_10
    if-lez v0, :cond_13

    iput-boolean v1, p0, Lcom/igexin/a/a/b/a/a/e;->t:Z

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, v1}, Lcom/igexin/a/a/b/a/a/e;->b(Ljava/nio/channels/SocketChannel;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    :cond_12
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/b/a/a/e;->a(Ljava/nio/channels/SocketChannel;)V

    goto :goto_3

    :cond_13
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    iget-object v6, v0, Lcom/igexin/a/a/b/a/a/g;->P:Lcom/igexin/a/a/d/a/g;

    if-eqz v6, :cond_1a

    iget-object v6, v0, Lcom/igexin/a/a/b/a/a/g;->P:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v6}, Lcom/igexin/a/a/d/a/g;->b()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-boolean v6, p0, Lcom/igexin/a/a/b/a/a/e;->t:Z

    if-nez v6, :cond_15

    if-eqz v1, :cond_16

    :cond_15
    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    iget-object v6, v0, Lcom/igexin/a/a/b/a/a/g;->P:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v6, v0}, Lcom/igexin/a/a/d/a/g;->b(Lcom/igexin/a/a/d/d;)V

    move v0, v1

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v1, v0

    goto :goto_4

    :cond_16
    iget-object v6, v0, Lcom/igexin/a/a/b/a/a/g;->P:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v6, v4, v5, v0}, Lcom/igexin/a/a/d/a/g;->a(JLcom/igexin/a/a/d/d;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->P:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v1, v0}, Lcom/igexin/a/a/d/a/g;->a(Lcom/igexin/a/a/d/d;)V

    move v0, v2

    goto :goto_5

    :cond_17
    iget-object v6, v0, Lcom/igexin/a/a/b/a/a/g;->P:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v6, v4, v5, v0}, Lcom/igexin/a/a/d/a/g;->b(JLcom/igexin/a/a/d/d;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    cmp-long v0, v8, v10

    if-ltz v0, :cond_18

    iget-wide v8, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_14

    :cond_18
    iput-wide v6, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    goto :goto_4

    :cond_19
    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    move v0, v1

    goto :goto_5

    :cond_1a
    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_1b
    if-eqz v1, :cond_1

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "SocketTask do timeOut!"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()I
    .locals 1

    const/16 v0, -0x7ff

    return v0
.end method

.method final b(Ljava/nio/channels/SocketChannel;)J
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iput-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->d:Lcom/igexin/a/a/b/e;

    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->f:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/igexin/a/a/b/a/a/g;->f:Ljava/nio/ByteBuffer;

    move v1, v2

    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_2
    if-lez v0, :cond_2

    :try_start_2
    sget-boolean v1, Lcom/igexin/a/a/b/d;->f:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    iget-wide v6, v1, Lcom/igexin/a/a/b/d;->e:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/igexin/a/a/b/d;->e:J

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->b:Lcom/igexin/a/a/b/c;

    iget-object v6, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iget-object v7, v0, Lcom/igexin/a/a/b/a/a/g;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0, v6, v7}, Lcom/igexin/a/a/b/c;->d(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->f:Ljava/nio/ByteBuffer;

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v0, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exceptionsocketwrite|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/igexin/a/a/b/a/a/d;->b(Z)V

    throw v1

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exceptionsocketwrite|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    iget-wide v6, v1, Lcom/igexin/a/a/b/d;->c:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/igexin/a/a/b/d;->c:J

    move v1, v0

    goto/16 :goto_1

    :cond_2
    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socketwrite|-1|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_3
    if-nez v0, :cond_4

    add-int/lit8 v1, v3, 0x1

    const/16 v6, 0x8c

    if-ge v3, v6, :cond_4

    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "socketwrite|0|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    move v3, v1

    move v1, v0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socketwrite|-2|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "write data error!"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    iget v2, v0, Lcom/igexin/a/a/b/a/a/g;->K:I

    if-lez v2, :cond_6

    iget-object v2, v0, Lcom/igexin/a/a/b/a/a/g;->P:Lcom/igexin/a/a/d/a/g;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v4, v5}, Lcom/igexin/a/a/b/a/a/g;->a(J)V

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->v:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_4
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_5
    iget-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Lcom/igexin/a/a/b/a/a/d;->b(Z)V

    :goto_7
    return-wide v0

    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    iget v0, v0, Lcom/igexin/a/a/b/a/a/g;->K:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_a
    const-wide/16 v0, -0x1

    goto :goto_7

    :cond_b
    move v2, v1

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/igexin/a/a/b/f;->d()V

    iput-boolean v0, p0, Lcom/igexin/a/a/b/a/a/e;->z:Z

    iput-boolean v0, p0, Lcom/igexin/a/a/b/a/a/e;->A:Z

    iput-boolean v0, p0, Lcom/igexin/a/a/b/a/a/e;->U:Z

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    iput-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    iput-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_2
    iput-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->s:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iput-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->s:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    if-ne v0, p0, :cond_5

    sput-object v3, Lcom/igexin/a/a/b/a/a/e;->l:Lcom/igexin/a/a/b/a/a/e;

    :cond_5
    invoke-super {p0}, Lcom/igexin/a/a/b/f;->f()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method final g()V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/igexin/a/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-direct {v0, v1}, Lcom/igexin/a/a/b/a/a/d;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/a/a/d;->a(Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/igexin/a/a/b/a/a/b;

    invoke-direct {v0}, Lcom/igexin/a/a/b/a/a/b;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/igexin/a/a/b/a/a/b;->a:I

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v7, p0, Lcom/igexin/a/a/b/a/a/e;->i:Z

    new-instance v1, Lcom/igexin/a/a/b/e;

    invoke-direct {v1}, Lcom/igexin/a/a/b/e;-><init>()V

    iput-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iget-object v4, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v1, v4}, Lcom/igexin/a/a/b/e;->a(Lcom/igexin/a/a/b/b;)V

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "0.0.0.0"

    goto :goto_1

    :cond_6
    const-string v1, "0.0.0.0"

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    if-nez v0, :cond_8

    :goto_3
    return-void

    :cond_8
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/a/a/d;->a(Ljava/nio/channels/Selector;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->r:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v1}, Lcom/igexin/a/a/b/a/a/d;->c()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v1, v2, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_2
    return-void
.end method
