.class public Lcom/igexin/push/f/b/c;
.super Lcom/igexin/push/f/b/f;


# static fields
.field private static a:Lcom/igexin/push/f/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/i;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/f/b/f;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/f/b/c;->A:Z

    return-void
.end method

.method public static g()Lcom/igexin/push/f/b/c;
    .locals 1

    sget-object v0, Lcom/igexin/push/f/b/c;->a:Lcom/igexin/push/f/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/f/b/c;

    invoke-direct {v0}, Lcom/igexin/push/f/b/c;-><init>()V

    sput-object v0, Lcom/igexin/push/f/b/c;->a:Lcom/igexin/push/f/b/c;

    :cond_0
    sget-object v0, Lcom/igexin/push/f/b/c;->a:Lcom/igexin/push/f/b/c;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->C()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/core/g;->G:J

    sget-boolean v0, Lcom/igexin/push/core/g;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "heartbeatReq"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->h()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->f()I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/igexin/push/f/b/c;->h()V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const v0, -0x7ffffffa

    return v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/igexin/push/f/b/f;->c()V

    iget-boolean v0, p0, Lcom/igexin/push/f/b/c;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/push/f/b/c;->h()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    invoke-static {}, Lcom/igexin/push/core/i;->a()Lcom/igexin/push/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/i;->b()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/f/b/c;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
