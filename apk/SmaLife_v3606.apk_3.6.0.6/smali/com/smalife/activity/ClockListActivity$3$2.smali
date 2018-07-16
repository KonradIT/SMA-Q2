.class Lcom/smalife/activity/ClockListActivity$3$2;
.super Ljava/lang/Object;
.source "ClockListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/ClockListActivity$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/ClockListActivity$3;

.field private final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/smalife/activity/ClockListActivity$3;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/ClockListActivity$3$2;->this$1:Lcom/smalife/activity/ClockListActivity$3;

    iput-wide p2, p0, Lcom/smalife/activity/ClockListActivity$3$2;->val$id:J

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity$3$2;->this$1:Lcom/smalife/activity/ClockListActivity$3;

    invoke-static {v1}, Lcom/smalife/activity/ClockListActivity$3;->access$0(Lcom/smalife/activity/ClockListActivity$3;)Lcom/smalife/activity/ClockListActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/ClockListActivity;->access$0(Lcom/smalife/activity/ClockListActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v1

    iget-wide v2, p0, Lcom/smalife/activity/ClockListActivity$3$2;->val$id:J

    invoke-virtual {v1, v2, v3}, Lcom/smalife/db/SmaDao;->delClock(J)I

    move-result v0

    .line 164
    .local v0, "rt":I
    return-void
.end method
