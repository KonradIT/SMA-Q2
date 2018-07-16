.class Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;
.super Ljava/lang/Object;
.source "PullToRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 48
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    invoke-static {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 49
    return-void
.end method
