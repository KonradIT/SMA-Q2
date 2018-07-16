.class public Lcom/smalife/activity/SettingActivity;
.super Lcom/smalife/BaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Lcom/smalife/dfu/DfuManagerCallbacks;
.implements Lcom/smalife/ota/OtaCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/SettingActivity$BleListener;,
        Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;
    }
.end annotation


# static fields
.field private static final DFUDeviceName:Ljava/lang/String; = "DfuTarg"

.field private static final FIRMVERSION:Ljava/lang/String; = "1.7"

.field private static final FIRMVERSION_07:Ljava/lang/String; = "2.5"

.field private static final FIRMVERSION_07_8002:Ljava/lang/String; = "1.1"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final NETWORKERROR:I

.field private final RESULTRROR:I

.field private about_us:Landroid/widget/RelativeLayout;

.field private appLocalVersion:Ljava/lang/String;

.field private app_up:Landroid/widget/RelativeLayout;

.field private app_update_text:Landroid/widget/TextView;

.field private bleListener:Lcom/smalife/activity/SettingActivity$BleListener;

.field private blueIcon:Landroid/widget/ImageView;

.field private bond_tv:Landroid/widget/TextView;

.field private dao:Lcom/smalife/db/SmaDao;

.field private device_up:Landroid/widget/RelativeLayout;

.field private device_update_text:Landroid/widget/TextView;

.field private dfu:Lcom/smalife/dfu/DfuManager;

.field private firmVersionReceiver:Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;

.field private getCrashLog:Landroid/widget/RelativeLayout;

.field private handler:Landroid/os/Handler;

.field hasBond:Z

.field private hasLogin:Z

.field private header_icon:Landroid/widget/ImageView;

.field private header_url:Ljava/lang/String;

.field private help:Landroid/widget/RelativeLayout;

.field private isFirstStartService:Z

.field private isOta:Z

.field private isStartProcess:Z

.field private isSupportOta:Z

.field private isUpgradeSuccess:Z

.field public isXiaoQ:Z

.field private loadingDialog:Lcom/smalife/upgrade/ble/utils/ProgressDialog;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDfuProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mPercentage:I

.field private mTotalOTASize:I

.field private mcontext:Landroid/content/Context;

.field private myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

.field private nickName:Ljava/lang/String;

.field private nickName_v:Landroid/widget/TextView;

.field private ota:Lcom/smalife/ota/OtaManager;

.field private out_app:Landroid/widget/RelativeLayout;

.field private final requestHeaderCode:I

.field private final requestUserInfoCode:I

.field private final start_dfu_service_msg:I

.field private tv_device_settings:Landroid/widget/TextView;

.field private tv_out_login:Landroid/widget/TextView;

.field private unbond_tv:Landroid/widget/TextView;

.field private use_info:Landroid/widget/TextView;

.field user:Lcom/smalife/db/entity/UserEntity;

.field private userAccount:Ljava/lang/String;

