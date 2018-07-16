.class public Lcom/smalife/activity/BondResultActivity;
.super Lcom/smalife/BaseActivity;
.source "BondResultActivity.java"

# interfaces
.implements Lcom/smalife/HomeKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/BondResultActivity$BleSearchListener;
    }
.end annotation


# instance fields
.field private btn_search:Landroid/widget/Button;

.field private extue_btn:Landroid/widget/Button;

.field private filter:Landroid/content/IntentFilter;

.field private homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

.field private ib_back:Landroid/widget/ImageButton;

.field private iv:Landroid/widget/ImageView;

.field private iv_long_press_tip:Landroid/widget/ImageView;

.field private noBond:Landroid/widget/TextView;

.field private notic_v:Landroid/widget/TextView;

.field private receiver:Lcom/smalife/activity/BondResultActivity$BleSearchListener;

.field private serivce_intent:Landroid/content/Intent;

.field private watch_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 172
    new-instance v0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smalife/activity/BondResultActivity$BleSearchListener;-><init>(Lcom/smalife/activity/BondResultActivity;Lcom/smalife/activity/BondResultActivity$BleSearchListener;)V

    iput-object v0, p0, Lcom/smalife/activity/BondResultActivity;->receiver:Lcom/smalife/activity/BondResultActivity$BleSearchListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/BondResultActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->btn_search:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/BondResultActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->watch_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/BondResultActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->iv_long_press_tip:Landroid/widget/ImageView;

    return-object v0
.end method

.method private findViewById()V
    .locals 4

    .prologue
    .line 40
    const v1, 0x7f0e004e

    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->noBond:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->noBond:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v1, 0x7f0e004a

    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->notic_v:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->ib_back:Landroid/widget/ImageButton;

    .line 44
    const v1, 0x7f0e0049

    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->iv_long_press_tip:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->ib_back:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v1, 0x7f0e004c

    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->btn_search:Landroid/widget/Button;

    .line 47
    const v1, 0x7f0e004d

    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->extue_btn:Landroid/widget/Button;

    .line 48
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->extue_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->filter:Landroid/content/IntentFilter;

    .line 51
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "StartBondAction"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "FinishBond"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->filter:Landroid/content/IntentFilter;

    const-string v2, "BleConnecting"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->receiver:Lcom/smalife/activity/BondResultActivity$BleSearchListener;

    iget-object v2, p0, Lcom/smalife/activity/BondResultActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/smalife/activity/BondResultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    new-instance v1, Landroid/content/Intent;

    .line 57
    const-class v2, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->serivce_intent:Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->serivce_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondResultActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    new-instance v1, Lcom/smalife/HomeKeyEventReceiver;

    invoke-direct {v1, p0}, Lcom/smalife/HomeKeyEventReceiver;-><init>(Lcom/smalife/HomeKeyListener;)V

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    .line 62
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 63
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v1, v2}, Lcom/smalife/activity/BondResultActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    const v1, 0x7f0e004b

    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/smalife/activity/BondResultActivity;->iv:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity;->iv:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 67
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 68
    return-void
.end method

.method private gotoMain()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/smalife/activity/BondResultActivity;->finish()V

    .line 154
    return-void
.end method


# virtual methods
.method public gotoActivity(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->application:Lcom/smalife/MyApplication;

    const-class v1, Lcom/smalife/activity/BondResultActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->btn_search:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->btn_search:Landroid/widget/Button;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 141
    invoke-virtual {p0}, Lcom/smalife/activity/BondResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    const/4 v1, 0x0

    .line 140
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-direct {p0}, Lcom/smalife/activity/BondResultActivity;->gotoMain()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 75
    :sswitch_0
    invoke-direct {p0}, Lcom/smalife/activity/BondResultActivity;->gotoMain()V

    goto :goto_0

    .line 80
    :sswitch_1
    invoke-direct {p0}, Lcom/smalife/activity/BondResultActivity;->gotoMain()V

    goto :goto_0

    .line 85
    :sswitch_2
    invoke-direct {p0}, Lcom/smalife/activity/BondResultActivity;->gotoMain()V

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_2
        0x7f0e004d -> :sswitch_1
        0x7f0e004e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondResultActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/smalife/activity/BondResultActivity;->findViewById()V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->receiver:Lcom/smalife/activity/BondResultActivity$BleSearchListener;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondResultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondResultActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->serivce_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondResultActivity;->stopService(Landroid/content/Intent;)Z

    .line 166
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0, v2}, Lcom/smalife/MyApplication;->editBonded(Z)V

    .line 167
    sput-boolean v2, Lcom/smalife/ble/CmdKeyValue$BLE;->firstBonded:Z

    .line 168
    sput-boolean v2, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 170
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/BondResultActivity;->watch_type:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->watch_type:Ljava/lang/String;

    const-string v1, "SMA-02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->watch_type:Ljava/lang/String;

    const-string v1, "SM02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->notic_v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/BondResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->watch_type:Ljava/lang/String;

    const-string v1, "SMA-04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->watch_type:Ljava/lang/String;

    const-string v1, "SM04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->notic_v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/BondResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->watch_type:Ljava/lang/String;

    const-string v1, "SM05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->notic_v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/BondResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    const v2, 0x7f09022d

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/smalife/activity/BondResultActivity;->watch_type:Ljava/lang/String;

    const-string v1, "SM07"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
