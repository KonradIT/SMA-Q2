.class Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;
.super Ljava/lang/Object;
.source "PullToRefreshListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

.field private visibleItemCount:I


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 35
    iput p2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->firstVisibleItem:I

    .line 36
    iput p3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->visibleItemCount:I

    .line 37
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

    invoke-static {v1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableListView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V

    .line 39
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 22
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;Z)V

    .line 23
    if-nez p2, :cond_0

    .line 24
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    move-result-object v0

    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->firstVisibleItem:I

    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->visibleItemCount:I

    invoke-interface {v0, v1, v2}, Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;->onListStopScrolling(II)V

    .line 31
    :cond_0
    :goto_1
    return-void

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshListAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
