.class Lcom/smalife/activity/SportTrackListActivity$3;
.super Ljava/lang/Object;
.source "SportTrackListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SportTrackListActivity;->initView()V
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
.field final synthetic this$0:Lcom/smalife/activity/SportTrackListActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportTrackListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportTrackListActivity$3;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
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
    .line 71
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity$3;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/SportTrackListActivity$3;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    const-class v3, Lcom/smalife/activity/SportTrackActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/smalife/activity/SportTrackListActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
