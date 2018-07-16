.class public Lcom/smalife/LocalBroadCastListener;
.super Landroid/content/BroadcastReceiver;
.source "LocalBroadCastListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    const-string v4, "sma"

    .line 15
    const/4 v5, 0x2

    .line 14
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 16
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "actionString":Ljava/lang/String;
    const-string v4, "InteractActionString"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    new-instance v1, Landroid/content/Intent;

    const-string v4, "AskAction"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, "askIntent":Landroid/content/Intent;
    const-string v4, "pair_key"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 20
    .local v2, "code_key":I
    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    .line 22
    const-string v4, "action_key"

    const/16 v5, 0x17

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    .end local v1    # "askIntent":Landroid/content/Intent;
    .end local v2    # "code_key":I
    :goto_1
    return-void

    .line 23
    .restart local v1    # "askIntent":Landroid/content/Intent;
    .restart local v2    # "code_key":I
    :cond_1
    const/16 v4, 0x21

    if-ne v2, v4, :cond_0

    .line 25
    const-string v4, "action_key"

    const/16 v5, 0x18

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 28
    .end local v1    # "askIntent":Landroid/content/Intent;
    .end local v2    # "code_key":I
    :cond_2
    const-string v4, "localAction"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1
.end method
