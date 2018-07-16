.class public Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListInnerAdapter.java"


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 11
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    .line 12
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
