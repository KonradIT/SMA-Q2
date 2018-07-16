.class public Lcom/accloud/cloudservice/ACDeviceActivator;
.super Ljava/lang/Object;
.source "ACDeviceActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/accloud/cloudservice/ACDeviceActivator$Receive;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ACDeviceActivator"


# instance fields
.field private AuthModeAutoSwitch:B

.field private AuthModeOpen:B

.field private AuthModeShared:B

.field private AuthModeWPA:B

.field private AuthModeWPA1PSKWPA2PSK:B

.field private AuthModeWPA1WPA2:B

.field private AuthModeWPA2:B

.field private AuthModeWPA2PSK:B

.field private AuthModeWPANone:B

.field private AuthModeWPAPSK:B

.field private IoTManager:Lmediatek/android/IoTManager/IoTManagerNative;

.field SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

.field SmartConfig:Lcom/integrity_project/smartconfiglib/SmartConfig;

.field TimesupFlag_cfg:Z

.field private bssid:Ljava/lang/String;

.field connection:Ljava/lang/Thread;

.field private deviceType:I

.field elapi:Lcom/mxchip/easylink/EasyLinkAPI;

.field private flag:Z

.field handler:Landroid/os/Handler;

.field iSmartConfig:Lcom/winnermicro/smartconfig/ISmartConfig;

.field private isAbleLink:Z

.field private mAuthMode:B

.field private mAuthString:Ljava/lang/String;

.field mEsptouchTask:Lcom/espressif/iot/esptouch/IEsptouchTask;

.field protected mSnifferSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field receive:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

.field sdk:Lyhq/jad/easysdk/EasySdk;

.field sendUdpThread:Lcom/AI6060H/SendUdpThread;

.field sniffer:Lcom/wukoon/api/Sniffer;

.field private ssid:Ljava/lang/String;

.field xlwDevice:Lcom/xlwtech/util/XlwDevice;

.field xmitter:Lcom/MARVELL/xmitterTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/accloud/cloudservice/ACDeviceActivator;-><init>(I)V

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "deviceType"    # I

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-byte v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeOpen:B

    .line 52
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeShared:B

    .line 53
    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeAutoSwitch:B

    .line 54
    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA:B

    .line 55
    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPAPSK:B

    .line 56
    const/4 v1, 0x5

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPANone:B

    .line 57
    const/4 v1, 0x6

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA2:B

    .line 58
    const/4 v1, 0x7

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA2PSK:B

    .line 59
    const/16 v1, 0x8

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA1WPA2:B

    .line 60
    const/16 v1, 0x9

    iput-byte v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA1PSKWPA2PSK:B

    .line 88
    iput-boolean v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->flag:Z

    .line 89
    iput-boolean v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->isAbleLink:Z

    .line 96
    iput p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->deviceType:I

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    sget-object v1, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 167
    return-void

    .line 99
    :pswitch_1
    new-instance v1, Lmediatek/android/IoTManager/IoTManagerNative;

    invoke-direct {v1}, Lmediatek/android/IoTManager/IoTManagerNative;-><init>()V

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->IoTManager:Lmediatek/android/IoTManager/IoTManagerNative;

    .line 100
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->IoTManager:Lmediatek/android/IoTManager/IoTManagerNative;

    invoke-virtual {v1}, Lmediatek/android/IoTManager/IoTManagerNative;->InitSmartConnection()I

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-static {}, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;->getInstance()Lcom/hiflying/smartlink/v7/MulticastSmartLinker;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mSnifferSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    goto :goto_0

    .line 106
    :pswitch_3
    new-instance v1, Lcom/mxchip/easylink/EasyLinkAPI;

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mxchip/easylink/EasyLinkAPI;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->elapi:Lcom/mxchip/easylink/EasyLinkAPI;

    goto :goto_0

    .line 109
    :pswitch_4
    new-instance v1, Lcom/MARVELL/xmitterTask;

    invoke-direct {v1}, Lcom/MARVELL/xmitterTask;-><init>()V

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    goto :goto_0

    .line 112
    :pswitch_5
    invoke-static {}, Lcom/wukoon/api/Sniffer;->getInstance()Lcom/wukoon/api/Sniffer;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sniffer:Lcom/wukoon/api/Sniffer;

    goto :goto_0

    .line 117
    :pswitch_6
    new-instance v0, Lcom/winnermicro/smartconfig/SmartConfigFactory;

    invoke-direct {v0}, Lcom/winnermicro/smartconfig/SmartConfigFactory;-><init>()V

    .line 119
    .local v0, "factory":Lcom/winnermicro/smartconfig/SmartConfigFactory;
    sget-object v1, Lcom/winnermicro/smartconfig/ConfigType;->UDP:Lcom/winnermicro/smartconfig/ConfigType;

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/winnermicro/smartconfig/SmartConfigFactory;->createSmartConfig(Lcom/winnermicro/smartconfig/ConfigType;Landroid/content/Context;)Lcom/winnermicro/smartconfig/ISmartConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->iSmartConfig:Lcom/winnermicro/smartconfig/ISmartConfig;

    goto :goto_0

    .line 122
    .end local v0    # "factory":Lcom/winnermicro/smartconfig/SmartConfigFactory;
    :pswitch_7
    new-instance v1, Lyhq/jad/easysdk/EasySdk;

    invoke-direct {v1}, Lyhq/jad/easysdk/EasySdk;-><init>()V

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sdk:Lyhq/jad/easysdk/EasySdk;

    goto :goto_0

    .line 125
    :pswitch_8
    const-string v1, "simpleconfiglib"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-direct {v1}, Lcom/realtek/simpleconfiglib/SCLibrary;-><init>()V

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    .line 127
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v1}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_init()V

    .line 128
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/realtek/simpleconfiglib/SCLibrary;->WifiInit(Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    new-instance v2, Lcom/accloud/cloudservice/ACDeviceActivator$1;

    invoke-direct {v2, p0}, Lcom/accloud/cloudservice/ACDeviceActivator$1;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator;)V

    iput-object v2, v1, Lcom/realtek/simpleconfiglib/SCLibrary;->TreadMsgHandler:Landroid/os/Handler;

    goto :goto_0

    .line 161
    :pswitch_9
    invoke-static {}, Lcom/xlwtech/util/XlwDevice;->getInstance()Lcom/xlwtech/util/XlwDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->xlwDevice:Lcom/xlwtech/util/XlwDevice;

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/accloud/cloudservice/ACDeviceActivator;)I
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator;

    .prologue
    .line 48
    iget v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->deviceType:I

    return v0
