.class Lcom/smalife/ClickBroadCastReceiver$1;
.super Ljava/lang/Object;
.source "ClickBroadCastReceiver.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ClickBroadCastReceiver;->watchResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ClickBroadCastReceiver;


# direct methods
.method constructor <init>(Lcom/smalife/ClickBroadCastReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 79
    const-string v0, "ljh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 6
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    const/high16 v5, 0x10000000

    .line 63
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v2}, Lcom/smalife/ClickBroadCastReceiver;->access$0(Lcom/smalife/ClickBroadCastReceiver;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 64
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    iget-object v2, v2, Lcom/smalife/ClickBroadCastReceiver;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "friendName"

    iget-object v4, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v4}, Lcom/smalife/ClickBroadCastReceiver;->access$1(Lcom/smalife/ClickBroadCastReceiver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    iget-object v2, v2, Lcom/smalife/ClickBroadCastReceiver;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "friend_Account"

    iget-object v4, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v4}, Lcom/smalife/ClickBroadCastReceiver;->access$2(Lcom/smalife/ClickBroadCastReceiver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v2}, Lcom/smalife/ClickBroadCastReceiver;->access$3(Lcom/smalife/ClickBroadCastReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/smalife/activity/PairedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, "pairedIntent":Landroid/content/Intent;
    const-string v2, "fnickName"

    iget-object v3, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v3}, Lcom/smalife/ClickBroadCastReceiver;->access$1(Lcom/smalife/ClickBroadCastReceiver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "friendAccount"

    iget-object v3, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v3}, Lcom/smalife/ClickBroadCastReceiver;->access$2(Lcom/smalife/ClickBroadCastReceiver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v2}, Lcom/smalife/ClickBroadCastReceiver;->access$3(Lcom/smalife/ClickBroadCastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    .end local v1    # "pairedIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v2}, Lcom/smalife/ClickBroadCastReceiver;->access$3(Lcom/smalife/ClickBroadCastReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/smalife/activity/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "goMainIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver$1;->this$0:Lcom/smalife/ClickBroadCastReceiver;

    invoke-static {v2}, Lcom/smalife/ClickBroadCastReceiver;->access$3(Lcom/smalife/ClickBroadCastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ClickBroadCastReceiver$1;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
