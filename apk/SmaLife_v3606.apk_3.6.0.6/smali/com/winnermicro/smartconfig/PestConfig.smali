.class Lcom/winnermicro/smartconfig/PestConfig;
.super Ljava/lang/Object;
.source "PestConfig.java"

# interfaces
.implements Lcom/winnermicro/smartconfig/ISmartConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winnermicro/smartconfig/PestConfig$StartThread;,
        Lcom/winnermicro/smartconfig/PestConfig$StopThread;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isWorking:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private netIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private netSsidLst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private property:Lcom/winnermicro/smartconfig/ConfigProperty;

.field private ssid:Ljava/lang/String;

.field private userConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->netIds:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->userConfigs:Ljava/util/List;

    .line 23
    iput-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    .line 24
    iput-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->context:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->mIntentFilter:Landroid/content/IntentFilter;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->handler:Landroid/os/Handler;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->isWorking:Z

    .line 28
    iput-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/winnermicro/smartconfig/PestConfig$1;

    invoke-direct {v0, p0}, Lcom/winnermicro/smartconfig/PestConfig$1;-><init>(Lcom/winnermicro/smartconfig/PestConfig;)V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    iput-object p1, p0, Lcom/winnermicro/smartconfig/PestConfig;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->mIntentFilter:Landroid/content/IntentFilter;

    .line 32
    new-instance v0, Lcom/winnermicro/smartconfig/ConfigProperty;

    invoke-direct {v0}, Lcom/winnermicro/smartconfig/ConfigProperty;-><init>()V

    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    .line 33
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    return-object v0
.end method

