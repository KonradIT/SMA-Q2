.class final Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
.super Ljava/lang/Object;
.source "SlidingMenuGroup.java"


# instance fields
.field id:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 51
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 51
    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .line 42
    .local v0, "item":Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    if-eqz v0, :cond_1

    .line 46
    iget v3, v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->id:I

    if-ne v3, p1, :cond_1

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method getItem(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    return-object v0
.end method

.method setItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 3
    .param p1, "item"    # Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 24
    :cond_0
    iget v2, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->id:I

    invoke-virtual {p0, v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object v1

    .line 25
    .local v1, "itemTmp":Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    iput v2, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->group:I

    .line 26
    if-nez v1, :cond_1

    .line 27
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 31
    .local v0, "index":I
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method
