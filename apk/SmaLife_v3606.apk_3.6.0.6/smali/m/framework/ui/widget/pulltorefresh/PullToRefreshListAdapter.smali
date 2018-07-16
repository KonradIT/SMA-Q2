.class public abstract Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;
.super Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;
.source "PullToRefreshListAdapter.java"


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

.field private fling:Z

.field private listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

.field private osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 2
    .param p1, "view"    # Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 16
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    invoke-virtual {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    .line 17
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    new-instance v1, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;

    invoke-direct {v1, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)V

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 41
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;)V

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    .line 42
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;Z)V
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->fling:Z

    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    return-object v0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableListView;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    return-object v0
.end method


# virtual methods
.method public getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    return-object v0
.end method

.method public isFling()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->fling:Z

    return v0
.end method

.method public isPullReady()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->isReadyToPull()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->notifyDataSetChanged()V

    .line 68
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V
    .locals 0
    .param p1, "scrollable"    # Lm/framework/ui/widget/pulltorefresh/Scrollable;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 64
    return-void
.end method
