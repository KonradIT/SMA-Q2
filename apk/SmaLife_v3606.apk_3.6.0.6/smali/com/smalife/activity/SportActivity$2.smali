.class Lcom/smalife/activity/SportActivity$2;
.super Ljava/lang/Object;
.source "SportActivity.java"

# interfaces
.implements Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SportActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportActivity$2;->this$0:Lcom/smalife/activity/SportActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completeRefresh(Z)V
    .locals 0
    .param p1, "isSucceed"    # Z

    .prologue
    .line 161
    return-void
.end method

.method public preRefresh()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/smalife/activity/SportActivity$2;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportActivity;->access$0(Lcom/smalife/activity/SportActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "SM07"

    iget-object v2, p0, Lcom/smalife/activity/SportActivity$2;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v2}, Lcom/smalife/activity/SportActivity;->access$0(Lcom/smalife/activity/SportActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    .local v0, "canRefresh":Z
    :goto_0
    iget-object v1, p0, Lcom/smalife/activity/SportActivity$2;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportActivity;->access$14(Lcom/smalife/activity/SportActivity;)Lcom/smalife/utils/PullToRefresthLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smalife/utils/PullToRefresthLayout;->setCanRefresh(Z)V

    .line 146
    return-void

    .line 143
    .end local v0    # "canRefresh":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startRefresh()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/smalife/activity/SportActivity$2;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportActivity;->access$14(Lcom/smalife/activity/SportActivity;)Lcom/smalife/utils/PullToRefresthLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/utils/PullToRefresthLayout;->getCanRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AskAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "sport_shouhuan_Intent":Landroid/content/Intent;
    const-string v1, "action_key"

    .line 153
    const/16 v2, 0x42

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/smalife/activity/SportActivity$2;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-virtual {v1, v0}, Lcom/smalife/activity/SportActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    .end local v0    # "sport_shouhuan_Intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
