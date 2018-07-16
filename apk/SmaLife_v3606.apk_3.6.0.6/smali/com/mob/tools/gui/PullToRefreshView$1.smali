.class Lcom/mob/tools/gui/PullToRefreshView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/PullToRefreshView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/PullToRefreshView;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/PullToRefreshView$1;->this$0:Lcom/mob/tools/gui/PullToRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView$1;->this$0:Lcom/mob/tools/gui/PullToRefreshView;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRefreshView;->access$000(Lcom/mob/tools/gui/PullToRefreshView;)V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView$1;->this$0:Lcom/mob/tools/gui/PullToRefreshView;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRefreshView;->access$100(Lcom/mob/tools/gui/PullToRefreshView;)V

    return-void
.end method
