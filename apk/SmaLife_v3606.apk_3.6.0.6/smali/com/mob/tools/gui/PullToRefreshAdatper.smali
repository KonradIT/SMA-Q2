.class public abstract Lcom/mob/tools/gui/PullToRefreshAdatper;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private parent:Lcom/mob/tools/gui/PullToRefreshView;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshAdatper;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/mob/tools/gui/PullToRefreshAdatper;->parent:Lcom/mob/tools/gui/PullToRefreshView;

    return-void
.end method


# virtual methods
.method public abstract getBodyView()Lcom/mob/tools/gui/Scrollable;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshAdatper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getHeaderView()Landroid/view/View;
.end method

.method protected getParent()Lcom/mob/tools/gui/PullToRefreshView;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshAdatper;->parent:Lcom/mob/tools/gui/PullToRefreshView;

    return-object v0
.end method

.method public abstract isPullReady()Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshAdatper;->parent:Lcom/mob/tools/gui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRefreshView;->stopPulling()V

    return-void
.end method

.method public abstract onPullDown(I)V
.end method

.method public abstract onRequest()V
.end method

.method public onReversed()V
    .locals 0

    return-void
.end method
