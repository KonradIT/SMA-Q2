.class Lm/framework/ui/widget/pulltorefresh/GroupListView$1;
.super Landroid/widget/BaseAdapter;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/GroupListView;->setAdapter(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/GroupListView;

.field private final synthetic val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/GroupListView;Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/GroupListView;

    iput-object p2, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private getItemIndex(I)[I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 87
    const/4 v5, 0x2

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 88
    .local v3, "indexPair":[I
    const/4 v0, 0x0

    .line 89
    .local v0, "count":I
    iget-object v5, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v5}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupCount()I

    move-result v4

    .line 90
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "gi":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 99
    :goto_1
    return-object v3

    .line 91
    :cond_0
    iget-object v5, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v5, v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 92
    .local v2, "groupSize":I
    add-int v5, v0, v2

    if-le v5, p1, :cond_1

    .line 93
    const/4 v5, 0x0

    aput v1, v3, v5

    .line 94
    const/4 v5, 0x1

    sub-int v6, p1, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v3, v5

    goto :goto_1

    .line 97
    :cond_1
    add-int/2addr v0, v2

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :array_0
    .array-data 4
        -0x1
        -0x2
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v3}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupCount()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 107
    return v0

    .line 105
    :cond_0
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v3, v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 72
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->getItemIndex(I)[I

    move-result-object v1

    .line 73
    .local v1, "indexPair":[I
    const/4 v3, 0x0

    aget v0, v1, v3

    .line 74
    .local v0, "groupIndex":I
    const/4 v3, 0x1

    aget v2, v1, v3

    .line 76
    .local v2, "itemIndex":I
    if-le v0, v4, :cond_1

    .line 77
    if-ne v2, v4, :cond_0

    .line 78
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v3, v2}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    :goto_0
    return-object v3

    .line 79
    :cond_0
    if-le v2, v4, :cond_1

    .line 80
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v3, v0, v2}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 83
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 28
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->getItemIndex(I)[I

    move-result-object v2

    .line 29
    .local v2, "indexPair":[I
    const/4 v4, 0x0

    aget v0, v2, v4

    .line 30
    .local v0, "groupIndex":I
    aget v3, v2, v7

    .line 32
    .local v3, "itemIndex":I
    const/4 v1, 0x0

    .line 33
    .local v1, "holder":Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;
    if-nez p2, :cond_3

    .line 34
    new-instance v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;

    .end local v1    # "holder":Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;-><init>(Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;)V

    .line 35
    .restart local v1    # "holder":Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 36
    iget-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    iget-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 38
    if-le v0, v6, :cond_0

    .line 39
    if-ne v3, v6, :cond_2

    .line 40
    iget-object v4, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v5, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    iget-object v6, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v5, v6}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 41
    iget-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    :goto_0
    iget-object p2, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 64
    :cond_1
    :goto_1
    return-object p2

    .line 42
    :cond_2
    if-le v3, v6, :cond_0

    .line 43
    iget-object v4, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v5, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    iget-object v6, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3, v5, v6}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 44
    iget-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;
    check-cast v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;

    .line 50
    .restart local v1    # "holder":Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;
    if-le v0, v6, :cond_1

    .line 51
    if-ne v3, v6, :cond_4

    .line 52
    iget-object v4, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v5, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    iget-object v6, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v5, v6}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 53
    iget-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 54
    iget-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 56
    :cond_4
    if-le v3, v6, :cond_1

    .line 57
    iget-object v4, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v5, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    iget-object v6, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3, v5, v6}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 58
    iget-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
