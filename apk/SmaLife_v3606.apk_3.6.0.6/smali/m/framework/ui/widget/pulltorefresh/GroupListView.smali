.class public Lm/framework/ui/widget/pulltorefresh/GroupListView;
.super Landroid/widget/ListView;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;,
        Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

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
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public setAdapter(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .prologue
    .line 26
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;

    invoke-direct {v0, p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;-><init>(Lm/framework/ui/widget/pulltorefresh/GroupListView;Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V

    .line 110
    .local v0, "innerAdapter":Landroid/widget/BaseAdapter;
    invoke-static {p1, v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->access$0(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;Landroid/widget/BaseAdapter;)V

    .line 111
    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    return-void
.end method
