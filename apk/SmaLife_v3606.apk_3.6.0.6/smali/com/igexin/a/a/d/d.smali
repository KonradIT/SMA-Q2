.class public abstract Lcom/igexin/a/a/d/d;
.super Lcom/igexin/a/a/d/a;

# interfaces
.implements Lcom/igexin/a/a/d/a/a;


# static fields
.field protected static Q:Lcom/igexin/a/a/d/e;


# instance fields
.field protected volatile A:Z

.field protected volatile B:Z

.field protected volatile C:Z

.field protected volatile D:Z

.field protected volatile E:Z

.field protected volatile F:Z

.field protected volatile G:J

.field volatile H:I

.field public I:J

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:Ljava/lang/Exception;

.field public O:Ljava/lang/Object;

.field public P:Lcom/igexin/a/a/d/a/g;

.field protected final R:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final S:Ljava/util/concurrent/locks/Condition;

.field T:Ljava/lang/Thread;

.field protected volatile U:Z

.field V:Landroid/os/PowerManager$WakeLock;

.field W:I

.field protected X:Lcom/igexin/a/a/d/a/d;

.field private a:B

.field protected volatile x:Z

.field protected volatile y:Z

.field protected volatile z:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/a/a/d/d;-><init>(ILcom/igexin/a/a/d/a/d;)V

    return-void
.end method

.method public constructor <init>(ILcom/igexin/a/a/d/a/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V

    iput p1, p0, Lcom/igexin/a/a/d/d;->L:I

    iput-object p2, p0, Lcom/igexin/a/a/d/d;->X:Lcom/igexin/a/a/d/a/d;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/d;->R:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/igexin/a/a/d/d;->R:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/d;->S:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)I
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    sget-object v1, Lcom/igexin/a/a/d/d;->Q:Lcom/igexin/a/a/d/e;

    iget-object v1, v1, Lcom/igexin/a/a/d/e;->m:Lcom/igexin/a/a/d/c;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/igexin/a/a/d/d;->G:J

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    invoke-virtual {p0}, Lcom/igexin/a/a/d/d;->n()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)V
    .locals 2

    iget-byte v0, p0, Lcom/igexin/a/a/d/d;->a:B

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/igexin/a/a/d/d;->a:B

    iget-byte v0, p0, Lcom/igexin/a/a/d/d;->a:B

    and-int/lit8 v1, p1, 0xf

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/igexin/a/a/d/d;->a:B

    return-void
.end method

.method public final a(ILcom/igexin/a/a/d/a/g;)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "second must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/igexin/a/a/d/d;->K:I

    iput-object p2, p0, Lcom/igexin/a/a/d/d;->P:Lcom/igexin/a/a/d/a/g;

    return-void
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/igexin/a/a/d/d;->I:J

    return-void
.end method

.method public a(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/d/d;->V:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public final a(Lcom/igexin/a/a/d/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/d/d;->X:Lcom/igexin/a/a/d/a/d;

    return-void
.end method

.method public a_()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/d;->T:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/d/d;->B:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->y:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/igexin/a/a/d/d;->f()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/d/d;->E:Z

    return-void
.end method

.method protected abstract e()V
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/a/a/d/d;->O:Ljava/lang/Object;

    iput-object v0, p0, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/igexin/a/a/d/d;->T:Ljava/lang/Thread;

    return-void
.end method

.method public l()Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/a/d/d;->V:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method final m()V
    .locals 2

    iget v0, p0, Lcom/igexin/a/a/d/d;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/a/a/d/d;->W:I

    iget v0, p0, Lcom/igexin/a/a/d/d;->W:I

    const v1, 0x40fffffe    # 7.999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/a/a/d/d;->W:I

    return-void
.end method

.method n()J
    .locals 4

    iget-wide v0, p0, Lcom/igexin/a/a/d/d;->G:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/d/d;->x:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->z:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->y:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->E:Z

    return v0
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/d/d;->y:Z

    return-void
.end method

.method protected u()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->A:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->C:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->D:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/d/d;->x:Z

    iput-boolean v1, p0, Lcom/igexin/a/a/d/d;->B:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->C:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/igexin/a/a/d/d;->B:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/igexin/a/a/d/d;->B:Z

    goto :goto_0
.end method

.method protected v()V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/d/d;->X:Lcom/igexin/a/a/d/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/d;->X:Lcom/igexin/a/a/d/a/d;

    sget-object v1, Lcom/igexin/a/a/d/a/e;->a:Lcom/igexin/a/a/d/a/e;

    invoke-interface {v0, v1}, Lcom/igexin/a/a/d/a/d;->a(Lcom/igexin/a/a/d/a/e;)V

    :cond_0
    return-void
.end method
