.class Lcom/smalife/activity/SetSmaQActivity$14;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->syncTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$14;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iput-object p2, p0, Lcom/smalife/activity/SetSmaQActivity$14;->val$dialog:Landroid/app/Dialog;

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 728
    new-instance v0, Landroid/content/Intent;

    .line 729
    const-string v1, "AskAction"

    .line 728
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, "messageIntent":Landroid/content/Intent;
    const-string v1, "action_key"

    .line 731
    const/16 v2, 0x40

    .line 730
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$14;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-virtual {v1, v0}, Lcom/smalife/activity/SetSmaQActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 733
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$14;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 734
    return-void
.end method
