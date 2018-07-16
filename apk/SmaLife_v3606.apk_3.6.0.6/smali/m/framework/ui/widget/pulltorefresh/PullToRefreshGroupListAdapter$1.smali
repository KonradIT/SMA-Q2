.class Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;
.super Ljava/lang/Object;
.source "PullToRefreshGroupListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

.field private visibleItemCount:I


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    .line 19
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
    .line 37
    iput p2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->firstVisibleItem:I

    .line 38
    iput p3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->visibleItemCount:I

    .line 39
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {v1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V

    .line 41
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 24
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;Z)V

    .line 25
    if-nez p2, :cond_0

    .line 26
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    move-result-object v0

    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->firstVisibleItem:I

    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->visibleItemCount:I

    invoke-interface {v0, v1, v2}, Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;->onListStopScrolling(II)V

    .line 33
    :cond_0
    :goto_1
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
