.class Lcom/smalife/activity/ClockListActivity$2;
.super Ljava/lang/Object;
.source "ClockListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/ClockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/ClockListActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/ClockListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/ClockListActivity$2;->this$0:Lcom/smalife/activity/ClockListActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "root":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$2;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-static {v2}, Lcom/smalife/activity/ClockListActivity;->access$5(Lcom/smalife/activity/ClockListActivity;)Lcom/smalife/adapter/ClockAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/smalife/adapter/ClockAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/entity/ClockEntity;

    .line 123
    .local v1, "c":Lcom/smalife/entity/ClockEntity;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$2;->this$0:Lcom/smalife/activity/ClockListActivity;

    .line 124
    const-class v3, Lcom/smalife/activity/ClockSettingActivity;

    .line 123
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v2, "isModify"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v2, "clock_entity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity$2;->this$0:Lcom/smalife/activity/ClockListActivity;

    invoke-virtual {v2, v0}, Lcom/smalife/activity/ClockListActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
