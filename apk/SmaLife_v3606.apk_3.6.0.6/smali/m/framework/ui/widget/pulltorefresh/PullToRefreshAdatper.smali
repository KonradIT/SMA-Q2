.class public abstract Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;
.super Ljava/lang/Object;
.source "PullToRefreshAdatper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private parent:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->context:Landroid/content/Context;

    .line 12
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->parent:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getHeaderView()Landroid/view/View;
.end method

.method protected getParent()Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->parent:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    return-object v0
.end method

.method public abstract isPullReady()Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->parent:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopPulling()V

    .line 25
    return-void
.end method

.method public abstract onPullDown(I)V
.end method

.method public abstract onRequest()V
.end method

.method public onReversed()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
