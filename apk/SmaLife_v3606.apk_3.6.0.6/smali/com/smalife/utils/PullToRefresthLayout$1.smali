.class Lcom/smalife/utils/PullToRefresthLayout$1;
.super Ljava/lang/Object;
.source "PullToRefresthLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/utils/PullToRefresthLayout;->completeRefresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/utils/PullToRefresthLayout;

.field private final synthetic val$isSucceed:Z


# direct methods
.method constructor <init>(Lcom/smalife/utils/PullToRefresthLayout;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->this$0:Lcom/smalife/utils/PullToRefresthLayout;

    iput-boolean p2, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->val$isSucceed:Z

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->this$0:Lcom/smalife/utils/PullToRefresthLayout;

    invoke-static {v0, v2}, Lcom/smalife/utils/PullToRefresthLayout;->access$0(Lcom/smalife/utils/PullToRefresthLayout;Z)V

    .line 140
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->this$0:Lcom/smalife/utils/PullToRefresthLayout;

    invoke-static {v0}, Lcom/smalife/utils/PullToRefresthLayout;->access$1(Lcom/smalife/utils/PullToRefresthLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->this$0:Lcom/smalife/utils/PullToRefresthLayout;

    iget-object v1, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->this$0:Lcom/smalife/utils/PullToRefresthLayout;

    invoke-static {v1}, Lcom/smalife/utils/PullToRefresthLayout;->access$2(Lcom/smalife/utils/PullToRefresthLayout;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/smalife/utils/PullToRefresthLayout;->smoothScrollTo(II)V

    .line 142
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->this$0:Lcom/smalife/utils/PullToRefresthLayout;

    invoke-static {v0}, Lcom/smalife/utils/PullToRefresthLayout;->access$3(Lcom/smalife/utils/PullToRefresthLayout;)Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->this$0:Lcom/smalife/utils/PullToRefresthLayout;

    invoke-static {v0}, Lcom/smalife/utils/PullToRefresthLayout;->access$3(Lcom/smalife/utils/PullToRefresthLayout;)Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smalife/utils/PullToRefresthLayout$1;->val$isSucceed:Z

    invoke-interface {v0, v1}, Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;->completeRefresh(Z)V

    .line 145
    :cond_0
    return-void
.end method
