.class public Lcom/smalife/activity/BondActivity;
.super Lcom/smalife/BaseActivity;
.source "BondActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/smalife/HomeKeyListener;


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageButton;

.field private buy_btn:Landroid/widget/Button;

.field private gotoMain:Landroid/widget/TextView;

.field homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

.field private man_watch:Landroid/widget/RelativeLayout;

.field private shouhuan:Landroid/widget/RelativeLayout;

.field private userAccount:Ljava/lang/String;

.field private woman_watch:Landroid/widget/RelativeLayout;

.field private xiaoq_watch:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 48
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->woman_watch:Landroid/widget/RelativeLayout;

    .line 49
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->man_watch:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->woman_watch:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->man_watch:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->xiaoq_watch:Landroid/widget/RelativeLayout;

    .line 55
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->xiaoq_watch:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->shouhuan:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->shouhuan:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->back_btn:Landroid/widget/ImageButton;

    .line 61
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->gotoMain:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->gotoMain:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->buy_btn:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->buy_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v0, Lcom/smalife/HomeKeyEventReceiver;

    invoke-direct {v0, p0}, Lcom/smalife/HomeKeyEventReceiver;-><init>(Lcom/smalife/HomeKeyListener;)V

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    .line 68
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 69
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/BondActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method private showBLEDialog()V
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 182
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    new-instance v1, Landroid/content/Intent;

    .line 184
    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    .line 183
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "enableIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    .end local v1    # "enableIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public gotoActivity(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    const-class v1, Lcom/smalife/activity/BondActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    .line 161
    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smalife/ble/CmdKeyValue$BLE;->firstBonded:Z

    .line 163
    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    .line 164
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->initNoticSetting()V

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->stopService(Landroid/content/Intent;)Z

    .line 166
    return-void
.end method

.method public initNoticSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v1, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editMsgNotic(Z)V

    .line 173
    iget-object v1, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editLost_notice(Z)V

    .line 174
    iget-object v1, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editLongSitEnable(Z)V

    .line 175
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    iget-object v1, p0, Lcom/smalife/activity/BondActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smalife/db/SmaDao;->delAllClocks(Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onBackPressed()V

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->finish()V

    .line 194
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f090121

    const/16 v4, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    new-instance v0, Landroid/content/Intent;

    .line 75
    const-class v3, Lcom/smalife/activity/BondResultActivity;

    .line 74
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "ask_Intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 78
    :sswitch_0
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->init()V

    .line 84
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    const-string v4, "SMA-04"

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editWatchType(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v6}, Lcom/smalife/MyApplication;->editChoseSma(Z)V

    .line 86
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v5}, Lcom/smalife/MyApplication;->editChoseXiaoQ(Z)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :sswitch_1
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->init()V

    .line 96
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    const-string v4, "SMA-02"

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editWatchType(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v6}, Lcom/smalife/MyApplication;->editChoseSma(Z)V

    .line 98
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v5}, Lcom/smalife/MyApplication;->editChoseXiaoQ(Z)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    :sswitch_2
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->init()V

    .line 108
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    const-string v4, "SM05"

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editWatchType(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v6}, Lcom/smalife/MyApplication;->editChoseXiaoQ(Z)V

    .line 110
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v5}, Lcom/smalife/MyApplication;->editChoseSma(Z)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 115
    :sswitch_3
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->init()V

    .line 121
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    const-string v4, "SM07"

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editWatchType(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v6}, Lcom/smalife/MyApplication;->editChoseXiaoQ(Z)V

    .line 123
    iget-object v3, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v5}, Lcom/smalife/MyApplication;->editChoseSma(Z)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 128
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/smalife/activity/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->finish()V

    goto/16 :goto_0

    .line 133
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/smalife/activity/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->finish()V

    goto/16 :goto_0

    .line 137
    :sswitch_6
    const-string v3, "http://smawatch.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 138
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/smalife/activity/BondActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_4
        0x7f0e003d -> :sswitch_0
        0x7f0e003f -> :sswitch_1
        0x7f0e0041 -> :sswitch_2
        0x7f0e0044 -> :sswitch_3
        0x7f0e0047 -> :sswitch_6
        0x7f0e0048 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/smalife/activity/BondActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    .line 40
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/BondActivity;->userAccount:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editChoseSma(Z)V

    .line 42
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editChoseXiaoQ(Z)V

    .line 43
    invoke-direct {p0}, Lcom/smalife/activity/BondActivity;->initUI()V

    .line 44
    invoke-direct {p0}, Lcom/smalife/activity/BondActivity;->showBLEDialog()V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/BondActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iget-object v0, p0, Lcom/smalife/activity/BondActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 149
    return-void
.end method
