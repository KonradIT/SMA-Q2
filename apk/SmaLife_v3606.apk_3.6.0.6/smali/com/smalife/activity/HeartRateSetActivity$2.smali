.class Lcom/smalife/activity/HeartRateSetActivity$2;
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
    iput-object p1, p0, Lcom/smalife/activity/HeartRateSetActivity$2;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity$2;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartRateSetActivity;->access$1(Lcom/smalife/activity/HeartRateSetActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 208
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity$2;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    iget-object v0, v0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    iget-object v1, p0, Lcom/smalife/activity/HeartRateSetActivity$2;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    invoke-static {v1}, Lcom/smalife/activity/HeartRateSetActivity;->access$2(Lcom/smalife/activity/HeartRateSetActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editRatePeriodTime(I)V

    .line 209
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity$2;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartRateSetActivity;->access$3(Lcom/smalife/activity/HeartRateSetActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity$2;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    invoke-static {v2}, Lcom/smalife/activity/HeartRateSetActivity;->access$4(Lcom/smalife/activity/HeartRateSetActivity;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity$2;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    invoke-static {v3}, Lcom/smalife/activity/HeartRateSetActivity;->access$2(Lcom/smalife/activity/HeartRateSetActivity;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    return-void
.end method
