.class public Lcom/mob/tools/gui/ListInnerAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private adapter:Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/gui/ListInnerAdapter;->adapter:Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/ListInnerAdapter;->adapter:Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/ListInnerAdapter;->adapter:Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/mob/tools/gui/ListInnerAdapter;->adapter:Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/ListInnerAdapter;->adapter:Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/ListInnerAdapter;->adapter:Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/ListInnerAdapter;->adapter:Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method
