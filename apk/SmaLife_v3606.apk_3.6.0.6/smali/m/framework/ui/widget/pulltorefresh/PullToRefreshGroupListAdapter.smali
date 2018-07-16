.class public abstract Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;
.super Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;
.source "PullToRefreshGroupListAdapter.java"


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

.field private fling:Z

.field private listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

.field private osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 2
    .param p1, "view"    # Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 18
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    invoke-virtual {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 19
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    new-instance v1, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;

    invoke-direct {v1, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 43
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 70
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->setAdapter(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->fling:Z

    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    return-object v0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    return-object v0
.end method


# virtual methods
.method public getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    return-object v0
.end method

.method public abstract getChild(II)Ljava/lang/Object;
.end method

.method public abstract getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getChildrenCount(I)I
.end method

.method public abstract getGroupCount()I
.end method

.method public abstract getGroupTitle(I)Ljava/lang/String;
.end method

.method public abstract getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getListView()Lm/framework/ui/widget/pulltorefresh/GroupListView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    return-object v0
.end method

.method public isFling()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->fling:Z

    return v0
.end method

.method public isPullReady()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->isReadyToPull()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->notifyDataSetChanged()V

    .line 118
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V
    .locals 0
    .param p1, "scrollable"    # Lm/framework/ui/widget/pulltorefresh/Scrollable;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 114
    return-void
.end method
