.class Lcom/smalife/activity/SetSmaQActivity$5;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->openOrClose(Landroid/widget/CheckBox;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;

.field private final synthetic val$actionKey:I

.field private final synthetic val$box:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/widget/CheckBox;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    iput-object p2, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$box:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$actionKey:I

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v6, 0x45

    const/16 v5, 0x37

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 278
    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v4}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v4

    iget-boolean v4, v4, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v4, :cond_1

    .line 279
    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 280
    iget-object v5, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 282
    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$box:Landroid/widget/CheckBox;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 316
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 282
    goto :goto_0

    .line 286
    :cond_1
    if-eqz p2, :cond_4

    .line 288
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    .line 289
    .local v0, "btyes":[B
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    iget v2, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$actionKey:I

    if-ne v2, v5, :cond_3

    .line 291
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editDisturb(Z)V

    .line 310
    :cond_2
    :goto_2
    new-instance v1, Landroid/content/Intent;

    .line 311
    const-string v2, "AskAction"

    .line 310
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, "messageIntent":Landroid/content/Intent;
    const-string v2, "action_key"

    .line 313
    iget v3, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$actionKey:I

    .line 312
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v2, "bytes"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 315
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-virtual {v2, v1}, Lcom/smalife/activity/SetSmaQActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 292
    .end local v1    # "messageIntent":Landroid/content/Intent;
    :cond_3
    iget v2, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$actionKey:I

    if-ne v2, v6, :cond_2

    .line 293
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editLightHandSet(Z)V

    goto :goto_2

    .line 299
    .end local v0    # "btyes":[B
    :cond_4
    new-array v0, v3, [B

    .line 300
    .restart local v0    # "btyes":[B
    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 301
    iget v3, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$actionKey:I

    if-ne v3, v5, :cond_5

    .line 302
    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smalife/MyApplication;->editDisturb(Z)V

    goto :goto_2

    .line 303
    :cond_5
    iget v3, p0, Lcom/smalife/activity/SetSmaQActivity$5;->val$actionKey:I

    if-ne v3, v6, :cond_2

    .line 304
    iget-object v3, p0, Lcom/smalife/activity/SetSmaQActivity$5;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v3}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smalife/MyApplication;->editLightHandSet(Z)V

    goto :goto_2
.end method
