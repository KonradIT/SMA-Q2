.class Lcom/accloud/cloudservice/ACWeatherManager$6;
.super Ljava/lang/Object;
.source "ACWeatherManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACWeatherManager;->getLastHoursAqi(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 235
    iput-object p1, p0, Lcom/accloud/cloudservice/ACWeatherManager$6;->this$0:Lcom/accloud/cloudservice/ACWeatherManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACWeatherManager$6;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/accloud/cloudservice/ACWeatherManager$6;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 257
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 12
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 239
    iget-object v8, p0, Lcom/accloud/cloudservice/ACWeatherManager$6;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v9, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "error"

    invoke-virtual {p1, v11}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v8, "history"

    invoke-virtual {p1, v8}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 242
    .local v6, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "aqiList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACAQI;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/accloud/service/ACObject;

    .line 244
    .local v5, "object":Lcom/accloud/service/ACObject;
    const-string v8, "aqi"

    invoke-virtual {v5, v8}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, "AQI":I
    const-string v8, "min"

    invoke-virtual {v5, v8}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 246
    .local v4, "minAQI":I
    const-string v8, "max"

    invoke-virtual {v5, v8}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 247
    .local v3, "maxAQI":I
    const-string v8, "timestamp"

    invoke-virtual {v5, v8}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "timestamp":Ljava/lang/String;
    new-instance v8, Lcom/accloud/service/ACAQI;

    invoke-direct {v8, v0, v4, v3, v7}, Lcom/accloud/service/ACAQI;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v0    # "AQI":I
    .end local v3    # "maxAQI":I
    .end local v4    # "minAQI":I
    .end local v5    # "object":Lcom/accloud/service/ACObject;
    .end local v7    # "timestamp":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/accloud/cloudservice/ACWeatherManager$6;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v8, v1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
