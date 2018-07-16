.class final Lcom/tencent/map/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/f;


# direct methods
.method constructor <init>(Lcom/tencent/map/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/b/f$1;->a:Lcom/tencent/map/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/map/b/f$1;->a:Lcom/tencent/map/b/f;

    invoke-static {v2}, Lcom/tencent/map/b/f;->a(Lcom/tencent/map/b/f;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/map/b/f$1;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/b/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/b/f$1;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/b/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/map/b/f$1;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->b(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/g;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/map/b/g;->a(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/b/f$1;->a:Lcom/tencent/map/b/f;

    invoke-static {v0}, Lcom/tencent/map/b/f;->c(Lcom/tencent/map/b/f;)V

    goto :goto_0
.end method
