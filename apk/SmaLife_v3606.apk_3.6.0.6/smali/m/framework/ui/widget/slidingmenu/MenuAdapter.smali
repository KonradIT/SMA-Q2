.class public abstract Lm/framework/ui/widget/slidingmenu/MenuAdapter;
.super Ljava/lang/Object;
.source "MenuAdapter.java"


# instance fields
.field private menus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V
    .locals 1
    .param p1, "menu"    # Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method private findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 20
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 34
    :goto_0
    return-object v0

    .line 24
    :cond_0
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 34
    goto :goto_0

    .line 24
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    .line 25
    .local v0, "group":Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    if-eqz v0, :cond_1

    .line 29
    iget v3, v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    if-ne v3, p1, :cond_1

    goto :goto_0
.end method


# virtual methods
.method getGroup(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    return-object v0
.end method

.method getGroupCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public abstract getGroupView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected getItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "position"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    invoke-virtual {v0, p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->getItem(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemView(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getMenuItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object v0

    .line 114
    .local v0, "group":Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    if-nez v0, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 118
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object v1

    goto :goto_0
.end method

.method public getMenuTitle()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    iget-object v0, v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->text:Ljava/lang/String;

    return-object v0
.end method

.method public notifyDataSetChanged(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 0
    .param p1, "item"    # Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .prologue
    .line 102
    return-void
.end method

.method public onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z
    .locals 1
    .param p1, "item"    # Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSwitch(Z)V
    .locals 0
    .param p1, "menuShown"    # Z

    .prologue
    .line 110
    return-void
.end method

.method public setGroup(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object v0

    .line 39
    .local v0, "group":Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    .end local v0    # "group":Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    invoke-direct {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;-><init>()V

    .line 41
    .restart local v0    # "group":Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    iput p1, v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    .line 42
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    iput-object p2, v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->text:Ljava/lang/String;

    .line 45
    return-void
.end method

.method setGroup(Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;)V
    .locals 3
    .param p1, "group"    # Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 52
    :cond_0
    iget v2, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    invoke-direct {p0, v2}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object v0

    .line 53
    .local v0, "groupTmp":Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    if-nez v0, :cond_1

    .line 54
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 59
    .local v1, "index":I
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->menus:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setItem(ILm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "item"    # Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .prologue
    .line 64
    if-nez p2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->findGroupById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object v0

    .line 69
    .local v0, "group":Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p2}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->setItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V

    goto :goto_0
.end method
