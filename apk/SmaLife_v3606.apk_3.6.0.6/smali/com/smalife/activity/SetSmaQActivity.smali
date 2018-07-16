.class public Lcom/smalife/activity/SetSmaQActivity;
.super Lcom/smalife/BaseActivity;
.source "SetSmaQActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;
    }
.end annotation


# static fields
.field private static final BLEVERSION_05:Ljava/lang/String; = "1.5"

.field private static final DFUDeviceName:Ljava/lang/String; = "DfuTarg"

.field private static final TAG:Ljava/lang/String; = "TAG"

.field private static final start_dfu_service_msg:I


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageButton;

.field private backlight:Landroid/widget/RelativeLayout;

.field private backligths:[Ljava/lang/String;

.field private balck_time:Landroid/widget/TextView;

.field private bleVersionReceiver:Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;

.field private ble_ota:Landroid/widget/RelativeLayout;

.field private ble_version:Landroid/widget/TextView;

.field private cb_sleep_detection:Landroid/widget/CheckBox;

.field private checkedID:I

.field private get_mac:Landroid/widget/RelativeLayout;

.field handler:Landroid/os/Handler;

.field private isFirstStartService:Z

.field private isOta:Z

.field private isStartProcess:Z

.field private isSupportOta:Z

.field private isUpgradeSuccess:Z

.field private iv_disturb_go:Landroid/widget/ImageView;

.field private language_set:Landroid/widget/RelativeLayout;

.field private language_tv:Landroid/widget/TextView;

.field private languages:[Ljava/lang/String;

.field private layout_disturb:Landroid/widget/RelativeLayout;

.field private loadingDialog:Lcom/smalife/upgrade/ble/utils/ProgressDialog;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDfuProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private macAddress:Landroid/widget/TextView;

.field private message_set:Landroid/widget/RelativeLayout;

.field private myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

.field private rate_set:Landroid/widget/RelativeLayout;

.field private rl_sleep_detection:Landroid/widget/RelativeLayout;

.field private screen_set:Landroid/widget/RelativeLayout;

.field private screen_tv:Landroid/widget/TextView;

.field private screens:[Ljava/lang/String;

.field private set_time:Landroid/widget/RelativeLayout;

.field private shakes:[Ljava/lang/String;

.field private shoct_set:Landroid/widget/RelativeLayout;

.field private shoct_time:Landroid/widget/TextView;

.field private sport_track_set:Landroid/widget/RelativeLayout;

.field private status:Landroid/widget/CheckBox;

.field private tv_title:Landroid/widget/TextView;

.field private update_help:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isFirstStartService:Z

    .line 83
    iput-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isUpgradeSuccess:Z

    .line 84
    iput-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isStartProcess:Z

    .line 86
    new-instance v0, Lcom/smalife/activity/SetSmaQActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SetSmaQActivity$1;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->handler:Landroid/os/Handler;

    .line 543
    new-instance v0, Lcom/smalife/activity/SetSmaQActivity$2;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SetSmaQActivity$2;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 918
    new-instance v0, Lcom/smalife/activity/SetSmaQActivity$3;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SetSmaQActivity$3;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mDfuProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/SetSmaQActivity;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isSupportOta:Z

    return v0
.end method

.method static synthetic access$10(Lcom/smalife/activity/SetSmaQActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 870
    invoke-direct {p0, p1}, Lcom/smalife/activity/SetSmaQActivity;->showAttentionDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/upgrade/ble/utils/ProgressDialog;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->loadingDialog:Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$12(Lcom/smalife/activity/SetSmaQActivity;)V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->showProgressBar()V

    return-void
.end method

.method static synthetic access$13(Lcom/smalife/activity/SetSmaQActivity;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isFirstStartService:Z

    return v0
.end method

.method static synthetic access$14(Lcom/smalife/activity/SetSmaQActivity;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isUpgradeSuccess:Z

    return v0
.end method

.method static synthetic access$15(Lcom/smalife/activity/SetSmaQActivity;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isStartProcess:Z

    return v0
.end method

.method static synthetic access$16(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->cb_sleep_detection:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$17(Lcom/smalife/activity/SetSmaQActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/smalife/activity/SetSmaQActivity;->startBLEOta(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$18(Lcom/smalife/activity/SetSmaQActivity;I)V
    .locals 0

    .prologue
    .line 562
    iput p1, p0, Lcom/smalife/activity/SetSmaQActivity;->checkedID:I

    return-void
.end method

.method static synthetic access$19(Lcom/smalife/activity/SetSmaQActivity;)I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/smalife/activity/SetSmaQActivity;->checkedID:I

    return v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$20(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->balck_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/smalife/activity/SetSmaQActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->backligths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/smalife/activity/SetSmaQActivity;I)[B
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/smalife/activity/SetSmaQActivity;->setBlackLight(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->shoct_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/smalife/activity/SetSmaQActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->shakes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/smalife/activity/SetSmaQActivity;I)[B
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/smalife/activity/SetSmaQActivity;->setShakeTime(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screen_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/smalife/activity/SetSmaQActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screens:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/smalife/activity/SetSmaQActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->language_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/smalife/activity/SetSmaQActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->languages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/SetSmaQActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static synthetic access$30(Lcom/smalife/activity/SetSmaQActivity;Lcom/smalife/upgrade/ble/utils/ProgressDialog;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity;->loadingDialog:Lcom/smalife/upgrade/ble/utils/ProgressDialog;

    return-void
.end method

.method static synthetic access$31(Lcom/smalife/activity/SetSmaQActivity;Lcom/smalife/activity/MyProgressDialog;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smalife/activity/SetSmaQActivity;->myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

    return-void
.end method

.method static synthetic access$32(Lcom/smalife/activity/SetSmaQActivity;)V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->existApp()V

    return-void
.end method

.method static synthetic access$4(Lcom/smalife/activity/SetSmaQActivity;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/smalife/activity/SetSmaQActivity;->isFirstStartService:Z

    return-void
.end method

.method static synthetic access$5(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/SetSmaQActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$7(Lcom/smalife/activity/SetSmaQActivity;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/smalife/activity/SetSmaQActivity;->isUpgradeSuccess:Z

    return-void
.end method

.method static synthetic access$8(Lcom/smalife/activity/SetSmaQActivity;)Lcom/smalife/activity/MyProgressDialog;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/smalife/activity/SetSmaQActivity;I)V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0, p1}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    return-void
.end method

.method private downLoadMac()V
    .locals 3

    .prologue
    .line 740
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 741
    .local v0, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "getMacAddress"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v1

    .line 743
    new-instance v2, Lcom/smalife/activity/SetSmaQActivity$15;

    invoke-direct {v2, p0}, Lcom/smalife/activity/SetSmaQActivity$15;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    .line 742
    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 771
    return-void
.end method

.method private existApp()V
    .locals 4

    .prologue
    .line 860
    sget-object v1, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    .line 861
    .local v1, "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 862
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 866
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/smalife/upgrade/ble/service/DFUService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/smalife/activity/SetSmaQActivity;->stopService(Landroid/content/Intent;)Z

    .line 867
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->finish()V

    .line 868
    return-void

    .line 862
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 863
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private getBleVersion()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getBleVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->sendBleVersionCommand()V

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_version:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 135
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->tv_title:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->macAddress:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0e0195

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screen_set:Landroid/widget/RelativeLayout;

    .line 139
    const v0, 0x7f0e018a

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->rate_set:Landroid/widget/RelativeLayout;

    .line 140
    const v0, 0x7f0e0188

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->language_set:Landroid/widget/RelativeLayout;

    .line 141
    const v0, 0x7f0e0193

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->layout_disturb:Landroid/widget/RelativeLayout;

    .line 143
    const v0, 0x7f0e0190

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_ota:Landroid/widget/RelativeLayout;

    .line 144
    const v0, 0x7f0e018e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->set_time:Landroid/widget/RelativeLayout;

    .line 145
    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->shoct_set:Landroid/widget/RelativeLayout;

    .line 146
    const v0, 0x7f0e0185

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->balck_time:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->shoct_time:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0e018d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->update_help:Landroid/widget/RelativeLayout;

    .line 149
    const v0, 0x7f0e0198

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->rl_sleep_detection:Landroid/widget/RelativeLayout;

    .line 150
    const v0, 0x7f0e0199

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->cb_sleep_detection:Landroid/widget/CheckBox;

    .line 151
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->cb_sleep_detection:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getSleepDetection()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->cb_sleep_detection:Landroid/widget/CheckBox;

    .line 153
    new-instance v1, Lcom/smalife/activity/SetSmaQActivity$4;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SetSmaQActivity$4;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    const v0, 0x7f0e0184

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->backlight:Landroid/widget/RelativeLayout;

    .line 189
    const v0, 0x7f0e018c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->sport_track_set:Landroid/widget/RelativeLayout;

    .line 190
    const v0, 0x7f0e018b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->message_set:Landroid/widget/RelativeLayout;

    .line 191
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->back_btn:Landroid/widget/ImageButton;

    .line 192
    const v0, 0x7f0e019e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->get_mac:Landroid/widget/RelativeLayout;

    .line 194
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screen_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->rate_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->language_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->layout_disturb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->get_mac:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_ota:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->set_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->shoct_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->update_help:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->backlight:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->sport_track_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->message_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v0, 0x7f0e0140

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->status:Landroid/widget/CheckBox;

    .line 213
    const v0, 0x7f0e0192

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_version:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0e0189

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->language_tv:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0e0196

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screen_tv:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0e0194

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->iv_disturb_go:Landroid/widget/ImageView;

    .line 217
    return-void
.end method

.method private openOrClose(Landroid/widget/CheckBox;I)V
    .locals 2
    .param p1, "box"    # Landroid/widget/CheckBox;
    .param p2, "actionKey"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "isOpen":Z
    const/16 v1, 0x37

    if-ne p2, v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getDisturb()Z

    move-result v0

    .line 272
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    new-instance v1, Lcom/smalife/activity/SetSmaQActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/smalife/activity/SetSmaQActivity$5;-><init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/widget/CheckBox;I)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 318
    return-void

    .line 267
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getLightHandSet()Z

    move-result v0

    goto :goto_0
.end method

.method private sendBleVersionCommand()V
    .locals 3

    .prologue
    .line 783
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AskAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action_key"

    .line 785
    const/16 v2, 0x35

    .line 784
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 787
    return-void
.end method

.method private setBlackLight(I)[B
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 660
    new-array v0, v1, [B

    aput-byte v3, v0, v2

    .line 661
    .local v0, "backlight_btyes":[B
    packed-switch p1, :pswitch_data_0

    .line 678
    :goto_0
    return-object v0

    .line 663
    :pswitch_0
    new-array v0, v1, [B

    .line 664
    goto :goto_0

    .line 666
    :pswitch_1
    new-array v0, v1, [B

    .end local v0    # "backlight_btyes":[B
    const/4 v1, 0x2

    aput-byte v1, v0, v2

    .line 667
    .restart local v0    # "backlight_btyes":[B
    goto :goto_0

    .line 669
    :pswitch_2
    new-array v0, v1, [B

    .end local v0    # "backlight_btyes":[B
    aput-byte v3, v0, v2

    .line 670
    .restart local v0    # "backlight_btyes":[B
    goto :goto_0

    .line 672
    :pswitch_3
    new-array v0, v1, [B

    .end local v0    # "backlight_btyes":[B
    const/16 v1, 0x8

    aput-byte v1, v0, v2

    .line 673
    .restart local v0    # "backlight_btyes":[B
    goto :goto_0

    .line 675
    :pswitch_4
    new-array v0, v1, [B

    .end local v0    # "backlight_btyes":[B
    const/16 v1, 0xa

    aput-byte v1, v0, v2

    .restart local v0    # "backlight_btyes":[B
    goto :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setShakeTime(I)[B
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    new-array v0, v1, [B

    aput-byte v3, v0, v2

    .line 683
    .local v0, "shaketime_bytes":[B
    packed-switch p1, :pswitch_data_0

    .line 700
    :goto_0
    return-object v0

    .line 685
    :pswitch_0
    new-array v0, v1, [B

    .end local v0    # "shaketime_bytes":[B
    const/4 v1, 0x2

    aput-byte v1, v0, v2

    .line 686
    .restart local v0    # "shaketime_bytes":[B
    goto :goto_0

    .line 688
    :pswitch_1
    new-array v0, v1, [B

    .end local v0    # "shaketime_bytes":[B
    const/4 v1, 0x4

    aput-byte v1, v0, v2

    .line 689
    .restart local v0    # "shaketime_bytes":[B
    goto :goto_0

    .line 691
    :pswitch_2
    new-array v0, v1, [B

    .end local v0    # "shaketime_bytes":[B
    aput-byte v3, v0, v2

    .line 692
    .restart local v0    # "shaketime_bytes":[B
    goto :goto_0

    .line 694
    :pswitch_3
    new-array v0, v1, [B

    .end local v0    # "shaketime_bytes":[B
    const/16 v1, 0x8

    aput-byte v1, v0, v2

    .line 695
    .restart local v0    # "shaketime_bytes":[B
    goto :goto_0

    .line 697
    :pswitch_4
    new-array v0, v1, [B

    .end local v0    # "shaketime_bytes":[B
    const/16 v1, 0xa

    aput-byte v1, v0, v2

    .restart local v0    # "shaketime_bytes":[B
    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showAttentionDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x400

    .line 871
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 872
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 873
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 875
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 876
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 877
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 878
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 879
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 881
    const v5, 0x7f0900cc

    .line 880
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 883
    const v5, 0x7f0900cd

    .line 882
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    new-instance v4, Lcom/smalife/activity/SetSmaQActivity$18;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SetSmaQActivity$18;-><init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    new-instance v4, Lcom/smalife/activity/SetSmaQActivity$19;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SetSmaQActivity$19;-><init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 916
    return-void
.end method

.method private showBleLoadingProgressBar()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Lcom/smalife/activity/SetSmaQActivity$16;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SetSmaQActivity$16;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 839
    :cond_0
    return-void
.end method

.method private showBleOtaDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 424
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 425
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 426
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 428
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 429
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 430
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 431
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 432
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 433
    const v5, 0x7f09022e

    .line 432
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 435
    const v5, 0x7f0900cc

    .line 434
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 437
    const v5, 0x7f0900cd

    .line 436
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    new-instance v4, Lcom/smalife/activity/SetSmaQActivity$6;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SetSmaQActivity$6;-><init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    new-instance v4, Lcom/smalife/activity/SetSmaQActivity$7;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SetSmaQActivity$7;-><init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 458
    return-void
.end method

.method private showChoiseDialog(I[Ljava/lang/String;I)V
    .locals 3
    .param p1, "titleId"    # I
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "actionKey"    # I

    .prologue
    .line 566
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v1, :cond_0

    .line 567
    const v1, 0x7f0901bb

    invoke-direct {p0, v1}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    .line 631
    :goto_0
    return-void

    .line 570
    :cond_0
    const/16 v1, 0x38

    if-ne p3, v1, :cond_1

    .line 571
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBackLigth()I

    move-result v1

    iput v1, p0, Lcom/smalife/activity/SetSmaQActivity;->checkedID:I

    .line 580
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 584
    iget v1, p0, Lcom/smalife/activity/SetSmaQActivity;->checkedID:I

    .line 585
    new-instance v2, Lcom/smalife/activity/SetSmaQActivity$10;

    invoke-direct {v2, p0}, Lcom/smalife/activity/SetSmaQActivity$10;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    .line 584
    invoke-virtual {v0, p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 591
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 592
    const v2, 0x7f0900cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 593
    new-instance v2, Lcom/smalife/activity/SetSmaQActivity$11;

    invoke-direct {v2, p0}, Lcom/smalife/activity/SetSmaQActivity$11;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    .line 591
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 598
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 599
    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 600
    new-instance v2, Lcom/smalife/activity/SetSmaQActivity$12;

    invoke-direct {v2, p0, p3}, Lcom/smalife/activity/SetSmaQActivity$12;-><init>(Lcom/smalife/activity/SetSmaQActivity;I)V

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 572
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const/16 v1, 0x41

    if-ne p3, v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getShakeTime()I

    move-result v1

    iput v1, p0, Lcom/smalife/activity/SetSmaQActivity;->checkedID:I

    goto :goto_1

    .line 574
    :cond_2
    const/16 v1, 0x46

    if-ne p3, v1, :cond_3

    .line 575
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getVerticalScreenSet()I

    move-result v1

    iput v1, p0, Lcom/smalife/activity/SetSmaQActivity;->checkedID:I

    goto :goto_1

    .line 577
    :cond_3
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getLanguageSet()I

    move-result v1

    iput v1, p0, Lcom/smalife/activity/SetSmaQActivity;->checkedID:I

    goto :goto_1
.end method

.method private showProgressBar()V
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isStartProcess:Z

    .line 847
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->myProgressDialog:Lcom/smalife/activity/MyProgressDialog;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lcom/smalife/activity/SetSmaQActivity$17;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SetSmaQActivity$17;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 857
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 842
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 843
    return-void
.end method

.method private declared-synchronized startBLEOta(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 493
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isOta:Z

    if-nez v0, :cond_0

    .line 494
    const-string v0, "ota_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isOta:Z

    .line 495
    iget-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isOta:Z

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "*********startBLEOta*********"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->showBleLoadingProgressBar()V

    .line 500
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->searchDFUDevice()V

    .line 501
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/smalife/activity/SetSmaQActivity$9;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SetSmaQActivity$9;-><init>(Lcom/smalife/activity/SetSmaQActivity;)V

    .line 513
    const-wide/32 v2, 0x88b8

    .line 501
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :cond_0
    monitor-exit p0

    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private syncTime()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 704
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 705
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 706
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 708
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 709
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 710
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 711
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 712
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 713
    const v5, 0x7f090230

    .line 712
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 715
    const v5, 0x7f0900cc

    .line 714
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 717
    const v5, 0x7f0900cd

    .line 716
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    new-instance v4, Lcom/smalife/activity/SetSmaQActivity$13;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SetSmaQActivity$13;-><init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    new-instance v4, Lcom/smalife/activity/SetSmaQActivity$14;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SetSmaQActivity$14;-><init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 737
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 462
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 482
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 464
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getQota()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "\u84dd\u7259\u5347\u7ea7"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/smalife/activity/SetSmaQActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/smalife/activity/SetSmaQActivity$8;-><init>(Lcom/smalife/activity/SetSmaQActivity;Landroid/os/Message;)V

    .line 475
    const-wide/16 v2, 0x7d0

    .line 466
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 479
    :pswitch_1
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->getBleVersion()V

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0901bb

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 332
    :sswitch_0
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v0, :cond_1

    .line 333
    invoke-direct {p0, v2}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    goto :goto_0

    .line 336
    :cond_1
    const v0, 0x7f090228

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->screens:[Ljava/lang/String;

    .line 337
    const/16 v2, 0x46

    .line 336
    invoke-direct {p0, v0, v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->showChoiseDialog(I[Ljava/lang/String;I)V

    goto :goto_0

    .line 340
    :sswitch_1
    const-string v0, "SM07"

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    .line 341
    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v0, :cond_2

    .line 343
    invoke-direct {p0, v2}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    goto :goto_0

    .line 346
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 347
    const-class v1, Lcom/smalife/activity/NoDisturbActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 351
    :sswitch_2
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v0, :cond_3

    .line 352
    invoke-direct {p0, v2}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    goto :goto_0

    .line 355
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 356
    const-class v1, Lcom/smalife/activity/HeartRateSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 359
    :sswitch_3
    const v0, 0x7f090225

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->languages:[Ljava/lang/String;

    .line 360
    const/16 v2, 0x47

    .line 359
    invoke-direct {p0, v0, v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->showChoiseDialog(I[Ljava/lang/String;I)V

    goto :goto_0

    .line 363
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    .line 364
    const-class v1, Lcom/smalife/activity/SportTrackSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 367
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    .line 368
    const-class v1, Lcom/smalife/activity/MessageSetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 371
    :sswitch_6
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->finish()V

    goto :goto_0

    .line 374
    :sswitch_7
    const v0, 0x7f090224

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->backligths:[Ljava/lang/String;

    .line 375
    const/16 v2, 0x38

    .line 374
    invoke-direct {p0, v0, v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->showChoiseDialog(I[Ljava/lang/String;I)V

    goto :goto_0

    .line 378
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/UpdateHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 381
    :sswitch_9
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v0, :cond_4

    .line 382
    invoke-direct {p0, v2}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    goto/16 :goto_0

    .line 385
    :cond_4
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->syncTime()V

    goto/16 :goto_0

    .line 388
    :sswitch_a
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 389
    const-string v0, "SM05"

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    .line 390
    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 390
    if-eqz v0, :cond_7

    .line 391
    const-string v0, "1.5"

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBleVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    const v0, 0x7f090239

    invoke-direct {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    goto/16 :goto_0

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v0, :cond_6

    .line 396
    invoke-direct {p0, v2}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    goto/16 :goto_0

    .line 399
    :cond_6
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->showBleOtaDialog()V

    goto/16 :goto_0

    .line 400
    :cond_7
    const-string v0, "SM07"

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    .line 401
    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 409
    :cond_8
    const v0, 0x7f090122

    invoke-direct {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->showToast(I)V

    goto/16 :goto_0

    .line 413
    :sswitch_b
    const v0, 0x7f09023d

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->shakes:[Ljava/lang/String;

    .line 414
    const/16 v2, 0x41

    .line 413
    invoke-direct {p0, v0, v1, v2}, Lcom/smalife/activity/SetSmaQActivity;->showChoiseDialog(I[Ljava/lang/String;I)V

    .line 416
    :sswitch_c
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->downLoadMac()V

    goto/16 :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_6
        0x7f0e0184 -> :sswitch_7
        0x7f0e0186 -> :sswitch_b
        0x7f0e0188 -> :sswitch_3
        0x7f0e018a -> :sswitch_2
        0x7f0e018b -> :sswitch_5
        0x7f0e018c -> :sswitch_4
        0x7f0e018d -> :sswitch_8
        0x7f0e018e -> :sswitch_9
        0x7f0e0190 -> :sswitch_a
        0x7f0e0193 -> :sswitch_1
        0x7f0e0195 -> :sswitch_0
        0x7f0e019e -> :sswitch_c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->requestWindowFeature(I)Z

    .line 118
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    .line 120
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->backligths:[Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->shakes:[Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->languages:[Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screens:[Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->initView()V

    .line 128
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mDfuProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 127
    invoke-static {p0, v0}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->registerProgressListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V

    .line 129
    new-instance v0, Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;-><init>(Lcom/smalife/activity/SetSmaQActivity;Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;)V

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->bleVersionReceiver:Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;

    .line 130
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->bleVersionReceiver:Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 131
    const-string v2, "FrimWareVersionResult"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 324
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mDfuProgressListener:Lcom/smalife/upgrade/ble/utils/DfuProgressListener;

    .line 323
    invoke-static {p0, v0}, Lcom/smalife/upgrade/ble/utils/DfuServiceListenerHelper;->unregisterProgressListener(Landroid/content/Context;Lcom/smalife/upgrade/ble/utils/DfuProgressListener;)V

    .line 325
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->bleVersionReceiver:Lcom/smalife/activity/SetSmaQActivity$BLEVersionReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onPause()V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isSupportOta:Z

    .line 261
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 221
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/activity/SetSmaQActivity;->isSupportOta:Z

    .line 223
    const-string v0, "SM05"

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/smalife/activity/SetSmaQActivity;->getBleVersion()V

    .line 225
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->setBLEVersion()V

    .line 226
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->tv_title:Landroid/widget/TextView;

    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screen_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->rate_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->status:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->iv_disturb_go:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->rl_sleep_detection:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_ota:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->status:Landroid/widget/CheckBox;

    const/16 v1, 0x37

    invoke-direct {p0, v0, v1}, Lcom/smalife/activity/SetSmaQActivity;->openOrClose(Landroid/widget/CheckBox;I)V

    .line 255
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->tv_title:Landroid/widget/TextView;

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screen_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->rate_set:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->screen_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->screens:[Ljava/lang/String;

    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getVerticalScreenSet()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->status:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->iv_disturb_go:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->rl_sleep_detection:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_ota:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public searchDFUDevice()V
    .locals 4

    .prologue
    const v3, 0x7f09013b

    const/4 v2, 0x0

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bond address>>>>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 523
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SetSmaQActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 524
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 526
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 527
    const-string v1, "android.hardware.bluetooth_le"

    .line 526
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 527
    if-nez v0, :cond_1

    .line 529
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smalife/activity/SetSmaQActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 537
    :cond_3
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setBLEVersion()V
    .locals 5

    .prologue
    .line 790
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBleVersion()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "bleVersion":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_version:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    const-string v1, "SM05"

    iget-object v2, p0, Lcom/smalife/activity/SetSmaQActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    const-string v1, "1.5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 797
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_version:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Lcom/smalife/activity/SetSmaQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 799
    const v4, 0x7f0901c6

    .line 798
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 799
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 800
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/smalife/activity/SetSmaQActivity;->ble_version:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    const v3, 0x7f0901c9

    invoke-virtual {p0, v3}, Lcom/smalife/activity/SetSmaQActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 804
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 805
    const v3, 0x7f0901ca

    invoke-virtual {p0, v3}, Lcom/smalife/activity/SetSmaQActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 806
    const-string v3, "1.5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setLanguage(I)[B
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 647
    new-array v0, v2, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    .line 648
    .local v0, "language_bytes":[B
    packed-switch p1, :pswitch_data_0

    .line 656
    :goto_0
    return-object v0

    .line 650
    :pswitch_0
    new-array v0, v2, [B

    .line 651
    goto :goto_0

    .line 653
    :pswitch_1
    new-array v0, v2, [B

    .end local v0    # "language_bytes":[B
    aput-byte v2, v0, v3

    .restart local v0    # "language_bytes":[B
    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setScreen(I)[B
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 634
    new-array v0, v2, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    .line 635
    .local v0, "language_bytes":[B
    packed-switch p1, :pswitch_data_0

    .line 643
    :goto_0
    return-object v0

    .line 637
    :pswitch_0
    new-array v0, v2, [B

    .line 638
    goto :goto_0

    .line 640
    :pswitch_1
    new-array v0, v2, [B

    .end local v0    # "language_bytes":[B
    aput-byte v2, v0, v3

    .restart local v0    # "language_bytes":[B
    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
