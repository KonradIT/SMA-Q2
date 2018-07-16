.class public Lcom/accloud/common/ACConfiguration;
.super Ljava/lang/Object;
.source "ACConfiguration.java"


# static fields
.field public static final ACCOUNT_SERVICE_NAME:Ljava/lang/String; = "zc-account"

.field public static final ACCOUNT_SERVICE_VERSION:I = 0x1

.field public static AUTH_TIMEOUT:I = 0x0

.field public static final BIND_SERVICE_NAME:Ljava/lang/String; = "zc-bind"

.field public static final BIND_SERVICE_VERSION:I = 0x1

.field public static final BLOBSTORE_SERVICE_NAME:Ljava/lang/String; = "zc-blobstore"

.field public static final BLOBSTORE_SERVICE_VERSION:I = 0x1

.field public static CONNECT_TIMEOUT:I = 0x0

.field public static final FEEDBACK_SERVICE_NAME:Ljava/lang/String; = "zc-feedback"

.field public static final FEEDBACK_SERVICE_VERSION:I = 0x1

.field public static final KEY_HEAD:Ljava/lang/String; = "ablecloud_private"

.field public static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "ablecloud_private_refresh_token"

.field public static final KEY_REFRESH_TOKEN_EXPIRE:Ljava/lang/String; = "ablecloud_private_fefresh_token_expire"

.field public static final KEY_TOKEN:Ljava/lang/String; = "ablecloud_private_token"

.field public static final KEY_TOKEN_EXPIRE:Ljava/lang/String; = "ablecloud_private_token_expire"

.field public static final KEY_USERID:Ljava/lang/String; = "ablecloud_private_userId"

.field private static MODE:I = 0x0

.field private static final ONLINE_APP_GATEWAY_ADDR_CENTERAL_EUPOPE:Ljava/lang/String; = "http://euws.ablecloud.cn:9001"

.field private static final ONLINE_APP_GATEWAY_ADDR_CHINA:Ljava/lang/String; = "http://ws.ablecloud.cn:9001"

.field private static final ONLINE_APP_GATEWAY_ADDR_EAST_CHINA:Ljava/lang/String; = "http://ecws.ablecloud.cn:9001"

.field private static final ONLINE_APP_GATEWAY_ADDR_NORTH_AMERICA:Ljava/lang/String; = "http://usws.ablecloud.cn:9001"

.field private static final ONLINE_APP_GATEWAY_ADDR_SOUTHEAST:Ljava/lang/String; = "http://eaws.ablecloud.cn:9001"

.field private static final ONLINE_ROUTER_ADDR_CENTERAL_EUPOPE:Ljava/lang/String; = "eurouter.ablecloud.cn"

.field private static final ONLINE_ROUTER_ADDR_CHINA:Ljava/lang/String; = "router.ablecloud.cn"

.field private static final ONLINE_ROUTER_ADDR_EAST_CHINA:Ljava/lang/String; = "ecrouter.ablecloud.cn"

.field private static final ONLINE_ROUTER_ADDR_NORTH_AMERICA:Ljava/lang/String; = "usrouter.ablecloud.cn"

.field private static final ONLINE_ROUTER_ADDR_SOUTHEAST:Ljava/lang/String; = "earouter.ablecloud.cn"

.field public static final OTA_SERVICE_NAME:Ljava/lang/String; = "zc-ota"

.field public static final OTA_SERVICE_VERSION:I = 0x1

.field public static final PM25_SERVICE_NAME:Ljava/lang/String; = "zc-pm25"

.field public static final PM25_SERVICE_VERSION:I = 0x1

.field public static final RANKING_SERVICE_NAME:Ljava/lang/String; = "zc-ranking"

.field public static final RANKING_SERVICE_VERSION:I = 0x1

.field public static READ_TIMEOUT:I = 0x0

.field private static REGIONAL:I = 0x0

.field private static SANDBOX_ROUTER_ADDR:Ljava/lang/String; = null

