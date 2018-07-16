.class public Lcom/smalife/activity/LeadingActivity;
.super Lcom/smalife/BaseActivity;
.source "LeadingActivity.java"


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private dao:Lcom/smalife/db/SmaDao;

.field private mHandler:Landroid/os/Handler;

.field private final msg_go:I

.field private password:Ljava/lang/String;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/activity/LeadingActivity;->msg_go:I

    .line 75
    new-instance v0, Lcom/smalife/activity/LeadingActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/LeadingActivity$1;-><init>(Lcom/smalife/activity/LeadingActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/LeadingActivity;->mHandler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity;->application:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/db/SmaDao;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity;->dao:Lcom/smalife/db/SmaDao;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LeadingActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/smalife/activity/LeadingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/LeadingActivity;->application:Lcom/smalife/MyApplication;

    .line 36
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/LeadingActivity;->userAccount:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccountPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/LeadingActivity;->password:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smalife/ble/CmdKeyValue$BLE;->firstBonded:Z

    .line 39
    invoke-static {}, Lcom/accloud/cloudservice/AC;->notificationMgr()Lcom/accloud/service/ACNotificationMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/accloud/service/ACNotificationMgr;->init()V

    .line 41
    new-instance v0, Lcom/smalife/db/SmaDao;

    iget-object v1, p0, Lcom/smalife/activity/LeadingActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/LeadingActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 46
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 54
    iget-object v3, p0, Lcom/smalife/activity/LeadingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getCurActivtiy()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 58
    .local v2, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/smalife/activity/LeadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/smalife/activity/LeadingActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2    # "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    iget-object v3, p0, Lcom/smalife/activity/LeadingActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