.field private xiaoq_set:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/smalife/activity/SettingActivity;->hasBond:Z

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/smalife/activity/SettingActivity;->requestHeaderCode:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/smalife/activity/SettingActivity;->requestUserInfoCode:I

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/activity/SettingActivity;->NETWORKERROR:I

    .line 88
    const/4 v0, 0x6

    iput v0, p0, Lcom/smalife/activity/SettingActivity;->RESULTRROR:I

    .line 95
    iput v1, p0, Lcom/smalife/activity/SettingActivity;->start_dfu_service_msg:I

    .line 96
    iput-boolean v1, p0, Lcom/smalife/activity/SettingActivity;->isFirstStartService:Z

    .line 97
    iput-boolean v1, p0, Lcom/smalife/activity/SettingActivity;->isUpgradeSuccess:Z

    .line 104
    iput-boolean v1, p0, Lcom/smalife/activity/SettingActivity;->hasLogin:Z

    .line 105
    iput-boolean v1, p0, Lcom/smalife/activity/SettingActivity;->isXiaoQ:Z

    .line 108
    iput-boolean v1, p0, Lcom/smalife/activity/SettingActivity;->isStartProcess:Z

    .line 671
    new-instance v0, Lcom/smalife/activity/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$1;-><init>(Lcom/smalife/activity/SettingActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->handler:Landroid/os/Handler;

    .line 1172
    const/16 v0, 0x1388

    iput v0, p0, Lcom/smalife/activity/SettingActivity;->mTotalOTASize:I

    .line 1483
    new-instance v0, Lcom/smalife/activity/SettingActivity$2;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$2;-><init>(Lcom/smalife/activity/SettingActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1528
    new-instance v0, Lcom/smalife/activity/SettingActivity$3;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$3;-><init>(Lcom/smalife/activity/SettingActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->mDfuProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/SettingActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static synthetic access$10(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->showProgressBar()V

    return-void
.end method

.method static synthetic access$11(Lcom/smalife/activity/SettingActivity;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/smalife/activity/SettingActivity;->isFirstStartService:Z

    return v0
.end method

.method static synthetic access$12(Lcom/smalife/activity/SettingActivity;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/smalife/activity/SettingActivity;->isUpgradeSuccess:Z

    return v0
.end method

.method static synthetic access$13(Lcom/smalife/activity/SettingActivity;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/smalife/activity/SettingActivity;->isStartProcess:Z

    return v0
.end method

.method static synthetic access$14(Lcom/smalife/activity/SettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->outLogin()V

    return-void
.end method

.method static synthetic access$16(Lcom/smalife/activity/SettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->breakFunction()V

    return-void
.end method

.method static synthetic access$18(Lcom/smalife/activity/SettingActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$19(Lcom/smalife/activity/SettingActivity;Lcom/smalife/ota/OtaManager;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity;->ota:Lcom/smalife/ota/OtaManager;

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/activity/SettingActivity;Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/smalife/activity/SettingActivity;->isFirstStartService:Z

    return-void
.end method

.method static synthetic access$20(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/ota/OtaManager;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->ota:Lcom/smalife/ota/OtaManager;

    return-object v0
.end method

.method static synthetic access$21(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->updateDialog_05()V

    return-void
.end method

.method static synthetic access$22(Lcom/smalife/activity/SettingActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1376
    invoke-direct {p0, p1}, Lcom/smalife/activity/SettingActivity;->startBLEOta(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$23(Lcom/smalife/activity/SettingActivity;Lcom/smalife/activity/MyProgressDialog;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity;->myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

    return-void
.end method

.method static synthetic access$24(Lcom/smalife/activity/SettingActivity;)I
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/smalife/activity/SettingActivity;->mPercentage:I

    return v0
.end method

.method static synthetic access$25(Lcom/smalife/activity/SettingActivity;I)V
    .locals 0

    .prologue
    .line 1222
    invoke-direct {p0, p1}, Lcom/smalife/activity/SettingActivity;->exit(I)V

    return-void
.end method

.method static synthetic access$26(Lcom/smalife/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 1447
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->existApp()V

    return-void
.end method

.method static synthetic access$27(Lcom/smalife/activity/SettingActivity;Lcom/smalife/upgrade/ble/utils/ProgressDialog;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/smalife/activity/SettingActivity;->loadingDialog:Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/SettingActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/SettingActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/SettingActivity;Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/smalife/activity/SettingActivity;->isUpgradeSuccess:Z

    return-void
.end method

.method static synthetic access$7(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/activity/MyProgressDialog;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/smalife/activity/SettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1401
    invoke-direct {p0, p1}, Lcom/smalife/activity/SettingActivity;->showAttentionDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/smalife/activity/SettingActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->loadingDialog:Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    return-object v0
.end method

.method private breakFunction()V
    .locals 6

    .prologue
    .line 794
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editHasLogin(Z)V

    .line 796
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/smalife/activity/SettingActivity$9;

    invoke-direct {v3, p0}, Lcom/smalife/activity/SettingActivity$9;-><init>(Lcom/smalife/activity/SettingActivity;)V

    .line 802
    const-wide/16 v4, 0x9c4

    .line 796
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 803
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 804
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "AskAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const-string v2, "action_key"

    .line 806
    const/16 v3, 0x10

    .line 805
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    invoke-virtual {p0, v1}, Lcom/smalife/activity/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 809
    sget-object v2, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 810
    sget-object v2, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 815
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/smalife/activity/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/smalife/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 816
    return-void

    .line 810
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 811
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private checkVersion()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 868
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/smalife/MyApplication;

    .line 869
    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getFirmWareVersion()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "deviceVersion":Ljava/lang/String;
    const-string v1, "sma"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return v2

    .line 873
    :cond_1
    const-string v1, "3.0.4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private clearClientID()V
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editClientID(Ljava/lang/String;)V

    .line 779
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 780
    .local v0, "uprofile":Lcom/accloud/service/ACObject;
    const-string v1, "client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 781
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    new-instance v2, Lcom/smalife/activity/SettingActivity$8;

    invoke-direct {v2, p0}, Lcom/smalife/activity/SettingActivity$8;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/accloud/service/ACAccountMgr;->setUserProfile(Lcom/accloud/service/ACObject;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 791
    return-void
.end method

.method private closeProgressBar()V
    .locals 1

    .prologue
    .line 1097
    new-instance v0, Lcom/smalife/activity/SettingActivity$17;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$17;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1105
    return-void
.end method

.method private downloadCrashLogFromAC(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 669
    return-void
.end method

.method private existApp()V
    .locals 4

    .prologue
    .line 1448
    sget-object v1, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    .line 1449
    .local v1, "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1450
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1454
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/smalife/activity/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 1455
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->finish()V

    .line 1456
    return-void

    .line 1450
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1451
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private exit(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x1

    .line 1224
    if-ne p1, v5, :cond_0

    .line 1225
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    invoke-virtual {v4}, Lcom/smalife/dfu/DfuManager;->deletFile()V

    .line 1227
    :cond_0
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1228
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1229
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 1231
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1232
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1233
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1234
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1235
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1236
    const v5, 0x7f0901b5

    .line 1235
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1238
    const v5, 0x7f0901b7

    .line 1237
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1240
    const v5, 0x7f0901b6

    .line 1239
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    new-instance v4, Lcom/smalife/activity/SettingActivity$23;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$23;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1248
    new-instance v4, Lcom/smalife/activity/SettingActivity$24;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$24;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1279
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1280
    return-void
.end method

.method private getFirmWareVersion()V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AskAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action_key"

    .line 303
    const/16 v2, 0x35

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    return-void
.end method

.method private getHeaderIcon()V
    .locals 5

    .prologue
    .line 367
    invoke-static {}, Lcom/accloud/cloudservice/AC;->fileMgr()Lcom/accloud/service/ACFileMgr;

    move-result-object v0

    .line 368
    new-instance v1, Lcom/accloud/service/ACFileInfo;

    sget-object v2, Lcom/smalife/ablecloud/Config;->header_dir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smalife/activity/SettingActivity;->userAccount:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 369
    new-instance v4, Lcom/smalife/activity/SettingActivity$4;

    invoke-direct {v4, p0}, Lcom/smalife/activity/SettingActivity$4;-><init>(Lcom/smalife/activity/SettingActivity;)V

    .line 367
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/accloud/service/ACFileMgr;->getDownloadUrl(Lcom/accloud/service/ACFileInfo;JLcom/accloud/cloudservice/PayloadCallback;)V

    .line 423
    return-void
.end method

.method private getLocalVersionCode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1323
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, ""

    .line 1326
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1327
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "0.0"

    goto :goto_0
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f0e01a5

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->bond_tv:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->bond_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0e01a6

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->unbond_tv:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->unbond_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0e01a2

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->use_info:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->use_info:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f0e01a1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->blueIcon:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->blueIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0e01ae

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->out_app:Landroid/widget/RelativeLayout;

    .line 142
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->out_app:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f0e00e7

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->header_icon:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->header_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f0e01a0

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->nickName_v:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->nickName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->nickName_v:Landroid/widget/TextView;

    const-string v1, "welcome"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_1
    const v0, 0x7f0e01ad

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->about_us:Landroid/widget/RelativeLayout;

    .line 150
    const v0, 0x7f0e01ac

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->help:Landroid/widget/RelativeLayout;

    .line 151
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->about_us:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->help:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0e01a7

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->device_up:Landroid/widget/RelativeLayout;

    .line 154
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->device_up:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0e01a9

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->app_up:Landroid/widget/RelativeLayout;

    .line 156
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->app_up:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0e01ab

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->app_update_text:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0e01a8

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0e01a3

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->xiaoq_set:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->xiaoq_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0e01a4

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->tv_device_settings:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0e01af

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->tv_out_login:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0e01b0

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->getCrashLog:Landroid/widget/RelativeLayout;

    .line 167
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->getCrashLog:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method private outLogin()V
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAliasID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->breakFunction()V

    .line 774
    :goto_0
    return-void

    .line 749
    :cond_0
    invoke-static {p0}, Lcom/smalife/tools/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    const v0, 0x7f0900b5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 756
    :cond_1
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->clearClientID()V

    .line 757
    invoke-static {}, Lcom/accloud/cloudservice/AC;->notificationMgr()Lcom/accloud/service/ACNotificationMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getAliasID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 758
    new-instance v2, Lcom/smalife/activity/SettingActivity$7;

    invoke-direct {v2, p0}, Lcom/smalife/activity/SettingActivity$7;-><init>(Lcom/smalife/activity/SettingActivity;)V

    .line 757
    invoke-interface {v0, v1, v2}, Lcom/accloud/service/ACNotificationMgr;->removeAlias(Ljava/lang/Long;Lcom/accloud/cloudservice/VoidCallback;)V

    goto :goto_0
.end method

.method private saveMyBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 426
    sget-object v5, Lcom/smalife/utils/FileHelper$FileType;->Image:Lcom/smalife/utils/FileHelper$FileType;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smalife/activity/SettingActivity;->userAccount:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 426
    invoke-static {p0, v5, v6}, Lcom/smalife/utils/FileHelper;->createFile(Landroid/content/Context;Lcom/smalife/utils/FileHelper$FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 430
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 433
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 434
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 435
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 436
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/smalife/db/SmaDao;->updateHeaderIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v5, v4}, Lcom/smalife/MyApplication;->editHeaderIcon_url(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 439
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    .end local v0    # "dao":Lcom/smalife/db/SmaDao;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 442
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 443
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setFirmVersion()V
    .locals 10

    .prologue
    const v9, 0x7f0901c8

    const v8, 0x7f0901c7

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v2, v2, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->hasBond:Z

    if-nez v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->hasBond:Z

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getFirmWareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->getFirmWareVersion()V

    goto :goto_0

    .line 252
    :cond_3
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getFirmWareVersion()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "wareVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getFirmType()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "firmType":Ljava/lang/String;
    const-string v2, "SM07"

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 255
    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 255
    if-eqz v2, :cond_7

    .line 256
    const-string v2, "PAH8002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 257
    const-string v2, "1.1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 258
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    new-array v4, v7, [Ljava/lang/Object;

    .line 261
    aput-object v1, v4, v5

    .line 262
    const-string v5, "1.1"

    aput-object v5, v4, v6

    .line 260
    invoke-virtual {p0, v9, v4}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :cond_4
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    new-array v4, v6, [Ljava/lang/Object;

    .line 266
    aput-object v1, v4, v5

    .line 265
    invoke-virtual {p0, v8, v4}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 266
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 269
    :cond_5
    const-string v2, "2.5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 270
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    new-array v4, v7, [Ljava/lang/Object;

    .line 272
    aput-object v1, v4, v5

    const-string v5, "2.5"

    aput-object v5, v4, v6

    .line 271
    invoke-virtual {p0, v9, v4}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 272
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 274
    :cond_6
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    new-array v4, v6, [Ljava/lang/Object;

    .line 276
    aput-object v1, v4, v5

    .line 275
    invoke-virtual {p0, v8, v4}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 276
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 279
    :cond_7
    const-string v2, "SM05"

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 280
    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 280
    if-eqz v2, :cond_0

    .line 281
    const-string v2, "1.7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 282
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    new-array v4, v6, [Ljava/lang/Object;

    .line 284
    aput-object v1, v4, v5

    .line 283
    invoke-virtual {p0, v8, v4}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 286
    :cond_8
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->device_update_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    new-array v4, v7, [Ljava/lang/Object;

    .line 288
    aput-object v1, v4, v5

    const-string v5, "1.7"

    aput-object v5, v4, v6

    .line 287
    invoke-virtual {p0, v9, v4}, Lcom/smalife/activity/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showAttentionDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x400

    .line 1402
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1403
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1404
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 1406
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1407
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1408
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1409
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1410
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    new-instance v4, Lcom/smalife/activity/SettingActivity$28;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$28;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1428
    new-instance v4, Lcom/smalife/activity/SettingActivity$29;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$29;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1445
    return-void
.end method

.method private showBleLoadingProgressBar()V
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

    if-nez v0, :cond_0

    .line 1504
    new-instance v0, Lcom/smalife/activity/SettingActivity$30;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$30;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1512
    :cond_0
    return-void
.end method

.method private showBleOtaDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 1336
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1337
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1338
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 1340
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1341
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1342
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1343
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1344
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09022e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    new-instance v4, Lcom/smalife/activity/SettingActivity$25;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$25;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1353
    new-instance v4, Lcom/smalife/activity/SettingActivity$26;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$26;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1367
    return-void
.end method

.method private showOutDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 713
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 714
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 715
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 717
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 718
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 719
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 720
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 721
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 722
    const v5, 0x7f090101

    .line 721
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    new-instance v4, Lcom/smalife/activity/SettingActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$5;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    new-instance v4, Lcom/smalife/activity/SettingActivity$6;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$6;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 739
    return-void
.end method

.method private showProgressBar()V
    .locals 1

    .prologue
    .line 1515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/activity/SettingActivity;->isStartProcess:Z

    .line 1516
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

    if-nez v0, :cond_0

    .line 1517
    new-instance v0, Lcom/smalife/activity/SettingActivity$31;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$31;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1526
    :cond_0
    return-void
.end method

.method private showUpdateProgress()V
    .locals 1

    .prologue
    .line 1076
    new-instance v0, Lcom/smalife/activity/SettingActivity$15;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$15;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method

.method private declared-synchronized startBLEOta(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1377
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/smalife/activity/SettingActivity;->isOta:Z

    if-nez v0, :cond_0

    .line 1378
    const-string v0, "ota_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smalife/activity/SettingActivity;->isOta:Z

    .line 1379
    iget-boolean v0, p0, Lcom/smalife/activity/SettingActivity;->isOta:Z

    if-eqz v0, :cond_0

    .line 1381
    const-string v0, "startBLEOta>>>>"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1382
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->showBleLoadingProgressBar()V

    .line 1383
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->searchDFUDevice()V

    .line 1384
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/smalife/activity/SettingActivity$27;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SettingActivity$27;-><init>(Lcom/smalife/activity/SettingActivity;)V

    .line 1396
    const-wide/32 v2, 0x88b8

    .line 1384
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    :cond_0
    monitor-exit p0

    return-void

    .line 1377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDialog(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/16 v5, 0x400

    .line 887
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 888
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 889
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 891
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 892
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 893
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 894
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 895
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 896
    const v5, 0x7f09022e

    .line 895
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 898
    const v5, 0x7f0900cc

    .line 897
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 900
    const v5, 0x7f0900cd

    .line 899
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    new-instance v4, Lcom/smalife/activity/SettingActivity$10;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$10;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    new-instance v4, Lcom/smalife/activity/SettingActivity$11;

    invoke-direct {v4, p0, p1, v2}, Lcom/smalife/activity/SettingActivity$11;-><init>(Lcom/smalife/activity/SettingActivity;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 937
    return-void
.end method

.method private updateDialog_05()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 940
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 941
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 942
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 944
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 945
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 946
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 947
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 948
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 949
    const v5, 0x7f09022f

    .line 948
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 951
    const v5, 0x7f0900cc

    .line 950
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 953
    const v5, 0x7f090229

    .line 952
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    new-instance v4, Lcom/smalife/activity/SettingActivity$12;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$12;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    new-instance v4, Lcom/smalife/activity/SettingActivity$13;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SettingActivity$13;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 990
    return-void
.end method

.method private updateProgressBar()V
    .locals 1

    .prologue
    .line 1086
    new-instance v0, Lcom/smalife/activity/SettingActivity$16;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$16;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1094
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 997
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1072
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v9

    :cond_1
    :goto_1
    return v9

    .line 999
    :sswitch_0
    iget-boolean v10, p0, Lcom/smalife/activity/SettingActivity;->isSupportOta:Z

    if-eqz v10, :cond_1

    .line 1002
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getQota()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1003
    :cond_2
    const-string v10, "\u56fa\u4ef6\u5347\u7ea7step1"

    invoke-static {v10}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1006
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1007
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1008
    const-string v10, "\u56fa\u4ef6\u5347\u7ea7step2"

    invoke-static {v10}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 1010
    const-string v10, "ota_key"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1011
    .local v5, "isOta":Z
    if-eqz v5, :cond_0

    .line 1012
    const-string v10, "SM05"

    iget-object v11, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 1013
    invoke-virtual {v11}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v11

    .line 1012
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1013
    if-eqz v10, :cond_4

    .line 1015
    const-string v10, "toothDevice"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1016
    .local v1, "blue_tooth":Landroid/bluetooth/BluetoothDevice;
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v8

    .line 1017
    .local v8, "watchType":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1020
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    invoke-static {v10}, Lcom/smalife/dfu/DfuManager;->getDFUManager(Landroid/content/Context;)Lcom/smalife/dfu/DfuManager;

    move-result-object v10

    iput-object v10, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    .line 1021
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    invoke-virtual {v10, p0}, Lcom/smalife/dfu/DfuManager;->setGattCallbacks(Lcom/smalife/dfu/DfuManagerCallbacks;)V

    .line 1022
    if-eqz v1, :cond_0

    .line 1024
    :try_start_0
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    invoke-virtual {v10}, Lcom/smalife/dfu/DfuManager;->disconnect()V

    .line 1025
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 1026
    const-string v10, "bluetooth"

    invoke-virtual {p0, v10}, Lcom/smalife/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothManager;

    .line 1027
    .local v7, "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v7, :cond_0

    .line 1029
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 1030
    .local v6, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 1031
    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "address":Ljava/lang/String;
    const-string v10, ""

    if-eq v0, v10, :cond_1

    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1037
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_1

    .line 1040
    const-wide/16 v10, 0xbb8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 1041
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    invoke-virtual {v9}, Lcom/smalife/dfu/DfuManager;->resetStatus()V

    .line 1042
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    invoke-virtual {v9, v10, v8}, Lcom/smalife/dfu/DfuManager;->checkwatchType(Landroid/content/Context;Ljava/lang/String;)V

    .line 1043
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    invoke-virtual {v9, v10, v1}, Lcom/smalife/dfu/DfuManager;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1045
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v7    # "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    :catch_0
    move-exception v4

    .line 1046
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1049
    .end local v1    # "blue_tooth":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "watchType":Ljava/lang/String;
    :cond_4
    const-string v9, "SM07"

    .line 1050
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1051
    const-string v9, "startBLEOta(bundle)"

    invoke-static {v9}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1052
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/smalife/activity/SettingActivity$14;

    invoke-direct {v10, p0, v2}, Lcom/smalife/activity/SettingActivity$14;-><init>(Lcom/smalife/activity/SettingActivity;Landroid/os/Bundle;)V

    .line 1060
    const-wide/16 v12, 0x7d0

    .line 1052
    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1066
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "isOta":Z
    :sswitch_1
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->updateBlueStutus()V

    goto/16 :goto_0

    .line 1069
    :sswitch_2
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->setFirmVersion()V

    goto/16 :goto_0

    .line 997
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 821
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    .line 822
    if-ne p2, v6, :cond_0

    .line 823
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 824
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 825
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getHeaderIcon_url()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/smalife/activity/SettingActivity;->header_url:Ljava/lang/String;

    .line 826
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/smalife/activity/SettingActivity;->header_url:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 828
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity;->header_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 829
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity;->header_icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 843
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 835
    if-ne p2, v6, :cond_0

    .line 836
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 837
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "nickname"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, "nickName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 839
    iget-object v5, p0, Lcom/smalife/activity/SettingActivity;->nickName_v:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 449
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 635
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 452
    :sswitch_1
    iget-boolean v9, p0, Lcom/smalife/activity/SettingActivity;->hasBond:Z

    if-nez v9, :cond_1

    .line 453
    new-instance v9, Landroid/content/Intent;

    .line 454
    const-class v10, Lcom/smalife/activity/BondActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    invoke-virtual {p0, v9}, Lcom/smalife/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    .line 457
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090121

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 456
    invoke-static {v9, v10}, Lcom/smalife/tools/ShowToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :sswitch_2
    iget-boolean v9, p0, Lcom/smalife/activity/SettingActivity;->hasBond:Z

    if-eqz v9, :cond_2

    .line 462
    new-instance v9, Landroid/content/Intent;

    .line 463
    const-class v10, Lcom/smalife/activity/UnBondActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {p0, v9}, Lcom/smalife/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 465
    :cond_2
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    .line 466
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090122

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 465
    invoke-static {v9, v10}, Lcom/smalife/tools/ShowToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :sswitch_3
    new-instance v8, Landroid/content/Intent;

    .line 471
    const-class v9, Lcom/smalife/activity/UserInfoActivity;

    .line 470
    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    .local v8, "user_Intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->user:Lcom/smalife/db/entity/UserEntity;

    if-eqz v9, :cond_3

    .line 473
    const-string v9, "user"

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 475
    :cond_3
    const/4 v9, 0x2

    invoke-virtual {p0, v8, v9}, Lcom/smalife/activity/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 478
    .end local v8    # "user_Intent":Landroid/content/Intent;
    :sswitch_4
    iget-boolean v9, p0, Lcom/smalife/activity/SettingActivity;->hasLogin:Z

    if-eqz v9, :cond_4

    .line 479
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->showOutDialog()V

    goto :goto_0

    .line 481
    :cond_4
    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->context:Landroid/content/Context;

    const-class v11, Lcom/smalife/activity/LoginActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/smalife/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 485
    :sswitch_5
    iget-boolean v9, p0, Lcom/smalife/activity/SettingActivity;->hasLogin:Z

    if-eqz v9, :cond_5

    .line 486
    new-instance v4, Landroid/content/Intent;

    .line 487
    const-class v9, Lcom/smalife/activity/HeaderSettingActivity;

    .line 486
    invoke-direct {v4, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v4, "intent":Landroid/content/Intent;
    const/4 v9, 0x1

    invoke-virtual {p0, v4, v9}, Lcom/smalife/activity/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 490
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->context:Landroid/content/Context;

    const-class v11, Lcom/smalife/activity/LoginActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/smalife/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 494
    :sswitch_6
    const/4 v7, 0x0

    .line 495
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v6, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 496
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "language":Ljava/lang/String;
    const-string v9, "zh"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 498
    const-string v9, "http://www.smawatchusa.com/help"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 502
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 503
    .local v3, "help_intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/smalife/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 500
    .end local v3    # "help_intent":Landroid/content/Intent;
    :cond_6
    const-string v9, "http://www.smawatchusa.com/help3"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    .line 506
    .end local v5    # "language":Ljava/lang/String;
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "uri":Landroid/net/Uri;
    :sswitch_7
    new-instance v9, Landroid/content/Intent;

    .line 507
    const-class v10, Lcom/smalife/activity/AboutUsActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    invoke-virtual {p0, v9}, Lcom/smalife/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 511
    :sswitch_8
    iget-boolean v9, p0, Lcom/smalife/activity/SettingActivity;->hasBond:Z

    if-eqz v9, :cond_f

    .line 512
    iget-boolean v9, p0, Lcom/smalife/activity/SettingActivity;->isXiaoQ:Z

    if-eqz v9, :cond_c

    .line 514
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v9}, Lcom/smalife/MyApplication;->getFirmWareVersion()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "firmWareVersion":Ljava/lang/String;
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v9}, Lcom/smalife/MyApplication;->getFirmType()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "firmType":Ljava/lang/String;
    const-string v9, "SM05"

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 517
    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v10

    .line 516
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 517
    if-eqz v9, :cond_8

    .line 518
    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 522
    const-string v9, "1.7"

    .line 523
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getFirmWareVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 525
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    .line 526
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 527
    const v11, 0x7f0901ab

    .line 526
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 528
    const/4 v11, 0x1

    .line 524
    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 528
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 531
    :cond_7
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/smalife/activity/SettingActivity;->updateDialog(I)V

    goto/16 :goto_0

    .line 532
    :cond_8
    const-string v9, "SM07"

    .line 533
    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 534
    const-string v9, "PAH8002"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 535
    const-string v9, "1.1"

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 536
    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getFirmWareVersion()Ljava/lang/String;

    move-result-object v10

    .line 535
    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_a

    .line 538
    const v9, 0x7f090239

    .line 539
    const/4 v10, 0x0

    .line 537
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    .line 539
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 543
    :cond_9
    const-string v9, "2.5"

    iget-object v10, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 544
    invoke-virtual {v10}, Lcom/smalife/MyApplication;->getFirmWareVersion()Ljava/lang/String;

    move-result-object v10

    .line 543
    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_a

    .line 546
    const v9, 0x7f090239

    .line 547
    const/4 v10, 0x0

    .line 545
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    .line 547
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 552
    :cond_a
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v9, v9, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v9, :cond_b

    .line 554
    const v9, 0x7f0901bb

    const/4 v10, 0x0

    .line 553
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    .line 555
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 558
    :cond_b
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->showBleOtaDialog()V

    goto/16 :goto_0

    .line 562
    .end local v1    # "firmType":Ljava/lang/String;
    .end local v2    # "firmWareVersion":Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v9, v9, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v9, :cond_e

    .line 563
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->checkVersion()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 565
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/smalife/activity/SettingActivity;->updateDialog(I)V

    goto/16 :goto_0

    .line 568
    :cond_d
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    .line 569
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 570
    const v11, 0x7f0901ab

    .line 569
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 571
    const/4 v11, 0x1

    .line 567
    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 571
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 575
    :cond_e
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    .line 576
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 577
    const v11, 0x7f0901b8

    .line 576
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 578
    const/4 v11, 0x1

    .line 574
    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 578
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 582
    :cond_f
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    .line 583
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090122

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 584
    const/4 v11, 0x1

    .line 582
    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 584
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 626
    :sswitch_9
    new-instance v9, Landroid/content/Intent;

    .line 627
    const-class v10, Lcom/smalife/activity/SetSmaQActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    invoke-virtual {p0, v9}, Lcom/smalife/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 630
    :sswitch_a
    iget-object v9, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v9}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "account":Ljava/lang/String;
    const-string v0, "15989564739"

    .line 632
    invoke-direct {p0, v0}, Lcom/smalife/activity/SettingActivity;->downloadCrashLogFromAC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x7f0e00e7 -> :sswitch_5
        0x7f0e01a2 -> :sswitch_3
        0x7f0e01a3 -> :sswitch_9
        0x7f0e01a5 -> :sswitch_1
        0x7f0e01a6 -> :sswitch_2
        0x7f0e01a7 -> :sswitch_8
        0x7f0e01a9 -> :sswitch_0
        0x7f0e01ac -> :sswitch_6
        0x7f0e01ad -> :sswitch_7
        0x7f0e01ae -> :sswitch_4
        0x7f0e01b0 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->setContentView(I)V

    .line 114
    iput-object p0, p0, Lcom/smalife/activity/SettingActivity;->mcontext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->userAccount:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->initUI()V

    .line 118
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->updateBlueStutus()V

    .line 120
    new-instance v0, Lcom/smalife/activity/SettingActivity$BleListener;

    invoke-direct {v0, p0, v3}, Lcom/smalife/activity/SettingActivity$BleListener;-><init>(Lcom/smalife/activity/SettingActivity;Lcom/smalife/activity/SettingActivity$BleListener;)V

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->bleListener:Lcom/smalife/activity/SettingActivity$BleListener;

    .line 121
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->bleListener:Lcom/smalife/activity/SettingActivity$BleListener;

    new-instance v1, Landroid/content/IntentFilter;

    .line 122
    const-string v2, "BleConnecting"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/SettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    new-instance v0, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;

    invoke-direct {v0, p0, v3}, Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;-><init>(Lcom/smalife/activity/SettingActivity;Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;)V

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->firmVersionReceiver:Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;

    .line 125
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->firmVersionReceiver:Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 126
    const-string v2, "FrimWareVersionResult"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/SettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mDfuProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 128
    invoke-static {p0, v0}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->registerProgressListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V

    .line 130
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 847
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 848
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 849
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->bleListener:Lcom/smalife/activity/SettingActivity$BleListener;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 850
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->firmVersionReceiver:Lcom/smalife/activity/SettingActivity$FirmVersionReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 851
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->ota:Lcom/smalife/ota/OtaManager;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->ota:Lcom/smalife/ota/OtaManager;

    invoke-virtual {v0}, Lcom/smalife/ota/OtaManager;->disconnect()V

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    invoke-virtual {v0}, Lcom/smalife/dfu/DfuManager;->disconnect()V

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mDfuProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 857
    invoke-static {p0, v0}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->unregisterProgressListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V

    .line 859
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 1139
    packed-switch p1, :pswitch_data_0

    .line 1169
    :goto_0
    return-void

    .line 1142
    :pswitch_0
    new-instance v0, Lcom/smalife/activity/SettingActivity$19;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$19;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1152
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->closeProgressBar()V

    goto :goto_0

    .line 1156
    :pswitch_1
    new-instance v0, Lcom/smalife/activity/SettingActivity$20;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$20;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1166
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->closeProgressBar()V

    goto :goto_0

    .line 1139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFileTranfering(J)V
    .locals 5
    .param p1, "sizeTransfered"    # J

    .prologue
    .line 1116
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->dfu:Lcom/smalife/dfu/DfuManager;

    invoke-virtual {v2}, Lcom/smalife/dfu/DfuManager;->getFileSize()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/smalife/activity/SettingActivity;->mPercentage:I

    .line 1117
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->updateProgressBar()V

    .line 1118
    return-void
.end method

.method public onFileTransferCompleted()V
    .locals 1

    .prologue
    .line 1122
    new-instance v0, Lcom/smalife/activity/SettingActivity$18;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$18;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1133
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->closeProgressBar()V

    .line 1135
    return-void
.end method

.method public onFileTransferStarted()V
    .locals 0

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->showUpdateProgress()V

    .line 1112
    return-void
.end method

.method public onOTAError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editQota(Z)V

    .line 1210
    new-instance v0, Lcom/smalife/activity/SettingActivity$22;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$22;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1219
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->closeProgressBar()V

    .line 1220
    return-void
.end method

.method public onOTATranfering(I)V
    .locals 2
    .param p1, "sizeTransfered"    # I

    .prologue
    .line 1184
    mul-int/lit8 v0, p1, 0x64

    iget v1, p0, Lcom/smalife/activity/SettingActivity;->mTotalOTASize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/smalife/activity/SettingActivity;->mPercentage:I

    .line 1185
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->updateProgressBar()V

    .line 1186
    return-void
.end method

.method public onOTATransferCompleted()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editQota(Z)V

    .line 1192
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editBleVersion(Ljava/lang/String;)V

    .line 1193
    new-instance v0, Lcom/smalife/activity/SettingActivity$21;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SettingActivity$21;-><init>(Lcom/smalife/activity/SettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1204
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->closeProgressBar()V

    .line 1205
    return-void
.end method

.method public onOTATransferStarted(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1176
    if-eqz p1, :cond_0

    .line 1177
    iput p1, p0, Lcom/smalife/activity/SettingActivity;->mTotalOTASize:I

    .line 1179
    :cond_0
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->showUpdateProgress()V

    .line 1180
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onPause()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/activity/SettingActivity;->isSupportOta:Z

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 172
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->isSupportOta:Z

    .line 175
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v2

    iput-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->hasBond:Z

    .line 176
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getHasLogin()Z

    move-result v2

    iput-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->hasLogin:Z

    .line 177
    iget-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->hasBond:Z

    if-eqz v2, :cond_3

    .line 178
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->bond_tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->unbond_tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    :goto_0
    iget-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->hasLogin:Z

    if-eqz v2, :cond_4

    .line 185
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->tv_out_login:Landroid/widget/TextView;

    const v3, 0x7f0900fe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :goto_1
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v2

    iput-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->isXiaoQ:Z

    .line 191
    iget-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->isXiaoQ:Z

    if-eqz v2, :cond_6

    .line 192
    const-string v2, "SM05"

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 193
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->tv_device_settings:Landroid/widget/TextView;

    const v3, 0x7f090222

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 198
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->xiaoq_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->setFirmVersion()V

    .line 205
    :goto_3
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->getLocalVersionCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/SettingActivity;->appLocalVersion:Ljava/lang/String;

    .line 206
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->app_update_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    iget-object v4, p0, Lcom/smalife/activity/SettingActivity;->appLocalVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v2, Lcom/smalife/db/SmaDao;

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/smalife/activity/SettingActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 211
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smalife/db/SmaDao;->getUserInfo(Ljava/lang/String;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/SettingActivity;->user:Lcom/smalife/db/entity/UserEntity;

    .line 212
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->user:Lcom/smalife/db/entity/UserEntity;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getNickName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 213
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->nickName_v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v3}, Lcom/smalife/db/entity/UserEntity;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_4
    iget-boolean v2, p0, Lcom/smalife/activity/SettingActivity;->hasLogin:Z

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getHeaderIcon_url()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/SettingActivity;->header_url:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->header_url:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->header_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->getHeaderIcon()V

    .line 233
    :cond_2
    :goto_5
    return-void

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->bond_tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->unbond_tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 187
    :cond_4
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->tv_out_login:Landroid/widget/TextView;

    const v3, 0x7f0900ce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 194
    :cond_5
    const-string v2, "SM07"

    iget-object v3, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    .line 195
    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 195
    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->tv_device_settings:Landroid/widget/TextView;

    const v3, 0x7f090223

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 201
    :cond_6
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->xiaoq_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 215
    :cond_7
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->nickName_v:Landroid/widget/TextView;

    const-string v3, "welcome"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 223
    :cond_8
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->header_url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 225
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->header_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/smalife/activity/SettingActivity;->header_icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 228
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_9
    invoke-direct {p0}, Lcom/smalife/activity/SettingActivity;->getHeaderIcon()V

    goto :goto_5
.end method

.method public searchDFUDevice()V
    .locals 4

    .prologue
    const v3, 0x7f09013b

    const/4 v2, 0x0

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bond address>>>>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 1463
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SettingActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1464
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 1465
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1466
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1471
    const-string v1, "android.hardware.bluetooth_le"

    .line 1470
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1471
    if-nez v0, :cond_2

    .line 1473
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1474
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1477
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/smalife/activity/SettingActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0
.end method

.method public updateBlueStutus()V
    .locals 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->blueIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1297
    const v2, 0x7f020025

    .line 1296
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1302
    :goto_0
    return-void

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SettingActivity;->blueIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/smalife/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1300
    const v2, 0x7f020026

    .line 1299
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
