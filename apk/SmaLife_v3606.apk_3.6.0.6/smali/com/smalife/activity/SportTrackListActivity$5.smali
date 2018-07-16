.class Lcom/smalife/activity/SportTrackListActivity$5;
.super Ljava/lang/Object;
.source "SportTrackListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SportTrackListActivity;->showDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportTrackListActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportTrackListActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportTrackListActivity$5;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    iput-object p2, p0, Lcom/smalife/activity/SportTrackListActivity$5;->val$dialog:Landroid/app/Dialog;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity$5;->this$0:Lcom/smalife/activity/SportTrackListActivity;

    invoke-static {v0}, Lcom/smalife/activity/SportTrackListActivity;->access$1(Lcom/smalife/activity/SportTrackListActivity;)Lcom/smalife/activity/SportTrackListActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/SportTrackListActivity$MyAdapter;->notifyDataSetChanged()V

    .line 148
    iget-object v0, p0, Lcom/smalife/activity/SportTrackListActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 150
    return-void
.end method
