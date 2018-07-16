.class public Lcom/smalife/activity/PairedActivity;
.super Lcom/smalife/BaseActivity;
.source "PairedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;
    }
.end annotation


# instance fields
.field askBroadCastReceiver:Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;

.field private back_btn:Landroid/widget/ImageButton;

.field private bottom_layout:Landroid/widget/LinearLayout;

.field private cancel_btn:Landroid/widget/Button;

.field filter:Landroid/content/IntentFilter;

.field private friendAccount:Ljava/lang/String;

.field private friendName:Landroid/widget/TextView;

.field private hasLogin:Z

.field private paired_v:Landroid/widget/ImageView;

.field private sendmanager:Lcom/smalife/ablecloud/SendMsgManager;

.field private submit_btn:Landroid/widget/Button;

.field private unBond_btn:Landroid/widget/ImageButton;

.field private userAccount:Ljava/lang/String;

.field private userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/PairedActivity;->userAccount:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/PairedActivity;->friendAccount:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/activity/PairedActivity;->hasLogin:Z

    .line 138
    new-instance v0, Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;

    invoke-direct {v0, p0}, Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;-><init>(Lcom/smalife/activity/PairedActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/PairedActivity;->askBroadCastReceiver:Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;

    .line 27
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 47
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->back_btn:Landroid/widget/ImageButton;

    .line 48
    const v1, 0x7f0e0162

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->unBond_btn:Landroid/widget/ImageButton;

    .line 49
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->unBond_btn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0e0165

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->userName:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0e0166

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->friendName:Landroid/widget/TextView;

    .line 53
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->userAccount:Ljava/lang/String;

    .line 54
    const v1, 0x7f0e002b

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->cancel_btn:Landroid/widget/Button;

    .line 55
    const v1, 0x7f0e002c

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->submit_btn:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->cancel_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->submit_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f0e0167

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->bottom_layout:Landroid/widget/LinearLayout;

    .line 59
    const v1, 0x7f0e0163

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->paired_v:Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->paired_v:Landroid/widget/ImageView;

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 61
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->paired_v:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 63
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 64
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->userAccount:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getHasLogin()Z

    move-result v1

    iput-boolean v1, p0, Lcom/smalife/activity/PairedActivity;->hasLogin:Z

    .line 66
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/PairedActivity;->sendmanager:Lcom/smalife/ablecloud/SendMsgManager;

    .line 67
    return-void
.end method

.method private unBondFriend()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 115
    .local v0, "unbondMsg":Lcom/accloud/service/ACMsg;
    const-string v1, "unBondFriends"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 116
    const-string v1, "uAccount"

    iget-object v2, p0, Lcom/smalife/activity/PairedActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 117
    const-string v1, "fAccount"

    iget-object v2, p0, Lcom/smalife/activity/PairedActivity;->friendAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 118
    const-string v1, "nickName"

    iget-object v2, p0, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 119
    iget-object v1, p0, Lcom/smalife/activity/PairedActivity;->sendmanager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/activity/PairedActivity$1;

    invoke-direct {v2, p0}, Lcom/smalife/activity/PairedActivity$1;-><init>(Lcom/smalife/activity/PairedActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 92
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/PairedActivity;->finish()V

    goto :goto_0

    .line 95
    :sswitch_1
    iget-object v0, p0, Lcom/smalife/activity/PairedActivity;->bottom_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :sswitch_2
    iget-object v0, p0, Lcom/smalife/activity/PairedActivity;->bottom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 101
    :sswitch_3
    iget-object v0, p0, Lcom/smalife/activity/PairedActivity;->bottom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-boolean v0, p0, Lcom/smalife/activity/PairedActivity;->hasLogin:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/smalife/activity/PairedActivity;->unBondFriend()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/smalife/activity/PairedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x32

    .line 105
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e002b -> :sswitch_2
        0x7f0e002c -> :sswitch_3
        0x7f0e0162 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/PairedActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/smalife/activity/PairedActivity;->initUI()V

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "unBondIntent"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smalife/activity/PairedActivity;->filter:Landroid/content/IntentFilter;

    .line 44
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/smalife/activity/PairedActivity;->askBroadCastReceiver:Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/PairedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/smalife/activity/PairedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "fnickName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "fnickName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/smalife/activity/PairedActivity;->userName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/smalife/activity/PairedActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/smalife/activity/PairedActivity;->friendName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    const-string v2, "friendAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/PairedActivity;->friendAccount:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/smalife/activity/PairedActivity;->askBroadCastReceiver:Lcom/smalife/activity/PairedActivity$AskBroadCastReceiver;

    iget-object v3, p0, Lcom/smalife/activity/PairedActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/smalife/activity/PairedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method
