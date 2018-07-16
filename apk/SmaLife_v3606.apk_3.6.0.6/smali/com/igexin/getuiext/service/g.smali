.class Lcom/igexin/getuiext/service/g;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/service/d;


# direct methods
.method private constructor <init>(Lcom/igexin/getuiext/service/d;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/getuiext/service/d;Lcom/igexin/getuiext/service/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igexin/getuiext/service/g;-><init>(Lcom/igexin/getuiext/service/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-static {v0}, Lcom/igexin/getuiext/service/d;->a(Lcom/igexin/getuiext/service/d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-static {v0}, Lcom/igexin/getuiext/service/d;->b(Lcom/igexin/getuiext/service/d;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igexin/getuiext/service/d;->a(Lcom/igexin/getuiext/service/d;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-static {v0}, Lcom/igexin/getuiext/service/d;->a(Lcom/igexin/getuiext/service/d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-static {v0}, Lcom/igexin/getuiext/service/d;->a(Lcom/igexin/getuiext/service/d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v0, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-static {v0}, Lcom/igexin/getuiext/service/d;->a(Lcom/igexin/getuiext/service/d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x493e0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-static {v0}, Lcom/igexin/getuiext/service/d;->a(Lcom/igexin/getuiext/service/d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-static {v0}, Lcom/igexin/getuiext/service/d;->c(Lcom/igexin/getuiext/service/d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;

    if-eqz v0, :cond_2

    const/16 v3, 0x1ef

    iput v3, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    iget-object v3, p0, Lcom/igexin/getuiext/service/g;->a:Lcom/igexin/getuiext/service/d;

    invoke-virtual {v3, v0}, Lcom/igexin/getuiext/service/d;->update(Lcom/igexin/download/DownloadInfo;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
