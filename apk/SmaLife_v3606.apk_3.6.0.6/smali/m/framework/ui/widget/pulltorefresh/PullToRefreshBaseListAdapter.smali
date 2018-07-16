.class public abstract Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;
.super Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;
.source "PullToRefreshBaseListAdapter.java"


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 0
    .param p1, "view"    # Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public abstract getItemId(I)J
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isFling()Z
.end method

.method public abstract onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V
.end method
