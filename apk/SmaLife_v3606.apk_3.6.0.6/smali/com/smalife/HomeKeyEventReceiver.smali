.class public Lcom/smalife/HomeKeyEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeKeyEventReceiver.java"


# instance fields
.field SYSTEM_HOME_KEY:Ljava/lang/String;

.field SYSTEM_HOME_KEY_LONG:Ljava/lang/String;

.field SYSTEM_REASON:Ljava/lang/String;

.field private homeListener:Lcom/smalife/HomeKeyListener;


# direct methods
.method public constructor <init>(Lcom/smalife/HomeKeyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/smalife/HomeKeyListener;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const-string v0, "reason"

    iput-object v0, p0, Lcom/smalife/HomeKeyEventReceiver;->SYSTEM_REASON:Ljava/lang/String;

    .line 13
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/smalife/HomeKeyEventReceiver;->SYSTEM_HOME_KEY:Ljava/lang/String;

    .line 14
    const-string v0, "recentapps"

    iput-object v0, p0, Lcom/smalife/HomeKeyEventReceiver;->SYSTEM_HOME_KEY_LONG:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/smalife/HomeKeyEventReceiver;->homeListener:Lcom/smalife/HomeKeyListener;

    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    iget-object v4, p0, Lcom/smalife/HomeKeyEventReceiver;->SYSTEM_REASON:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "reason":Ljava/lang/String;
    iget-object v4, p0, Lcom/smalife/HomeKeyEventReceiver;->SYSTEM_HOME_KEY:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 26
    iget-object v4, p0, Lcom/smalife/HomeKeyEventReceiver;->homeListener:Lcom/smalife/HomeKeyListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "acName":Ljava/lang/String;
    const-string v4, "com.smalife.activity.MainActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    new-instance v2, Landroid/content/Intent;

    const-string v4, "AskAction"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "askIntent":Landroid/content/Intent;
    const-string v4, "action_key"

    const/16 v5, 0x16

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    .end local v2    # "askIntent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/smalife/HomeKeyEventReceiver;->homeListener:Lcom/smalife/HomeKeyListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/smalife/HomeKeyListener;->gotoActivity(Z)V

    .line 37
    .end local v0    # "acName":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 33
    .restart local v3    # "reason":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/smalife/HomeKeyEventReceiver;->SYSTEM_HOME_KEY_LONG:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method