.field public static final TIMER_SERVICE_NAME:Ljava/lang/String; = "zc-timer-task"

.field public static final TIMER_SERVICE_VERSION:I = 0x1

.field public static final WAREHOUSE_SERVICE_NAME:Ljava/lang/String; = "zc-warehouse"

.field public static final WAREHOUSE_SERVICE_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 11
    const/4 v0, 0x1

    sput v0, Lcom/accloud/common/ACConfiguration;->MODE:I

    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/accloud/common/ACConfiguration;->REGIONAL:I

    .line 14
    const/16 v0, 0x12c

    sput v0, Lcom/accloud/common/ACConfiguration;->AUTH_TIMEOUT:I

    .line 15
    sput v1, Lcom/accloud/common/ACConfiguration;->CONNECT_TIMEOUT:I

    .line 16
    sput v1, Lcom/accloud/common/ACConfiguration;->READ_TIMEOUT:I

    .line 38
    const-string v0, "test.ablecloud.cn"

    sput-object v0, Lcom/accloud/common/ACConfiguration;->SANDBOX_ROUTER_ADDR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppGatewayAddr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/accloud/common/ACConfiguration;->SANDBOX_ROUTER_ADDR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":9001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 122
    const-string v0, "http://eaws.ablecloud.cn:9001"

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 124
    const-string v0, "http://ecws.ablecloud.cn:9001"

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 126
    const-string v0, "http://usws.ablecloud.cn:9001"

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 128
    const-string v0, "http://euws.ablecloud.cn:9001"

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "http://ws.ablecloud.cn:9001"

    goto :goto_0
.end method

.method public static getHttpsRouterAddr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/accloud/common/ACConfiguration;->SANDBOX_ROUTER_ADDR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":9005"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 105
    const-string v0, "https://eurouter.ablecloud.cn:9005"

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 107
    const-string v0, "https://usrouter.ablecloud.cn:9005"

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 109
    const-string v0, "https://earouter.ablecloud.cn:9005"

    goto :goto_0

    .line 110
    :cond_3
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 111
    const-string v0, "https://ecrouter.ablecloud.cn:9005"

    goto :goto_0

    .line 113
    :cond_4
    const-string v0, "https://router.ablecloud.cn:9005"

    goto :goto_0
.end method

.method public static getMode()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/accloud/common/ACConfiguration;->MODE:I

    return v0
.end method

.method public static getRegional()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/accloud/common/ACConfiguration;->REGIONAL:I

    return v0
.end method

.method public static getRouterAddr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/accloud/common/ACConfiguration;->SANDBOX_ROUTER_ADDR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":5000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 88
    const-string v0, "http://eurouter.ablecloud.cn:5000"

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 90
    const-string v0, "http://usrouter.ablecloud.cn:5000"

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 92
    const-string v0, "http://earouter.ablecloud.cn:5000"

    goto :goto_0

    .line 93
    :cond_3
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getRegional()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 94
    const-string v0, "http://ecrouter.ablecloud.cn:5000"

    goto :goto_0

    .line 96
    :cond_4
    const-string v0, "http://router.ablecloud.cn:5000"

    goto :goto_0
.end method

.method public static setMode(I)V
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 60
    sput p0, Lcom/accloud/common/ACConfiguration;->MODE:I

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/accloud/utils/LogUtil;->setDebug(Z)V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/accloud/utils/LogUtil;->setDebug(Z)V

    goto :goto_0
.end method

.method public static setRegional(I)V
    .locals 0
    .param p0, "regional"    # I

    .prologue
    .line 68
    sput p0, Lcom/accloud/common/ACConfiguration;->REGIONAL:I

    .line 69
    return-void
.end method

.method public static setRouterAddr(Ljava/lang/String;)V
    .locals 0
    .param p0, "ROUTER_ADDR"    # Ljava/lang/String;

    .prologue
    .line 80
    sput-object p0, Lcom/accloud/common/ACConfiguration;->SANDBOX_ROUTER_ADDR:Ljava/lang/String;

    .line 81
    return-void
.end method
