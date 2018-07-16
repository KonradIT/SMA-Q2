.class public Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;
.super Lm/framework/ui/widget/pulltorefresh/GroupListView;
.source "ScrollableGroupListView.java"

# interfaces
.implements Lm/framework/ui/widget/pulltorefresh/Scrollable;


# instance fields
.field private osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

.field private pullEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->init(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lm/framework/ui/widget/pulltorefresh/GroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lm/framework/ui/widget/pulltorefresh/GroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;Z)V
    .locals 0

    .prologue
    .line 9
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->pullEnable:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->setCacheColorHint(I)V

    .line 28
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 29
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView$1;-><init>(Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;)V

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

    .line 35
    return-void
.end method


# virtual methods
.method protected computeVerticalScrollOffset()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super {p0}, Lm/framework/ui/widget/pulltorefresh/GroupListView;->computeVerticalScrollOffset()I

    move-result v3

    .line 43
    .local v3, "offset":I
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

    move-object v1, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lm/framework/ui/widget/pulltorefresh/OnScrollListener;->onScrollChanged(Lm/framework/ui/widget/pulltorefresh/Scrollable;IIII)V

    .line 46
    :cond_0
    return v3
.end method

.method public isReadyToPull()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->pullEnable:Z

    return v0
.end method
