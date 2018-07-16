.class public abstract Lcom/mob/tools/gui/PullToRefreshGridAdapter;
.super Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;


# instance fields
.field private adapter:Lcom/mob/tools/gui/ListInnerAdapter;

.field private fling:Z

.field private gridView:Lcom/mob/tools/gui/ScrollableGridView;

.field private osListener:Lcom/mob/tools/gui/OnListStopScrollListener;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->onNewGridView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    new-instance v1, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/PullToRefreshGridAdapter$1;-><init>(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/mob/tools/gui/ListInnerAdapter;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/ListInnerAdapter;-><init>(Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;)V

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->adapter:Lcom/mob/tools/gui/ListInnerAdapter;

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->adapter:Lcom/mob/tools/gui/ListInnerAdapter;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/PullToRefreshGridAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->fling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->osListener:Lcom/mob/tools/gui/OnListStopScrollListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)Lcom/mob/tools/gui/ListInnerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->adapter:Lcom/mob/tools/gui/ListInnerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/gui/PullToRefreshGridAdapter;)Lcom/mob/tools/gui/ScrollableGridView;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method


# virtual methods
.method public getBodyView()Lcom/mob/tools/gui/Scrollable;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public isFling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->fling:Z

    return v0
.end method

.method public isPullReady()Z
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScrollableGridView;->isReadyToPull()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->adapter:Lcom/mob/tools/gui/ListInnerAdapter;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ListInnerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onNewGridView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;
    .locals 1

    new-instance v0, Lcom/mob/tools/gui/ScrollableGridView;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onScroll(Lcom/mob/tools/gui/Scrollable;III)V
    .locals 0

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setColumnWidth(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setNumColumns(I)V

    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setStretchMode(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setVerticalSpacing(I)V

    return-void
.end method
