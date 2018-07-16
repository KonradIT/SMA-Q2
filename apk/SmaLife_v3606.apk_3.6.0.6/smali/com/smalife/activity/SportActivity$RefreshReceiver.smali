.class Lcom/smalife/activity/SportActivity$RefreshReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportActivity;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/smalife/activity/SportActivity$RefreshReceiver;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/smalife/activity/SportActivity$RefreshReceiver;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportActivity;->access$14(Lcom/smalife/activity/SportActivity;)Lcom/smalife/utils/PullToRefresthLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/utils/PullToRefresthLayout;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "refresh_result"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 374
    .local v0, "isSucceed":Z
    iget-object v1, p0, Lcom/smalife/activity/SportActivity$RefreshReceiver;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportActivity;->access$14(Lcom/smalife/activity/SportActivity;)Lcom/smalife/utils/PullToRefresthLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smalife/utils/PullToRefresthLayout;->completeRefresh(Z)V

    .line 376
    .end local v0    # "isSucceed":Z
    :cond_0
    return-void
.end method
