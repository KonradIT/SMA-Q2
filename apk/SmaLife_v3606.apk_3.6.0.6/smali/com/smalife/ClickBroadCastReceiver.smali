.class public Lcom/smalife/ClickBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClickBroadCastReceiver.java"


# instance fields
.field private actionString:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private fAccount:Ljava/lang/String;

.field private friendName:Ljava/lang/String;

.field private isAgree:I

.field private nickName:Ljava/lang/String;

.field preferences:Landroid/content/SharedPreferences;

.field private sendManager:Lcom/smalife/ablecloud/SendMsgManager;

.field private uAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/ClickBroadCastReceiver;->isAgree:I

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/ClickBroadCastReceiver;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/smalife/ClickBroadCastReceiver;->isAgree:I

    return v0
.end method

.method static synthetic access$1(Lcom/smalife/ClickBroadCastReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smalife/ClickBroadCastReceiver;->friendName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/ClickBroadCastReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smalife/ClickBroadCastReceiver;->fAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/ClickBroadCastReceiver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smalife/ClickBroadCastReceiver;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smalife/ClickBroadCastReceiver;->context:Landroid/content/Context;

    .line 28
    const-string v2, "sma"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->preferences:Landroid/content/SharedPreferences;

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "intentString":Ljava/lang/String;
    const-string v2, "matchAsk_Agree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "matchAsk_NAgree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    :cond_0
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 32
    .local v1, "nm":Landroid/app/NotificationManager;
    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 33
    const-string v2, "friendAccount"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->fAccount:Ljava/lang/String;

    .line 34
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "account"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->uAccount:Ljava/lang/String;

    .line 35
    const-string v2, "FrnickName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->friendName:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "nickName"

    const-string v4, "sma"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->nickName:Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->actionString:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->actionString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->actionString:Ljava/lang/String;

    const-string v3, "matchAsk_Agree"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    const/4 v2, 0x1

    iput v2, p0, Lcom/smalife/ClickBroadCastReceiver;->isAgree:I

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/smalife/ClickBroadCastReceiver;->watchResponse()V

    .line 47
    .end local v1    # "nm":Landroid/app/NotificationManager;
    :cond_2
    return-void

    .line 41
    .restart local v1    # "nm":Landroid/app/NotificationManager;
    :cond_3
    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->actionString:Ljava/lang/String;

    const-string v3, "matchAsk_NAgree"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    const/4 v2, 0x0

    iput v2, p0, Lcom/smalife/ClickBroadCastReceiver;->isAgree:I

    goto :goto_0
.end method

.method public watchResponse()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/ClickBroadCastReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    .line 53
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 54
    .local v0, "respMsg":Lcom/accloud/service/ACMsg;
    const-string v1, "responseAsk"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 55
    const-string v1, "nickName"

    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 56
    const-string v1, "uAccount"

    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->uAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 57
    const-string v1, "fAccount"

    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->fAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 58
    const-string v1, "fnickName"

    iget-object v2, p0, Lcom/smalife/ClickBroadCastReceiver;->friendName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 59
    const-string v1, "agree"

    iget v2, p0, Lcom/smalife/ClickBroadCastReceiver;->isAgree:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 60
    iget-object v1, p0, Lcom/smalife/ClickBroadCastReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/ClickBroadCastReceiver$1;

    invoke-direct {v2, p0}, Lcom/smalife/ClickBroadCastReceiver$1;-><init>(Lcom/smalife/ClickBroadCastReceiver;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 82
    return-void
.end method