.end method

.method static synthetic access$100(Lcom/accloud/cloudservice/ACDeviceActivator;)Lmediatek/android/IoTManager/IoTManagerNative;
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->IoTManager:Lmediatek/android/IoTManager/IoTManagerNative;

    return-object v0
.end method

.method static synthetic access$200(Lcom/accloud/cloudservice/ACDeviceActivator;Ljava/lang/String;)B
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/accloud/cloudservice/ACDeviceActivator;->getAuthMode(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/accloud/cloudservice/ACDeviceActivator;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/accloud/cloudservice/ACDeviceActivator;)V
    .locals 0
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/accloud/cloudservice/ACDeviceActivator;->exception_action()V

    return-void
.end method

.method static synthetic access$700(Lcom/accloud/cloudservice/ACDeviceActivator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->flag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/accloud/cloudservice/ACDeviceActivator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACDeviceActivator;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->flag:Z

    return p1
.end method

.method private exception_action()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 819
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 821
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "G9008"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    sput v4, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    .line 842
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 843
    .local v0, "wifiinfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    const/16 v2, 0x4e

    if-le v1, v2, :cond_1

    .line 844
    const/16 v1, 0x64

    sput v1, Lcom/realtek/simpleconfiglib/SCLibrary;->ProfileSendTimeIntervalMs:I

    .line 845
    const/16 v1, 0xf

    sput v1, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    .line 847
    :cond_1
    return-void

    .line 823
    .end local v0    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-G9208"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 824
    sput v4, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    goto :goto_0

    .line 825
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "N900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 826
    sput v3, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    goto :goto_0

    .line 827
    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-N910U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    sput v3, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    goto :goto_0

    .line 831
    :cond_5
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 832
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MI 4W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    sput v3, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    goto :goto_0

    .line 835
    :cond_6
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Sony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Xperia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 837
    sput v3, Lcom/realtek/simpleconfiglib/SCLibrary;->PacketSendTimeIntervalMs:I

    goto :goto_0
.end method

.method private getAuthMode(Ljava/lang/String;)B
    .locals 10
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 196
    .local v1, "ScanResultlist":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "len":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 197
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 199
    .local v0, "AccessPoint":Landroid/net/wifi/ScanResult;
    iget-object v8, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 200
    iget-object v8, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "WPA-PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 201
    .local v5, "WpaPsk":Z
    iget-object v8, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "WPA2-PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 202
    .local v4, "Wpa2Psk":Z
    iget-object v8, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "WPA-EAP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 203
    .local v2, "Wpa":Z
    iget-object v8, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "WPA2-EAP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 205
    .local v3, "Wpa2":Z
    iget-object v8, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "WEP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 206
    const-string v8, "OPEN-WEP"

    iput-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthString:Ljava/lang/String;

    .line 207
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeOpen:B

    iput-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    .line 243
    .end local v0    # "AccessPoint":Landroid/net/wifi/ScanResult;
    .end local v2    # "Wpa":Z
    .end local v3    # "Wpa2":Z
    .end local v4    # "Wpa2Psk":Z
    .end local v5    # "WpaPsk":Z
    :cond_0
    :goto_1
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    return v8

    .line 211
    .restart local v0    # "AccessPoint":Landroid/net/wifi/ScanResult;
    .restart local v2    # "Wpa":Z
    .restart local v3    # "Wpa2":Z
    .restart local v4    # "Wpa2Psk":Z
    .restart local v5    # "WpaPsk":Z
    :cond_1
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 212
    const-string v8, "WPA-PSK WPA2-PSK"

    iput-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthString:Ljava/lang/String;

    .line 213
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA1PSKWPA2PSK:B

    iput-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    goto :goto_1

    .line 215
    :cond_2
    if-eqz v4, :cond_3

    .line 216
    const-string v8, "WPA2-PSK"

    iput-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthString:Ljava/lang/String;

    .line 217
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA2PSK:B

    iput-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    goto :goto_1

    .line 219
    :cond_3
    if-eqz v5, :cond_4

    .line 220
    const-string v8, "WPA-PSK"

    iput-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthString:Ljava/lang/String;

    .line 221
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPAPSK:B

    iput-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    goto :goto_1

    .line 225
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 226
    const-string v8, "WPA-EAP WPA2-EAP"

    iput-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthString:Ljava/lang/String;

    .line 227
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA1WPA2:B

    iput-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    goto :goto_1

    .line 229
    :cond_5
    if-eqz v3, :cond_6

    .line 230
    const-string v8, "WPA2-EAP"

    iput-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthString:Ljava/lang/String;

    .line 231
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA2:B

    iput-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    goto :goto_1

    .line 233
    :cond_6
    if-eqz v2, :cond_7

    .line 234
    const-string v8, "WPA-EAP"

    iput-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthString:Ljava/lang/String;

    .line 235
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeWPA:B

    iput-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    goto :goto_1

    .line 239
    :cond_7
    const-string v8, "OPEN"

    iput-object v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthString:Ljava/lang/String;

    .line 240
    iget-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->AuthModeOpen:B

    iput-byte v8, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mAuthMode:B

    .line 196
    .end local v2    # "Wpa":Z
    .end local v3    # "Wpa2":Z
    .end local v4    # "Wpa2Psk":Z
    .end local v5    # "WpaPsk":Z
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 187
    .local v0, "WifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->bssid:Ljava/lang/String;

    .line 191
    .end local v0    # "WifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->bssid:Ljava/lang/String;

    return-object v1
.end method

.method public getSSID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 171
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 173
    .local v0, "WifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->ssid:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 176
    .local v1, "iLen":I
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->ssid:Ljava/lang/String;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->ssid:Ljava/lang/String;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->ssid:Ljava/lang/String;

    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->ssid:Ljava/lang/String;

    .line 181
    .end local v0    # "WifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "iLen":I
    :cond_0
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->ssid:Ljava/lang/String;

    return-object v2
.end method

.method public isAbleLink()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->isAbleLink:Z

    return v0
.end method

.method public startAbleLink(Ljava/lang/String;Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 5
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACDeviceBind;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p4, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Ljava/util/List<Lcom/accloud/service/ACDeviceBind;>;>;"
    const-string v2, "ACDeviceActivator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart connection with : ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Password = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACDeviceBind;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 344
    .local v1, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/accloud/service/ACDeviceBind;>;"
    new-instance v2, Lcom/accloud/cloudservice/ACDeviceActivator$3;

    invoke-direct {v2, p0, p4, v1, v0}, Lcom/accloud/cloudservice/ACDeviceActivator$3;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator;Lcom/accloud/cloudservice/PayloadCallback;Ljava/util/HashSet;Ljava/util/List;)V

    iput-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    .line 364
    new-instance v2, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->receive:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    .line 365
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->receive:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->connection:Ljava/lang/Thread;

    .line 366
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->connection:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 367
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->isAbleLink:Z

    .line 368
    return-void
.end method

.method public startAbleLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
    .locals 6
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "physicalDeviceId"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACDeviceBind;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p5, "callback":Lcom/accloud/cloudservice/PayloadCallback;, "Lcom/accloud/cloudservice/PayloadCallback<Lcom/accloud/service/ACDeviceBind;>;"
    const-string v0, "ACDeviceActivator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart connection with : ssid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/accloud/cloudservice/ACDeviceActivator$2;

    invoke-direct {v0, p0, p5}, Lcom/accloud/cloudservice/ACDeviceActivator$2;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator;Lcom/accloud/cloudservice/PayloadCallback;)V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->handler:Landroid/os/Handler;

    .line 324
    new-instance v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;-><init>(Lcom/accloud/cloudservice/ACDeviceActivator;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->receive:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    .line 325
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->receive:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->connection:Ljava/lang/Thread;

    .line 326
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->connection:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->isAbleLink:Z

    .line 328
    return-void
.end method

.method public stopAbleLink()V
    .locals 4

    .prologue
    .line 374
    const-string v1, "ACDeviceActivator"

    const-string v2, "stopAbleLink"

    invoke-static {v1, v2}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->isAbleLink:Z

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->receive:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->receive:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-virtual {v1}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->closeSocket()V

    .line 382
    :cond_0
    iget v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->deviceType:I

    packed-switch v1, :pswitch_data_0

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 384
    :pswitch_0
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->IoTManager:Lmediatek/android/IoTManager/IoTManagerNative;

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->IoTManager:Lmediatek/android/IoTManager/IoTManagerNative;

    invoke-virtual {v1}, Lmediatek/android/IoTManager/IoTManagerNative;->StopSmartConnection()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ACDeviceActivator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAbleLink exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mSnifferSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mSnifferSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/hiflying/smartlink/ISmartLinker;->setOnSmartLinkListener(Lcom/hiflying/smartlink/OnSmartLinkListener;)V

    .line 390
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mSnifferSmartLinker:Lcom/hiflying/smartlink/ISmartLinker;

    invoke-interface {v1}, Lcom/hiflying/smartlink/ISmartLinker;->stop()V

    goto :goto_0

    .line 394
    :pswitch_2
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->elapi:Lcom/mxchip/easylink/EasyLinkAPI;

    invoke-virtual {v1}, Lcom/mxchip/easylink/EasyLinkAPI;->stopEasyLink()V

    goto :goto_0

    .line 397
    :pswitch_3
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->xmitter:Lcom/MARVELL/xmitterTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/MARVELL/xmitterTask;->cancel(Z)Z

    goto :goto_0

    .line 400
    :pswitch_4
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sniffer:Lcom/wukoon/api/Sniffer;

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sniffer:Lcom/wukoon/api/Sniffer;

    invoke-virtual {v1}, Lcom/wukoon/api/Sniffer;->stopSniffer()V

    goto :goto_0

    .line 404
    :pswitch_5
    invoke-static {}, Lcom/MURATA/smartConfig;->stopConfig()V

    goto :goto_0

    .line 407
    :pswitch_6
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->iSmartConfig:Lcom/winnermicro/smartconfig/ISmartConfig;

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->iSmartConfig:Lcom/winnermicro/smartconfig/ISmartConfig;

    invoke-interface {v1}, Lcom/winnermicro/smartconfig/ISmartConfig;->stopConfig()V

    goto :goto_0

    .line 411
    :pswitch_7
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sdk:Lyhq/jad/easysdk/EasySdk;

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sdk:Lyhq/jad/easysdk/EasySdk;

    invoke-virtual {v1}, Lyhq/jad/easysdk/EasySdk;->Stop()V

    goto :goto_0

    .line 415
    :pswitch_8
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->SmartConfig:Lcom/integrity_project/smartconfiglib/SmartConfig;

    invoke-virtual {v1}, Lcom/integrity_project/smartconfiglib/SmartConfig;->stopTransmitting()V

    goto :goto_0

    .line 418
    :pswitch_9
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mEsptouchTask:Lcom/espressif/iot/esptouch/IEsptouchTask;

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->mEsptouchTask:Lcom/espressif/iot/esptouch/IEsptouchTask;

    invoke-interface {v1}, Lcom/espressif/iot/esptouch/IEsptouchTask;->interrupt()V

    goto :goto_0

    .line 423
    :pswitch_a
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v1}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_stop()V

    .line 424
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->SCLib:Lcom/realtek/simpleconfiglib/SCLibrary;

    invoke-virtual {v1}, Lcom/realtek/simpleconfiglib/SCLibrary;->rtk_sc_exit()V

    goto/16 :goto_0

    .line 427
    :pswitch_b
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sendUdpThread:Lcom/AI6060H/SendUdpThread;

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sendUdpThread:Lcom/AI6060H/SendUdpThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/AI6060H/SendUdpThread;->setExitProcess(Z)V

    .line 429
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sendUdpThread:Lcom/AI6060H/SendUdpThread;

    invoke-virtual {v1}, Lcom/AI6060H/SendUdpThread;->interrupt()V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->sendUdpThread:Lcom/AI6060H/SendUdpThread;

    goto/16 :goto_0

    .line 434
    :pswitch_c
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator;->xlwDevice:Lcom/xlwtech/util/XlwDevice;

    invoke-virtual {v1}, Lcom/xlwtech/util/XlwDevice;->SmartConfigStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
