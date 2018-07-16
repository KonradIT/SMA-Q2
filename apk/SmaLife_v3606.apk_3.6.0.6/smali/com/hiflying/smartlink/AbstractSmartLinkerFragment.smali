.class public abstract Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;
.super Landroid/support/v4/app/Fragment;
.source "AbstractSmartLinkerFragment.java"

# interfaces
.implements Lcom/hiflying/smartlink/OnSmartLinkListener;


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

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
    .line 33
    const-string v0, "SmartLinkerFragment"

    sput-object v0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mIsConncting:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mViewHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mIsConncting:Z

    return-void
.end method

.method static synthetic access$1(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mIsConncting:Z

    return v0
.end method

.method static synthetic access$2(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->getSSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 208
    iget-object v3, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mAppContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 209
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 211
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 213
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

    .line 214
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 221
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
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mAppContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->initContext(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->setupSmartLinker()Lcom/hiflying/smartlink/ISmartLinker;

    move-result-object v0

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    .line 54
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v0, p0}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V

    .line 56
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 57
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWaitingDialog:Landroid/app/ProgressDialog;

    const-string v1, "hiflying_smartlinker_waiting"

    invoke-static {v1}, Lcom/hiflying/smartlink/R1;->string(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWaitingDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$1;

    invoke-direct {v3, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$1;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWaitingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$2;

    invoke-direct {v1, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$2;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 74
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$6;

    invoke-direct {v1, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$6;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const-string v0, "activity_hiflying_sniffer_smart_linker"

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->layout(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 80
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V

    .line 81
    return-void
.end method

.method public onLinked(Lcom/hiflying/smartlink/SmartLinkedModule;)V
    .locals 2
    .param p1, "module"    # Lcom/hiflying/smartlink/SmartLinkedModule;

    .prologue
    .line 161
    sget-object v0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onLinked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$5;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;Lcom/hiflying/smartlink/SmartLinkedModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public onTimeOut()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mViewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$7;

    invoke-direct {v1, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$7;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    const-string v0, "editText_hiflying_smartlinker_ssid"

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSsidEditText:Landroid/widget/EditText;

    .line 95
    const-string v0, "editText_hiflying_smartlinker_password"

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mPasswordEditText:Landroid/widget/EditText;

    .line 96
    const-string v0, "button_hiflying_smartlinker_start"

    invoke-static {v0}, Lcom/hiflying/smartlink/R1;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mStartButton:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mSsidEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->getSSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mStartButton:Landroid/widget/Button;

    new-instance v1, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;

    invoke-direct {v1, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$3;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;

    invoke-direct {v0, p0}, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment$4;-><init>(Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;)V

    iput-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinkerFragment;->mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    return-void
.end method

.method public abstract setupSmartLinker()Lcom/hiflying/smartlink/ISmartLinker;
.end method
