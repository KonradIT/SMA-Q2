.class public abstract Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;
.super Landroid/app/Activity;
.source "AbstractSmartLinkerActivity.java"

# interfaces
.implements Lcom/hiflying/smartlink/OnSmartLinkListener;


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private mIsConncting:Z

.field protected mPasswordEditText:Landroid/widget/EditText;

.field protected mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

.field protected mSsidEditText:Landroid/widget/EditText;

.field protected mStartButton:Landroid/widget/Button;

.field protected mViewHandler:Landroid/os/Handler;

.field protected mWaitingDialog:Landroid/app/ProgressDialog;

.field private mWifiChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SmartLinkerActivity"

    sput-object v0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mIsConncting:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mViewHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mIsConncting:Z

    return-void
.end method

.method static synthetic access$1(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mIsConncting:Z

    return v0
.end method

.method static synthetic access$2(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getSSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 185
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 186
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 188
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "ssid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 198
    .end local v0    # "ssid":Ljava/lang/String;
    .end local v1    # "wi":Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$6;

    invoke-direct {v1, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$6;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->initContext(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->setupSmartLinker()Lcom/hiflying/smartlink/ISmartLinker;

    move-result-object v0

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    .line 48
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 49
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    const-string v1, "hiflying_smartlinker_waiting"

    invoke-static {v1}, Lcom/hiflying/smartlink/R1;->string(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$1;

    invoke-direct {v3, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$1;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$2;

    invoke-direct {v1, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$2;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 67
    const-string v0, "activity_hiflying_sniffer_smart_linker"

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->layout(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->setContentView(I)V

    .line 68
    const-string v0, "editText_hiflying_smartlinker_ssid"

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSsidEditText:Landroid/widget/EditText;

    .line 69
    const-string v0, "editText_hiflying_smartlinker_password"

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 70
    const-string v0, "button_hiflying_smartlinker_start"

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mStartButton:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSsidEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->getSSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mStartButton:Landroid/widget/Button;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;

    invoke-direct {v1, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$3;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$4;

    invoke-direct {v0, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$4;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLinked(Lcom/hiflying/smartlink/SmartLinkedModule;)V
    .locals 2
    .param p1, "module"    # Lcom/hiflying/smartlink/SmartLinkedModule;

    .prologue
    .line 136
    sget-object v0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onLinked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$5;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;Lcom/hiflying/smartlink/SmartLinkedModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public onTimeOut()V
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;->mViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$7;

    invoke-direct {v1, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerActivity$7;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public abstract setupSmartLinker()Lcom/hiflying/smartlink/ISmartLinker;
.end method
