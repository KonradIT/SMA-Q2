.class Lcom/smalife/activity/SportTrackSetActivity$5;
.super Ljava/lang/Object;
.source "SportTrackSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SportTrackSetActivity;->closeGPSDialog()V
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
    iput-object p1, p0, Lcom/smalife/activity/SportTrackSetActivity$5;->this$0:Lcom/smalife/activity/SportTrackSetActivity;

    iput-object p2, p0, Lcom/smalife/activity/SportTrackSetActivity$5;->val$dialog:Landroid/app/Dialog;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 216
    return-void
.end method