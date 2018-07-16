.class public Lcn/smssdk/gui/GroupListView;
.super Landroid/widget/RelativeLayout;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/GroupListView$GroupAdapter;,
        Lcn/smssdk/gui/GroupListView$InnerAdapter;,
        Lcn/smssdk/gui/GroupListView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

.field private curFirstItem:I

.field private innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

.field private lvBody:Landroid/widget/ListView;

.field private oicListener:Lcn/smssdk/gui/GroupListView$OnItemClickListener;

.field private osListener:Landroid/widget/AbsListView$OnScrollListener;

.field private titleHeight:I

.field private tvTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Lcn/smssdk/gui/GroupListView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcn/smssdk/gui/GroupListView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1}, Lcn/smssdk/gui/GroupListView;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/GroupListView;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$1(Lcn/smssdk/gui/GroupListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->osListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$2(Lcn/smssdk/gui/GroupListView;I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    return-void
.end method

.method static synthetic access$3(Lcn/smssdk/gui/GroupListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcn/smssdk/gui/GroupListView;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->onScroll()V

    return-void
.end method

.method static synthetic access$5(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$OnItemClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->oicListener:Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$6(Lcn/smssdk/gui/GroupListView;)Lcn/smssdk/gui/GroupListView$InnerAdapter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 50
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    .line 51
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 52
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    new-instance v1, Lcn/smssdk/gui/GroupListView$1;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/GroupListView$1;-><init>(Lcn/smssdk/gui/GroupListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 75
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    new-instance v1, Lcn/smssdk/gui/GroupListView$2;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/GroupListView$2;-><init>(Lcn/smssdk/gui/GroupListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/GroupListView;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->notifyDataSetChanged()V

    .line 110
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->setTitle()V

    .line 111
    return-void
.end method

.method private onScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 145
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v5, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v4, v5}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->isLastItem(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v5, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v4, v5}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 149
    .local v0, "group":I
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v4, v0}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    iget-object v5, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->onGroupChange(Landroid/view/View;Ljava/lang/String;)V

    .line 151
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 152
    .local v3, "top":I
    iget v4, p0, Lcn/smssdk/gui/GroupListView;->titleHeight:I

    if-ge v3, v4, :cond_1

    .line 153
    iget v4, p0, Lcn/smssdk/gui/GroupListView;->titleHeight:I

    sub-int v4, v3, v4

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .end local v0    # "group":I
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "top":I
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 159
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v5, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v4, v5}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->isTitle(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v5, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v4, v5}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 164
    .restart local v0    # "group":I
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    invoke-virtual {v4, v0}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v4, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    iget-object v5, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcn/smssdk/gui/GroupListView$GroupAdapter;->onGroupChange(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 114
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcn/smssdk/gui/GroupListView;->removeView(Landroid/view/View;)V

    .line 117
    :cond_0
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-virtual {v3}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 132
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    iget v4, p0, Lcn/smssdk/gui/GroupListView;->curFirstItem:I

    invoke-virtual {v3, v4}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 121
    .local v0, "group":I
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-static {v3}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->access$0(Lcn/smssdk/gui/GroupListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 122
    .local v2, "position":I
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p0}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    .line 123
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 123
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcn/smssdk/gui/GroupListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v3, v5, v5}, Landroid/view/View;->measure(II)V

    .line 130
    iget-object v3, p0, Lcn/smssdk/gui/GroupListView;->tvTitle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcn/smssdk/gui/GroupListView;->titleHeight:I

    .line 131
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->onScroll()V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Lcn/smssdk/gui/GroupListView$GroupAdapter;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    return-object v0
.end method

.method public setAdapter(Lcn/smssdk/gui/GroupListView$GroupAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcn/smssdk/gui/GroupListView$GroupAdapter;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView;->adapter:Lcn/smssdk/gui/GroupListView$GroupAdapter;

    .line 99
    new-instance v0, Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-direct {v0, p1}, Lcn/smssdk/gui/GroupListView$InnerAdapter;-><init>(Lcn/smssdk/gui/GroupListView$GroupAdapter;)V

    iput-object v0, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    .line 100
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-direct {p0}, Lcn/smssdk/gui/GroupListView;->setTitle()V

    .line 102
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 94
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 91
    return-void
.end method

.method public setOnItemClickListener(Lcn/smssdk/gui/GroupListView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView;->oicListener:Lcn/smssdk/gui/GroupListView$OnItemClickListener;

    .line 175
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcn/smssdk/gui/GroupListView;->osListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 171
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 135
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/GroupListView;->setSelection(II)V

    .line 136
    return-void
.end method

.method public setSelection(II)V
    .locals 3
    .param p1, "group"    # I
    .param p2, "position"    # I

    .prologue
    .line 139
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView;->innerAdapter:Lcn/smssdk/gui/GroupListView$InnerAdapter;

    invoke-static {v2}, Lcn/smssdk/gui/GroupListView$InnerAdapter;->access$0(Lcn/smssdk/gui/GroupListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 140
    .local v1, "titleIndex":I
    add-int v2, v1, p2

    add-int/lit8 v0, v2, 0x1

    .line 141
    .local v0, "selection":I
    iget-object v2, p0, Lcn/smssdk/gui/GroupListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 142
    return-void
.end method
