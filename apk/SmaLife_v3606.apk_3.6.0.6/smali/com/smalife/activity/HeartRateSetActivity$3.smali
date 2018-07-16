.class Lcom/smalife/activity/HeartRateSetActivity$3;
.super Ljava/lang/Object;
.source "HeartRateSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/HeartRateSetActivity;->showDetectionIntervalDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartRateSetActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/HeartRateSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/HeartRateSetActivity$3;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 221
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity$3;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartRateSetActivity;->access$1(Lcom/smalife/activity/HeartRateSetActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 222
    return-void
.end method
