.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .line 64
    .local v0, "item":Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-static {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-static {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    new-instance v2, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1$1;

    invoke-direct {v2, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1$1;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;)V

    .line 77
    const-wide/16 v4, 0x1f4

    .line 73
    invoke-virtual {v1, v2, v4, v5}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
