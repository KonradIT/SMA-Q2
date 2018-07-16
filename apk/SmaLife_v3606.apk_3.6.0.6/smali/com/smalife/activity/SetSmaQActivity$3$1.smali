.class Lcom/smalife/activity/SetSmaQActivity$3$1;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity$3;->onDfuCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/activity/SetSmaQActivity$3;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 926
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v2

    .line 927
    const-class v3, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 926
    invoke-virtual {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->stopService(Landroid/content/Intent;)Z

    .line 928
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->access$7(Lcom/smalife/activity/SetSmaQActivity;Z)V

    .line 929
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$8(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$8(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/activity/MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/activity/MyProgressDialog;->colseDialog()V

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editBleVersion(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v0

    const v1, 0x7f090235

    invoke-static {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->access$9(Lcom/smalife/activity/SetSmaQActivity;I)V

    .line 934
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v0}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity$3$1;->this$1:Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-static {v1}, Lcom/smalife/activity/SetSmaQActivity$3;->access$0(Lcom/smalife/activity/SetSmaQActivity$3;)Lcom/smalife/activity/SetSmaQActivity;

    move-result-object v1

    const v2, 0x7f090238

    invoke-virtual {v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->access$10(Lcom/smalife/activity/SetSmaQActivity;Ljava/lang/String;)V

    .line 935
    return-void
.end method
