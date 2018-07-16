.class Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PairActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/PairActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AskBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/PairActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/PairActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "actionString":Ljava/lang/String;
    const-string v4, "FriendAskActionString"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    const-string v4, "fnickName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "fnickName":Ljava/lang/String;
    const-string v4, "friendAccount"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "friendAccount":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/smalife/activity/PairedActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v3, "pairedIntent":Landroid/content/Intent;
    const-string v4, "fnickName"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v4, "friendAccount"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairActivity;

    iget-object v4, v4, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4, v2}, Lcom/smalife/MyApplication;->editFriendAccount(Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairActivity;

    iget-object v4, v4, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4, v1}, Lcom/smalife/MyApplication;->editFriendName(Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-virtual {v4, v3}, Lcom/smalife/activity/PairActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    iget-object v4, p0, Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-virtual {v4}, Lcom/smalife/activity/PairActivity;->finish()V

    .line 220
    .end local v1    # "fnickName":Ljava/lang/String;
    .end local v2    # "friendAccount":Ljava/lang/String;
    .end local v3    # "pairedIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
