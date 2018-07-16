.class public Lcom/smalife/wx/receiver/UploadMacToWXReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadMacToWXReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/wx/receiver/UploadMacToWXReceiver$MacAddressAsync;
    }
.end annotation


# static fields
.field public static final ACTION_UPLOAD_MAC_WX:Ljava/lang/String; = "ACTION_UPLOAD_MAC_WX"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private authDeviceUrl:Ljava/lang/String;

.field private deviceIDUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private macAddres:Ljava/lang/String;

.field private successflag:Ljava/lang/String;

.field private tokenUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->macAddres:Ljava/lang/String;

    .line 51
    const-string v0, "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wxf71013eb5678c378&secret=04d04762ffde3117b823f9aa53b6ee72"

    iput-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->tokenUrl:Ljava/lang/String;

    .line 55
    const-string v0, "https://api.weixin.qq.com/device/getqrcode?access_token="

    iput-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->deviceIDUrl:Ljava/lang/String;

    .line 56
    const-string v0, "https://api.weixin.qq.com/device/authorize_device?access_token="

    iput-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->authDeviceUrl:Ljava/lang/String;

    .line 58
    const-string v0, "\"errcode\":0,\"errmsg\":\"ok\""

    iput-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->successflag:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Lcom/smalife/wx/bean/TokenBean;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->getToken()Lcom/smalife/wx/bean/TokenBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;Ljava/lang/String;)Lcom/smalife/wx/bean/DeviceIdBean;
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->getDeviceId(Ljava/lang/String;)Lcom/smalife/wx/bean/DeviceIdBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->macAddres:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->postMac2WX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->successflag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->uploadMac2AC()V

    return-void
.end method

