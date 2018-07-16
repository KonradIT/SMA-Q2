.class Lcom/smalife/activity/ClockListActivity$1;
.super Landroid/database/ContentObserver;
.source "ClockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/ClockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/ClockListActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/ClockListActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    .line 51
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 57
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    iget-object v0, v0, Lcom/smalife/activity/ClockListActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    .line 59
    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/ClockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v1}, Lcom/smalife/activity/ClockListActivity;->access$0(Lcom/smalife/activity/ClockListActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v2}, Lcom/smalife/activity/ClockListActivity;->access$1(Lcom/smalife/activity/ClockListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/db/SmaDao;->queryClockList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/ClockListActivity;->access$2(Lcom/smalife/activity/ClockListActivity;Ljava/util/ArrayList;)V

    .line 65
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v0}, Lcom/smalife/activity/ClockListActivity;->access$3(Lcom/smalife/activity/ClockListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v0}, Lcom/smalife/activity/ClockListActivity;->access$3(Lcom/smalife/activity/ClockListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v0}, Lcom/smalife/activity/ClockListActivity;->access$4(Lcom/smalife/activity/ClockListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v0}, Lcom/smalife/activity/ClockListActivity;->access$5(Lcom/smalife/activity/ClockListActivity;)Lcom/smalife/adapter/ClockAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v1}, Lcom/smalife/activity/ClockListActivity;->access$3(Lcom/smalife/activity/ClockListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/adapter/ClockAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 71
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v1}, Lcom/smalife/activity/ClockListActivity;->access$3(Lcom/smalife/activity/ClockListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/ClockListActivity;->access$6(Lcom/smalife/activity/ClockListActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity$1;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v0}, Lcom/smalife/activity/ClockListActivity;->access$4(Lcom/smalife/activity/ClockListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
