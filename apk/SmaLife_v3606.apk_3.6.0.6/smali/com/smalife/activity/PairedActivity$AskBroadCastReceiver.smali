.class Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PairedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/PairedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AskBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/PairedActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/PairedActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "actionString":Ljava/lang/String;
    const-string v1, "unBondIntent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairedActivity;

    iget-object v1, v1, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editFriendAccount(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairedActivity;

    iget-object v1, v1, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editFriendName(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairedActivity;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/smalife/activity/PairActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/smalife/activity/PairedActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;->this$0:Lcom/smalife/activity/PairedActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/PairedActivity;->finish()V

    .line 151
    :cond_0
    return-void
.end method
