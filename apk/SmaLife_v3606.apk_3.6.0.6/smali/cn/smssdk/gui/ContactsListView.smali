.class public Lcn/smssdk/gui/ContactsListView;
.super Landroid/widget/RelativeLayout;
.source "ContactsListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/smssdk/gui/ContactsListView$GroupAdapter;,
        Lcn/smssdk/gui/ContactsListView$InnerAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

.field private curFirstItem:I

.field private innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

.field private lvBody:Landroid/widget/ListView;

.field private osListener:Landroid/widget/AbsListView$OnScrollListener;

.field private titleHeight:I

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactsListView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactsListView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactsListView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/ContactsListView;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$1(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->osListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$2(Lcn/smssdk/gui/ContactsListView;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    return-void
.end method

.method static synthetic access$3(Lcn/smssdk/gui/ContactsListView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcn/smssdk/gui/ContactsListView;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->onScroll()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 52
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    .line 53
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 54
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const-string v1, "smssdk_cl_divider"

    invoke-static {p1, v1}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 57
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_0
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 60
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 61
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    new-instance v2, Lcn/smssdk/gui/ContactsListView$1;

    invoke-direct {v2, p0}, Lcn/smssdk/gui/ContactsListView$1;-><init>(Lcn/smssdk/gui/ContactsListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcn/smssdk/gui/ContactsListView;->addView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->notifyDataSetChanged()V

    .line 99
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->setTitle()V

    .line 100
    return-void
.end method

.method private onScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 136
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v5, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v4, v5}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->isLastItem(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v5, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v4, v5}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 140
    .local v0, "group":I
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v4, v0}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 143
    .local v3, "top":I
    iget v4, p0, Lcn/smssdk/gui/ContactsListView;->titleHeight:I

    if-ge v3, v4, :cond_1

    .line 144
    iget v4, p0, Lcn/smssdk/gui/ContactsListView;->titleHeight:I

    sub-int v4, v3, v4

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 145
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .end local v0    # "group":I
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "top":I
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 150
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v5, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v4, v5}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->isTitle(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v5, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v4, v5}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 155
    .restart local v0    # "group":I
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    invoke-virtual {v4, v0}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v4, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcn/smssdk/gui/ContactsListView;->removeView(Landroid/view/View;)V

    .line 107
    :cond_0
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-virtual {v3}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 122
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    iget v4, p0, Lcn/smssdk/gui/ContactsListView;->curFirstItem:I

    invoke-virtual {v3, v4}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getItemGroup(I)I

    move-result v0

    .line 111
    .local v0, "group":I
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-static {v3}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->access$0(Lcn/smssdk/gui/ContactsListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 112
    .local v2, "position":I
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p0}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    .line 113
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 113
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v1}, Lcn/smssdk/gui/ContactsListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 120
    iget-object v3, p0, Lcn/smssdk/gui/ContactsListView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcn/smssdk/gui/ContactsListView;->titleHeight:I

    .line 121
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->onScroll()V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Lcn/smssdk/gui/ContactsListView$GroupAdapter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    return-object v0
.end method

.method public setAdapter(Lcn/smssdk/gui/ContactsListView$GroupAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView;->adapter:Lcn/smssdk/gui/ContactsListView$GroupAdapter;

    .line 88
    new-instance v0, Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-direct {v0, p1}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;-><init>(Lcn/smssdk/gui/ContactsListView$GroupAdapter;)V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    .line 89
    iget-object v0, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsListView;->setTitle()V

    .line 91
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/smssdk/gui/ContactsListView;->osListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 163
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/ContactsListView;->setSelection(II)V

    .line 126
    return-void
.end method

.method public setSelection(II)V
    .locals 3
    .param p1, "group"    # I
    .param p2, "position"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView;->innerAdapter:Lcn/smssdk/gui/ContactsListView$InnerAdapter;

    invoke-static {v2}, Lcn/smssdk/gui/ContactsListView$InnerAdapter;->access$0(Lcn/smssdk/gui/ContactsListView$InnerAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    .local v1, "titleIndex":I
    add-int v2, v1, p2

    add-int/lit8 v0, v2, 0x1

    .line 131
    .local v0, "selection":I
    iget-object v2, p0, Lcn/smssdk/gui/ContactsListView;->lvBody:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 132
    return-void
.end method
