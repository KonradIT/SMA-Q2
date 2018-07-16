.class Lcom/accloud/cloudservice/ACWeatherManager$7;
.super Ljava/lang/Object;
.source "ACWeatherManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACWeatherManager;->getLatestWeather(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACWeatherManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACWeatherManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/accloud/cloudservice/ACWeatherManager$7;->this$0:Lcom/accloud/cloudservice/ACWeatherManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACWeatherManager$7;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/accloud/cloudservice/ACWeatherManager$7;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 293
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 14
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/accloud/cloudservice/ACWeatherManager$7;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v11, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "error"

    invoke-virtual {p1, v13}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v11}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 288
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "timestamp":Ljava/lang/String;
    const-string v0, "temperature"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 281
    .local v2, "temperature":D
    const-string v0, "minTemperature"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 282
    .local v4, "minTemperature":D
    const-string v0, "maxTemperature"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 283
    .local v6, "maxTemperature":D
    const-string v0, "humidity"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 284
    .local v8, "humidity":I
    const-string v0, "minHumidity"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 285
    .local v9, "minHumidity":I
    const-string v0, "maxHumidity"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 286
    .local v10, "maxHumidity":I
    iget-object v11, p0, Lcom/accloud/cloudservice/ACWeatherManager$7;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v0, Lcom/accloud/service/ACWeather;

    invoke-direct/range {v0 .. v10}, Lcom/accloud/service/ACWeather;-><init>(Ljava/lang/String;DDDIII)V

    invoke-interface {v11, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
