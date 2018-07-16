.class final Lcom/igexin/a/a/d/i;
.super Ljava/lang/Thread;


# instance fields
.field volatile a:Z

.field b:Lcom/igexin/a/a/d/f;

.field final synthetic c:Lcom/igexin/a/a/d/e;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/d/e;)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/d/i;->a:Z

    const-string v0, "taskService-processor"

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/d/i;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    iget-object v4, v0, Lcom/igexin/a/a/d/e;->m:Lcom/igexin/a/a/d/c;

    move v0, v1

    move-object v2, v3

    :goto_0
    iget-boolean v5, p0, Lcom/igexin/a/a/d/i;->a:Z

    if-eqz v5, :cond_b

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->d()V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->b:Lcom/igexin/a/a/d/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/a/d/f;

    iget-object v5, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-direct {v0, v5}, Lcom/igexin/a/a/d/f;-><init>(Lcom/igexin/a/a/d/e;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/i;->b:Lcom/igexin/a/a/d/f;

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/d/i;->b:Lcom/igexin/a/a/d/f;

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/d/f;->a(Lcom/igexin/a/a/d/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    :pswitch_1
    :try_start_1
    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->a_()V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->s()V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->u()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/e;->h()V

    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->c()V

    :cond_2
    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->B:Z

    if-nez v0, :cond_3

    iput v6, v2, Lcom/igexin/a/a/d/d;->M:I

    invoke-virtual {v4, v2}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z

    :cond_3
    move v0, v1

    move-object v2, v3

    :goto_1
    :pswitch_2
    :try_start_2
    invoke-virtual {v4}, Lcom/igexin/a/a/d/c;->c()Lcom/igexin/a/a/d/d;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_a

    iget-boolean v5, v2, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v5, :cond_4

    iget-boolean v5, v2, Lcom/igexin/a/a/d/d;->y:Z

    if-eqz v5, :cond_9

    :cond_4
    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, v2, Lcom/igexin/a/a/d/d;->F:Z

    iput-object v0, v2, Lcom/igexin/a/a/d/d;->N:Ljava/lang/Exception;

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->v()V

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->o()V

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    iget-object v0, v0, Lcom/igexin/a/a/d/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-virtual {v0}, Lcom/igexin/a/a/d/e;->h()V

    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->c()V

    :cond_5
    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_6

    iget-boolean v0, v2, Lcom/igexin/a/a/d/d;->B:Z

    if-nez v0, :cond_6

    iput v6, v2, Lcom/igexin/a/a/d/d;->M:I

    invoke-virtual {v4, v2}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z

    :cond_6
    move v0, v1

    move-object v2, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-virtual {v1}, Lcom/igexin/a/a/d/e;->h()V

    iget-boolean v1, v2, Lcom/igexin/a/a/d/d;->F:Z

    if-nez v1, :cond_7

    invoke-virtual {v2}, Lcom/igexin/a/a/d/d;->c()V

    :cond_7
    iget-boolean v1, v2, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v1, :cond_8

    iget-boolean v1, v2, Lcom/igexin/a/a/d/d;->B:Z

    if-nez v1, :cond_8

    iput v6, v2, Lcom/igexin/a/a/d/d;->M:I

    invoke-virtual {v4, v2}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z

    :cond_8
    throw v0

    :cond_9
    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_a
    :pswitch_3
    move-object v0, v2

    iget-object v2, p0, Lcom/igexin/a/a/d/i;->c:Lcom/igexin/a/a/d/e;

    invoke-virtual {v2}, Lcom/igexin/a/a/d/e;->h()V

    move-object v2, v0

    move v0, v1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4}, Lcom/igexin/a/a/d/c;->d()V

    return-void

    :catch_2
    move-exception v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
