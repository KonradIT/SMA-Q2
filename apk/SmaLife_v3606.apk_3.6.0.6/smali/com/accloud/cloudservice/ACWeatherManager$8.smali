.class Lcom/accloud/cloudservice/ACWeatherManager$8;
.super Ljava/lang/Object;
.source "ACWeatherManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACWeatherManager;->getLastDaysWeather(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 310
    iput-object p1, p0, Lcom/accloud/cloudservice/ACWeatherManager$8;->this$0:Lcom/accloud/cloudservice/ACWeatherManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACWeatherManager$8;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/accloud/cloudservice/ACWeatherManager$8;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 335
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 20
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACWeatherManager$8;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v17, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const-string v19, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 330
    :goto_0
    return-void

    .line 316
    :cond_0
    const-string v2, "history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 317
    .local v15, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v16, "weatherList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACWeather;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/accloud/service/ACObject;

    .line 319
    .local v14, "object":Lcom/accloud/service/ACObject;
    const-string v2, "timestamp"

    invoke-virtual {v14, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "timestamp":Ljava/lang/String;
    const-string v2, "temperature"

    invoke-virtual {v14, v2}, Lcom/accloud/service/ACObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 321
    .local v4, "temperature":D
    const-string v2, "minTemperature"

    invoke-virtual {v14, v2}, Lcom/accloud/service/ACObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 322
    .local v6, "minTemperature":D
    const-string v2, "maxTemperature"

    invoke-virtual {v14, v2}, Lcom/accloud/service/ACObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 323
    .local v8, "maxTemperature":D
    const-string v2, "humidity"

    invoke-virtual {v14, v2}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 324
    .local v10, "humidity":I
    const-string v2, "minHumidity"

    invoke-virtual {v14, v2}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 325
    .local v11, "minHumidity":I
    const-string v2, "maxHumidity"

    invoke-virtual {v14, v2}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 326
    .local v12, "maxHumidity":I
    new-instance v2, Lcom/accloud/service/ACWeather;

    invoke-direct/range {v2 .. v12}, Lcom/accloud/service/ACWeather;-><init>(Ljava/lang/String;DDDIII)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    .end local v3    # "timestamp":Ljava/lang/String;
    .end local v4    # "temperature":D
    .end local v6    # "minTemperature":D
    .end local v8    # "maxTemperature":D
    .end local v10    # "humidity":I
    .end local v11    # "minHumidity":I
    .end local v12    # "maxHumidity":I
    .end local v14    # "object":Lcom/accloud/service/ACObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACWeatherManager$8;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
