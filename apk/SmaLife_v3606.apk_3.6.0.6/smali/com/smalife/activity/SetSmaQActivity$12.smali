.class Lcom/smalife/activity/SetSmaQActivity$12;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->showChoiseDialog(I[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;

.field private final synthetic val$actionKey:I


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iput p2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->val$actionKey:I

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 604
    iget v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->val$actionKey:I

    const/16 v3, 0x38

    if-ne v2, v3, :cond_0

    .line 605
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editBackLigth(I)V

    .line 606
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$20(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$21(Lcom/smalife/activity/SetSmaQActivity;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v4}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/smalife/activity/SetSmaQActivity;->access$22(Lcom/smalife/activity/SetSmaQActivity;I)[B

    move-result-object v0

    .line 622
    .local v0, "bytes":[B
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 623
    const-string v2, "AskAction"

    .line 622
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v1, "messageIntent":Landroid/content/Intent;
    const-string v2, "action_key"

    iget v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->val$actionKey:I

    .line 624
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v2, "bytes"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 627
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-virtual {v2, v1}, Lcom/smalife/activity/SetSmaQActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 628
    return-void

    .line 608
    .end local v0    # "bytes":[B
    .end local v1    # "messageIntent":Landroid/content/Intent;
    :cond_0
    iget v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->val$actionKey:I

    const/16 v3, 0x41

    if-ne v2, v3, :cond_1

    .line 609
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editShakeTime(I)V

    .line 610
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$23(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$24(Lcom/smalife/activity/SetSmaQActivity;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v4}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/smalife/activity/SetSmaQActivity;->access$25(Lcom/smalife/activity/SetSmaQActivity;I)[B

    move-result-object v0

    .line 612
    .restart local v0    # "bytes":[B
    goto :goto_0

    .end local v0    # "bytes":[B
    :cond_1
    iget v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->val$actionKey:I

    const/16 v3, 0x46

    if-ne v2, v3, :cond_2

    .line 613
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editVerticalScreenSet(I)V

    .line 614
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$26(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$27(Lcom/smalife/activity/SetSmaQActivity;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v4}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smalife/activity/SetSmaQActivity;->setScreen(I)[B

    move-result-object v0

    .line 616
    .restart local v0    # "bytes":[B
    goto/16 :goto_0

    .line 617
    .end local v0    # "bytes":[B
    :cond_2
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editLanguageSet(I)V

    .line 618
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$28(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$29(Lcom/smalife/activity/SetSmaQActivity;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v4}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$12;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$19(Lcom/smalife/activity/SetSmaQActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smalife/activity/SetSmaQActivity;->setLanguage(I)[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto/16 :goto_0
.end method