.method static synthetic access$1(Lcom/winnermicro/smartconfig/PestConfig;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/winnermicro/smartconfig/PestConfig;->clearNetList()V

    return-void
.end method

.method static synthetic access$2(Lcom/winnermicro/smartconfig/PestConfig;Z)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/winnermicro/smartconfig/PestConfig;->clearOurSsids(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$6(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/winnermicro/smartconfig/PestConfig;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->isWorking:Z

    return v0
.end method

.method static synthetic access$8(Lcom/winnermicro/smartconfig/PestConfig;Ljava/lang/String;B)Z
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Lcom/winnermicro/smartconfig/PestConfig;->sendData(Ljava/lang/String;B)Z

    move-result v0

    return v0
.end method

.method private clearNetIdList()V
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 76
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig;->netIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig;->netIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 83
    return-void

    .line 76
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    .local v0, "nId":I
    if-ltz v0, :cond_0

    .line 78
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0
.end method

.method private clearNetList()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 39
    iget-object v10, p0, Lcom/winnermicro/smartconfig/PestConfig;->context:Landroid/content/Context;

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 40
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v10, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 55
    iget-object v10, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 56
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v10, p0, Lcom/winnermicro/smartconfig/PestConfig;->userConfigs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 70
    iget-object v10, p0, Lcom/winnermicro/smartconfig/PestConfig;->userConfigs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 71
    return-void

    .line 40
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 41
    .local v4, "pack":Ljava/lang/String;
    const-string v7, "\"%s\""

    .line 42
    .local v7, "ssidFormat":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v13

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "ssid":Ljava/lang/String;
    const/4 v2, -0x1

    .line 44
    .local v2, "nId":I
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 50
    :goto_2
    if-ltz v2, :cond_0

    .line 51
    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0

    .line 44
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 45
    .local v8, "wifiConf":Landroid/net/wifi/WifiConfiguration;
    iget-object v12, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 46
    iget v2, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 47
    goto :goto_2

    .line 57
    .end local v2    # "nId":I
    .end local v4    # "pack":Ljava/lang/String;
    .end local v5    # "ssid":Ljava/lang/String;
    .end local v7    # "ssidFormat":Ljava/lang/String;
    .end local v8    # "wifiConf":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 59
    .local v8, "wifiConf":Ljava/lang/String;
    const/4 v3, -0x1

    .line 60
    .local v3, "netId":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 66
    if-ltz v3, :cond_1

    .line 67
    invoke-virtual {v9, v3, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 60
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 61
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 62
    .local v6, "ssid1":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 63
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_3
.end method

.method private clearOurSsids(Z)V
    .locals 7
    .param p1, "always"    # Z

    .prologue
    .line 229
    iget-object v4, p0, Lcom/winnermicro/smartconfig/PestConfig;->context:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 230
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v4, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_2

    .line 231
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 243
    if-eqz p1, :cond_2

    .line 244
    iget-object v4, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 247
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    return-void

    .line 232
    .restart local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 233
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 235
    .local v2, "ssid1":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 238
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/winnermicro/smartconfig/PestConfig;->isOurSsid([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0
.end method

.method private getAndroidSDKVersion()I
    .locals 4

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 297
    .local v1, "version":I
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 301
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ieee80211_frequency_to_channel(I)I
    .locals 1
    .param p1, "freq"    # I

    .prologue
    const/16 v0, 0x9b4

    .line 134
    if-ne p1, v0, :cond_0

    .line 135
    const/16 v0, 0xe

    .line 138
    :goto_0
    return v0

    .line 136
    :cond_0
    if-ge p1, v0, :cond_1

    .line 137
    add-int/lit16 v0, p1, -0x967

    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 138
    :cond_1
    div-int/lit8 v0, p1, 0x5

    add-int/lit16 v0, v0, -0x3e8

    goto :goto_0
.end method

.method private isOurSsid([B)Z
    .locals 10
    .param p1, "bytes"    # [B

    .prologue
    const/4 v7, 0x0

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "datalen":I
    const/4 v5, 0x0

    .line 252
    .local v5, "lenlen":I
    const/4 v4, 0x1

    .line 253
    .local v4, "k":I
    array-length v8, p1

    const/4 v9, 0x7

    if-ge v8, v9, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v7

    .line 256
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v8, 0x4

    if-lt v3, v8, :cond_2

    .line 261
    const/4 v3, 0x0

    :goto_2
    const/4 v8, 0x6

    if-lt v3, v8, :cond_3

    .line 267
    const/4 v3, 0x0

    :goto_3
    if-lt v3, v5, :cond_5

    .line 273
    if-lez v2, :cond_0

    const/16 v8, 0x1a

    if-gt v2, v8, :cond_0

    add-int/lit8 v8, v5, 0x6

    add-int/2addr v8, v2

    array-length v9, p1

    if-ne v8, v9, :cond_0

    .line 276
    new-instance v6, Lcom/winnermicro/smartconfig/PackManager;

    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    invoke-direct {v6, v8}, Lcom/winnermicro/smartconfig/PackManager;-><init>(Lcom/winnermicro/smartconfig/ConfigProperty;)V

    .line 277
    .local v6, "packM":Lcom/winnermicro/smartconfig/PackManager;
    array-length v8, p1

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, p1, v8}, Lcom/winnermicro/smartconfig/PackManager;->calCRC8([BI)B

    move-result v0

    .line 278
    .local v0, "crc1":B
    and-int/lit8 v8, v0, 0x3f

    add-int/lit8 v8, v8, 0x3f

    array-length v9, p1

    add-int/lit8 v9, v9, -0x2

    aget-byte v9, p1, v9

    if-ne v8, v9, :cond_0

    .line 281
    array-length v8, p1

    add-int/lit8 v8, v8, -0x2

    aput-byte v0, p1, v8

    .line 282
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, p1, v8}, Lcom/winnermicro/smartconfig/PackManager;->calCRC8([BI)B

    move-result v1

    .line 283
    .local v1, "crc2":B
    and-int/lit8 v8, v1, 0x3f

    add-int/lit8 v8, v8, 0x3f

    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, p1, v9

    if-ne v8, v9, :cond_0

    .line 286
    const/4 v7, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "crc1":B
    .end local v1    # "crc2":B
    .end local v6    # "packM":Lcom/winnermicro/smartconfig/PackManager;
    :cond_2
    aget-byte v8, p1, v3

    and-int/lit16 v8, v8, 0xc0

    const/16 v9, 0x40

    if-ne v8, v9, :cond_0

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 262
    :cond_3
    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit8 v8, v8, 0x3f

    and-int/2addr v8, v4

    if-ne v8, v4, :cond_4

    .line 263
    add-int/lit8 v5, v5, 0x1

    .line 265
    :cond_4
    shl-int/lit8 v4, v4, 0x1

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 268
    :cond_5
    add-int/lit8 v8, v3, 0x4

    array-length v9, p1

    if-ge v8, v9, :cond_0

    .line 271
    add-int/lit8 v8, v3, 0x4

    aget-byte v8, p1, v8

    and-int/lit8 v8, v8, 0x3f

    add-int/2addr v2, v8

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private sendData(Ljava/lang/String;B)Z
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    const/4 v2, 0x1

    .line 406
    .local v2, "ret":Z
    iput-boolean v4, p0, Lcom/winnermicro/smartconfig/PestConfig;->isWorking:Z

    .line 407
    iget-object v5, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iput v3, v5, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 409
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/winnermicro/smartconfig/PestConfig;->startConfigInner(Ljava/lang/String;B)Z
    :try_end_0
    .catch Lcom/winnermicro/smartconfig/OneShotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 410
    if-nez v2, :cond_2

    .line 423
    if-nez v2, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/winnermicro/smartconfig/PestConfig;->stopConfig()V

    .line 427
    :cond_0
    :goto_0
    return v3

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "one":Lcom/winnermicro/smartconfig/OneShotException;
    const/4 v2, 0x0

    .line 416
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    .end local v1    # "one":Lcom/winnermicro/smartconfig/OneShotException;
    :catchall_0
    move-exception v3

    .line 423
    if-nez v2, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/winnermicro/smartconfig/PestConfig;->stopConfig()V

    .line 426
    :cond_1
    throw v3

    .line 418
    :catch_1
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 423
    if-nez v2, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/winnermicro/smartconfig/PestConfig;->stopConfig()V

    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    if-nez v2, :cond_3

    .line 424
    invoke-virtual {p0}, Lcom/winnermicro/smartconfig/PestConfig;->stopConfig()V

    :cond_3
    move v3, v4

    .line 427
    goto :goto_0
.end method

.method private startConfigInner(Ljava/lang/String;B)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winnermicro/smartconfig/OneShotException;
        }
    .end annotation

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->context:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 145
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v12, :cond_0

    .line 146
    const/4 v13, 0x0

    .line 225
    :goto_0
    return v13

    .line 148
    :cond_0
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/16 v14, 0x65

    iput v14, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 150
    new-instance v13, Lcom/winnermicro/smartconfig/OneShotException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v14, v14, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v13, v14}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v13

    .line 152
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/winnermicro/smartconfig/PestConfig;->clearOurSsids(Z)V

    .line 153
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 154
    .local v11, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v11, :cond_2

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/16 v14, 0x66

    iput v14, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 156
    new-instance v13, Lcom/winnermicro/smartconfig/OneShotException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v14, v14, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v13, v14}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v13

    .line 158
    :cond_2
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "bssid":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v13, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 160
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/winnermicro/smartconfig/PestConfig;->getAndroidSDKVersion()I

    move-result v10

    .line 165
    .local v10, "version":I
    const/16 v13, 0x10

    if-le v10, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    .line 169
    :cond_5
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 170
    .local v9, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x0

    .line 171
    .local v3, "c":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/4 v14, 0x0

    iput v14, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->channel:I

    .line 172
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_a

    .line 181
    :cond_7
    :goto_1
    const/4 v13, 0x1

    if-ne v3, v13, :cond_9

    .line 182
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b

    .line 192
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v13, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->channel:I

    const/16 v14, 0xe

    if-le v13, v14, :cond_c

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/16 v14, 0x67

    iput v14, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 194
    new-instance v13, Lcom/winnermicro/smartconfig/OneShotException;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v14, v14, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v13, v14}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v13

    .line 172
    :cond_a
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 173
    .local v8, "r":Landroid/net/wifi/ScanResult;
    iget-object v14, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v14, v8, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/winnermicro/smartconfig/PestConfig;->ieee80211_frequency_to_channel(I)I

    move-result v14

    iput v14, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->channel:I

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v13, v13, Lcom/winnermicro/smartconfig/ConfigProperty;->channel:I

    const/16 v14, 0xe

    if-le v13, v14, :cond_7

    .line 176
    const/4 v3, 0x1

    .line 178
    goto :goto_1

    .line 182
    .end local v8    # "r":Landroid/net/wifi/ScanResult;
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 183
    .restart local v8    # "r":Landroid/net/wifi/ScanResult;
    iget-object v14, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v15, v8, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/winnermicro/smartconfig/PestConfig;->ieee80211_frequency_to_channel(I)I

    move-result v15

    iput v15, v14, Lcom/winnermicro/smartconfig/ConfigProperty;->channel:I

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v14, v14, Lcom/winnermicro/smartconfig/ConfigProperty;->channel:I

    const/16 v15, 0xe

    if-gt v14, v15, :cond_8

    .line 186
    iget-object v1, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 187
    goto :goto_2

    .line 197
    .end local v8    # "r":Landroid/net/wifi/ScanResult;
    :cond_c
    new-instance v6, Lcom/winnermicro/smartconfig/PackManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    invoke-direct {v6, v13}, Lcom/winnermicro/smartconfig/PackManager;-><init>(Lcom/winnermicro/smartconfig/ConfigProperty;)V

    .line 198
    .local v6, "packM":Lcom/winnermicro/smartconfig/PackManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v7, "packs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_e

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/winnermicro/smartconfig/PackManager;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v13}, Lcom/winnermicro/smartconfig/PackManager;->isAssic(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 204
    const-string v13, ":"

    const-string v14, ""

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/winnermicro/smartconfig/PackManager;->hexStr2Str(Ljava/lang/String;)[B

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x2

    aput-byte v15, v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v13}, Lcom/winnermicro/smartconfig/PackManager;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x4

    aput-byte v15, v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_3
    invoke-virtual {v6, v2}, Lcom/winnermicro/smartconfig/PackManager;->preparePacks(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Lcom/winnermicro/smartconfig/PestConfig;->sendProbeRequest(Landroid/net/wifi/WifiManager;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Lcom/winnermicro/smartconfig/OneShotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 211
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/winnermicro/smartconfig/PackManager;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    aput-byte p2, v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 218
    :catch_0
    move-exception v5

    .line 219
    .local v5, "one":Lcom/winnermicro/smartconfig/OneShotException;
    throw v5

    .line 221
    .end local v5    # "one":Lcom/winnermicro/smartconfig/OneShotException;
    :catch_1
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    const/4 v13, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getProperty()Lcom/winnermicro/smartconfig/ConfigProperty;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    return-object v0
.end method

.method public sendData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 402
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/winnermicro/smartconfig/PestConfig;->sendData(Ljava/lang/String;B)Z

    move-result v0

    return v0
.end method

.method sendProbeRequest(Landroid/net/wifi/WifiManager;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 306
    .local p2, "packs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 322
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 350
    iget-object v7, p0, Lcom/winnermicro/smartconfig/PestConfig;->netIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 351
    iget-object v7, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 365
    iget-object v7, p0, Lcom/winnermicro/smartconfig/PestConfig;->netIds:Ljava/util/List;

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/winnermicro/smartconfig/PestConfig;->sendProbeRequest(Landroid/net/wifi/WifiManager;Ljava/util/List;Z)V

    .line 366
    iget-object v7, p0, Lcom/winnermicro/smartconfig/PestConfig;->netIds:Ljava/util/List;

    return-object v7

    .line 306
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 307
    .local v5, "wifiConf":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 308
    .local v3, "ssidConf":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 311
    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 312
    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 314
    :cond_4
    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 315
    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 316
    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->userConfigs:Ljava/util/List;

    iget-object v9, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 317
    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->userConfigs:Ljava/util/List;

    iget-object v9, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_5
    iget v8, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v8}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0

    .line 322
    .end local v3    # "ssidConf":Ljava/lang/String;
    .end local v5    # "wifiConf":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, "pack":Ljava/lang/String;
    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 326
    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->netSsidLst:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 328
    .local v6, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v4, "\"%s\""

    .line 329
    .local v4, "ssidFormat":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 330
    const/4 v8, 0x0

    iput-object v8, v6, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 331
    const/4 v8, 0x0

    iput-object v8, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 333
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 334
    const/4 v8, 0x0

    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 335
    const/16 v8, 0x32

    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 336
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 337
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 338
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 339
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 340
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 341
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 342
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 343
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 344
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 345
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 347
    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto/16 :goto_1

    .line 351
    .end local v1    # "pack":Ljava/lang/String;
    .end local v4    # "ssidFormat":Ljava/lang/String;
    .end local v6    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .restart local v1    # "pack":Ljava/lang/String;
    const-string v4, "\"%s\""

    .line 353
    .restart local v4    # "ssidFormat":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "ssid":Ljava/lang/String;
    const/4 v0, -0x1

    .line 355
    .local v0, "nId":I
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 361
    :goto_3
    if-ltz v0, :cond_2

    .line 362
    iget-object v8, p0, Lcom/winnermicro/smartconfig/PestConfig;->netIds:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 355
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 356
    .restart local v5    # "wifiConf":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 357
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 358
    goto :goto_3
.end method

.method sendProbeRequest(Landroid/net/wifi/WifiManager;Ljava/util/List;Z)V
    .locals 8
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "netIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v6, 0x64

    .line 374
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    .local v0, "netId":I
    :cond_3
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget-boolean v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    if-nez v1, :cond_4

    .line 385
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    if-lez v1, :cond_5

    .line 386
    new-instance v1, Lcom/winnermicro/smartconfig/OneShotException;

    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v2, v2, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v1, v2}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v1

    .line 376
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Probe Waiting SCAN END"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 378
    iget-boolean v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->isWorking:Z

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v1, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    if-lez v1, :cond_3

    .line 382
    new-instance v1, Lcom/winnermicro/smartconfig/OneShotException;

    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    iget v2, v2, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    invoke-direct {v1, v2}, Lcom/winnermicro/smartconfig/OneShotException;-><init>(I)V

    throw v1

    .line 388
    :cond_5
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 389
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 390
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 391
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 392
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "SCAN start"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->property:Lcom/winnermicro/smartconfig/ConfigProperty;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    .line 394
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 395
    if-nez p3, :cond_0

    goto :goto_0
.end method

.method public startConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winnermicro/smartconfig/OneShotException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/winnermicro/smartconfig/PestConfig;->sendData(Ljava/lang/String;B)Z

    move-result v0

    return v0
.end method

.method startP(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "passWord"    # Ljava/lang/String;

    .prologue
    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/winnermicro/smartconfig/PestConfig;->startP(Landroid/net/wifi/WifiManager;Ljava/lang/String;B)V

    .line 495
    return-void
.end method

.method startP(Landroid/net/wifi/WifiManager;Ljava/lang/String;B)V
    .locals 2
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "passWord"    # Ljava/lang/String;
    .param p3, "type"    # B

    .prologue
    .line 483
    iget-boolean v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->isWorking:Z

    if-eqz v1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winnermicro/smartconfig/PestConfig;->isWorking:Z

    .line 487
    new-instance v0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;

    invoke-direct {v0, p0}, Lcom/winnermicro/smartconfig/PestConfig$StartThread;-><init>(Lcom/winnermicro/smartconfig/PestConfig;)V

    .line 488
    .local v0, "t":Lcom/winnermicro/smartconfig/PestConfig$StartThread;
    invoke-virtual {v0, p2}, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->setPassWord(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p3}, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->setType(B)V

    .line 490
    invoke-virtual {v0, p1}, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->setWifiManager(Landroid/net/wifi/WifiManager;)V

    .line 491
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopConfig()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winnermicro/smartconfig/PestConfig;->isWorking:Z

    .line 292
    return-void
.end method