.method static synthetic access$6(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$7(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkIfAddressUpload2AC(Ljava/lang/String;)V
    .locals 3
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 83
    .local v0, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "isAddressInWx"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 84
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 85
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v1

    .line 86
    new-instance v2, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$1;

    invoke-direct {v2, p0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$1;-><init>(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V

    .line 85
    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 105
    return-void
.end method

.method private getDeviceId(Ljava/lang/String;)Lcom/smalife/wx/bean/DeviceIdBean;
    .locals 8
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 129
    const/16 v3, 0x149b

    .line 130
    .local v3, "product_id":I
    iget-object v5, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SM05"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    const/16 v3, 0x149b

    .line 139
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->deviceIDUrl:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&product_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 140
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 142
    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 143
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 145
    sget-object v5, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeviceId result = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 147
    new-instance v6, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$3;

    invoke-direct {v6, p0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$3;-><init>(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V

    .line 148
    invoke-virtual {v6}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 146
    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smalife/wx/bean/DeviceIdBean;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v5, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeviceId CLIENT error = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Lorg/apache/http/ParseException;
    sget-object v5, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeviceId PARSE error = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_2
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeviceId IO error = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getToken()Lcom/smalife/wx/bean/TokenBean;
    .locals 7

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->tokenUrl:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 111
    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 112
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    sget-object v4, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getToken result = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$2;

    invoke-direct {v5, p0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$2;-><init>(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V

    .line 116
    invoke-virtual {v5}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 115
    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/wx/bean/TokenBean;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v4, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getToken CLIENT error = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Lorg/apache/http/ParseException;
    sget-object v4, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getToken Parse error = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getToken IO error = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private postMac2WX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v5, Lcom/smalife/wx/bean/DeviceListBean;

    invoke-direct {v5}, Lcom/smalife/wx/bean/DeviceListBean;-><init>()V

    .line 162
    .local v5, "listBean":Lcom/smalife/wx/bean/DeviceListBean;
    invoke-virtual {v5, p2}, Lcom/smalife/wx/bean/DeviceListBean;->setId(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5, p3}, Lcom/smalife/wx/bean/DeviceListBean;->setMac(Ljava/lang/String;)V

    .line 164
    const-string v9, "3"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setConnect_protocol(Ljava/lang/String;)V

    .line 165
    const-string v9, "1234567890ABCDEF1234567890ABCDEF"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setAuth_key(Ljava/lang/String;)V

    .line 166
    const-string v9, "1"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setClose_strategy(Ljava/lang/String;)V

    .line 167
    const-string v9, "1"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setConn_strategy(Ljava/lang/String;)V

    .line 168
    const-string v9, "1"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setCrypt_method(Ljava/lang/String;)V

    .line 169
    const-string v9, "1"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setAuth_ver(Ljava/lang/String;)V

    .line 170
    const-string v9, "-1"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setManu_mac_pos(Ljava/lang/String;)V

    .line 171
    const-string v9, "-2"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setSer_mac_pos(Ljava/lang/String;)V

    .line 172
    const-string v9, "1"

    invoke-virtual {v5, v9}, Lcom/smalife/wx/bean/DeviceListBean;->setBle_simple_protocol(Ljava/lang/String;)V

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/wx/bean/DeviceListBean;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lcom/smalife/wx/bean/DataBean;

    invoke-direct {v0}, Lcom/smalife/wx/bean/DataBean;-><init>()V

    .line 178
    .local v0, "bean":Lcom/smalife/wx/bean/DataBean;
    const-string v9, "1"

    invoke-virtual {v0, v9}, Lcom/smalife/wx/bean/DataBean;->setDevice_num(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v4}, Lcom/smalife/wx/bean/DataBean;->setDevice_list(Ljava/util/ArrayList;)V

    .line 180
    const-string v9, "1"

    invoke-virtual {v0, v9}, Lcom/smalife/wx/bean/DataBean;->setOp_type(Ljava/lang/String;)V

    .line 183
    :try_start_0
    sget-object v9, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "json = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 185
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->authDeviceUrl:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 187
    .local v6, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v9, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 188
    const-string v10, "UTF-8"

    .line 187
    invoke-direct {v3, v9, v10}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v3, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v9, "text/json"

    invoke-virtual {v3, v9}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 190
    new-instance v9, Lorg/apache/http/message/BasicHeader;

    const-string v10, "Content-Type"

    .line 191
    const-string v11, "application/json"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3, v9}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 192
    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 194
    invoke-interface {v1, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 195
    .local v7, "responString":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 200
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "responString":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v8

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "postMac2WX error = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private uploadMac2AC()V
    .locals 5

    .prologue
    .line 204
    sget-object v3, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    const-string v4, "uploadMac2AC"

    invoke-static {v3, v4}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "mac":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v2, ""

    .line 210
    .local v2, "watch_type":Ljava/lang/String;
    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SM05"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const-string v2, "SM05"

    .line 218
    :goto_1
    sget-object v3, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    const-string v4, "\u540c\u6b65MAC\u5730\u5740\u6570\u636e\u5230\u670d\u52a1\u5668"

    invoke-static {v3, v4}, Lcom/bestmafen/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Lcom/accloud/service/ACMsg;

    invoke-direct {v1}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 220
    .local v1, "syncMsg":Lcom/accloud/service/ACMsg;
    const-string v3, "addAddresToWx"

    invoke-virtual {v1, v3}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 221
    const-string v3, "address"

    invoke-virtual {v1, v3, v0}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 222
    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 224
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v3

    .line 225
    new-instance v4, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$4;

    invoke-direct {v4, p0}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver$4;-><init>(Lcom/smalife/wx/receiver/UploadMacToWXReceiver;)V

    .line 224
    invoke-virtual {v3, v1, v4}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    goto :goto_0

    .line 212
    .end local v1    # "syncMsg":Lcom/accloud/service/ACMsg;
    :cond_1
    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    .line 213
    const-string v4, "SM07"

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 213
    if-eqz v3, :cond_2

    .line 214
    const-string v2, "SM07"

    .line 215
    goto :goto_1

    .line 216
    :cond_2
    const-string v2, "SM0204"

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ACTION_UPLOAD_MAC_WX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/smalife/MyApplication;

    iput-object v1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    .line 68
    invoke-static {p1}, Lcom/smalife/tools/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v2, ":"

    const-string v3, ""

    .line 71
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->macAddres:Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mac address = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->macAddres:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->application:Lcom/smalife/MyApplication;

    .line 75
    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBondedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-direct {p0, v1}, Lcom/smalife/wx/receiver/UploadMacToWXReceiver;->checkIfAddressUpload2AC(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
