.class Lcom/smalife/activity/SportTrackSetActivity$3;
.super Ljava/lang/Object;
.source "SportTrackSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportTrackSetActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportTrackSetActivity$3;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    iput-object p2, p0, Lcom/smalife/activity/SportTrackSetActivity$3;->val$dialog:Landroid/app/Dialog;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 189
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity$3;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smalife/activity/SportTrackSetActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void
.end method
