.class public Lm/framework/ui/widget/pulltorefresh/ScrollableListView;
.super Landroid/widget/ListView;
.source "ScrollableListView.java"

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
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->init(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/ScrollableListView;Z)V
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->pullEnable:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->setCacheColorHint(I)V

    .line 29
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 30
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView$1;-><init>(Lm/framework/ui/widget/pulltorefresh/ScrollableListView;)V

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

    .line 36
    return-void
.end method


# virtual methods
.method protected computeVerticalScrollOffset()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    .line 44
    .local v3, "offset":I
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

    move-object v1, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lm/framework/ui/widget/pulltorefresh/OnScrollListener;->onScrollChanged(Lm/framework/ui/widget/pulltorefresh/Scrollable;IIII)V

    .line 47
    :cond_0
    return v3
.end method

.method public isReadyToPull()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->pullEnable:Z

    return v0
.end method
