.class public abstract Lcom/mob/tools/gui/PullToRefreshBaseListAdapter;
.super Lcom/mob/tools/gui/PullToRefreshAdatper;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRefreshAdatper;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public abstract getItemId(I)J
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isFling()Z
.end method

.method public abstract onScroll(Lcom/mob/tools/gui/Scrollable;III)V
.end method
