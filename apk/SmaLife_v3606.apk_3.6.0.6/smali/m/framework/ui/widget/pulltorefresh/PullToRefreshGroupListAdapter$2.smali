.class Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;
.super Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;
.source "PullToRefreshGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    .line 43
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-virtual {v0, p1, p2}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public getGroupTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
