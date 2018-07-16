.class Lcom/smalife/activity/SetSmaQActivity$4;
.super Ljava/lang/Object;
.source "SetSmaQActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SetSmaQActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SetSmaQActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SetSmaQActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity$4;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 158
    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$4;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v4}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v4

    iget-boolean v4, v4, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$4;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    .line 161
    iget-object v5, p0, Lcom/smalife/activity/SetSmaQActivity$4;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-virtual {v5}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 162
    const v6, 0x7f0901bb

    .line 161
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 164
    iget-object v4, p0, Lcom/smalife/activity/SetSmaQActivity$4;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v4}, Lcom/smalife/activity/SetSmaQActivity;->access$16(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 164
    goto :goto_0

    .line 168
    :cond_1
    if-eqz p2, :cond_2

    .line 170
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    .line 176
    .local v0, "btyes":[B
    :goto_2
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$4;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-static {v2}, Lcom/smalife/activity/SetSmaQActivity;->access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/smalife/MyApplication;->editSleepDetection(Z)V

    .line 177
    new-instance v1, Landroid/content/Intent;

    .line 178
    const-string v2, "AskAction"

    .line 177
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "messageIntent":Landroid/content/Intent;
    const-string v2, "action_key"

    .line 181
    const/16 v3, 0x51

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v2, "bytes"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 183
    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity$4;->this$0:Lcom/smalife/activity/SetSmaQActivity;

    invoke-virtual {v2, v1}, Lcom/smalife/activity/SetSmaQActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 173
    .end local v0    # "btyes":[B
    .end local v1    # "messageIntent":Landroid/content/Intent;
    :cond_2
    new-array v0, v3, [B

    .restart local v0    # "btyes":[B
    goto :goto_2
.end method
