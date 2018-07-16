.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;->this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;->this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$3(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/BodyContainer;

    move-result-object v0

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;->this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

    invoke-static {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    invoke-static {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$4(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->scrollTo(II)V

    .line 288
    return-void
.end method
