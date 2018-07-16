.class Lcom/smalife/activity/HeartRateSetActivity$1;
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
    iput-object p1, p0, Lcom/smalife/activity/HeartRateSetActivity$1;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity$1;->this$0:Lcom/smalife/activity/HeartRateSetActivity;

    invoke-static {v0, p2}, Lcom/smalife/activity/HeartRateSetActivity;->access$0(Lcom/smalife/activity/HeartRateSetActivity;I)V

    .line 200
    return-void
.end method
