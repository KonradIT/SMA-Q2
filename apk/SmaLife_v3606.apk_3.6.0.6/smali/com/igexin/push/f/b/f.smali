.class public abstract Lcom/igexin/push/f/b/f;
.super Lcom/igexin/a/a/d/d;


# instance fields
.field c:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/igexin/push/f/b/f;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/igexin/a/a/d/d;-><init>(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    iput-wide p3, p0, Lcom/igexin/push/f/b/f;->c:J

    iget-wide v0, p0, Lcom/igexin/push/f/b/f;->c:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/f/b/f;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    add-long/2addr p3, v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a_()V
    .locals 0

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->a_()V

    invoke-virtual {p0}, Lcom/igexin/push/f/b/f;->a()V

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method
