.class Lcom/accloud/cloudservice/ACWeatherManager$2;
.super Ljava/lang/Object;
.source "ACWeatherManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACWeatherManager;->getLastDaysPM25(Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 84
    iput-object p1, p0, Lcom/accloud/cloudservice/ACWeatherManager$2;->this$0:Lcom/accloud/cloudservice/ACWeatherManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACWeatherManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/accloud/cloudservice/ACWeatherManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 106
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 12
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 88
    iget-object v8, p0, Lcom/accloud/cloudservice/ACWeatherManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

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

    .line 101
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v8, "history"

    invoke-virtual {p1, v8}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 91
    .local v5, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v6, "pm25s":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACPM25;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/accloud/service/ACObject;

    .line 93
    .local v4, "object":Lcom/accloud/service/ACObject;
    const-string v8, "timestamp"

    invoke-virtual {v4, v8}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "timestamp":Ljava/lang/String;
    const-string v8, "value"

    invoke-virtual {v4, v8}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "avg":I
    const-string v8, "min"

    invoke-virtual {v4, v8}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    .local v3, "min":I
    const-string v8, "max"

    invoke-virtual {v4, v8}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, "max":I
    new-instance v8, Lcom/accloud/service/ACPM25;

    invoke-direct {v8, v7, v0, v3, v2}, Lcom/accloud/service/ACPM25;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    .end local v0    # "avg":I
    .end local v2    # "max":I
    .end local v3    # "min":I
    .end local v4    # "object":Lcom/accloud/service/ACObject;
    .end local v7    # "timestamp":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/accloud/cloudservice/ACWeatherManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v8, v6}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
