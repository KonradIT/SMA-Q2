.class Lcom/smalife/activity/SportTrackSetActivity$4;
.super Ljava/lang/Object;
.source "SportTrackSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SportTrackSetActivity;->openGPSDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportTrackSetActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportTrackSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportTrackSetActivity$4;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity$4;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/SportTrackSetActivity;->access$1(Lcom/smalife/activity/SportTrackSetActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/SportTrackSetActivity$4;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportTrackSetActivity;->access$2(Lcom/smalife/activity/SportTrackSetActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    return-void
.end method
