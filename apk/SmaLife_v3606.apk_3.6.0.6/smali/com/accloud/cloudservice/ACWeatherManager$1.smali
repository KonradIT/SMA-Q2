.class Lcom/accloud/cloudservice/ACWeatherManager$1;
.super Ljava/lang/Object;
.source "ACWeatherManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACWeatherManager;->getLatestPM25(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 27
    iput-object p1, p0, Lcom/accloud/cloudservice/ACWeatherManager$1;->this$0:Lcom/accloud/cloudservice/ACWeatherManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACWeatherManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/accloud/cloudservice/ACWeatherManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 44
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 8
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    iget-object v4, p0, Lcom/accloud/cloudservice/ACWeatherManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v5, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "error"

    invoke-virtual {p1, v7}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 39
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v4, "timestamp"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "timestamp":Ljava/lang/String;
    const-string v4, "value"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "avg":I
    const-string v4, "min"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 36
    .local v2, "min":I
    const-string v4, "max"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, "max":I
    iget-object v4, p0, Lcom/accloud/cloudservice/ACWeatherManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v5, Lcom/accloud/service/ACPM25;

    invoke-direct {v5, v3, v0, v2, v1}, Lcom/accloud/service/ACPM25;-><init>(Ljava/lang/String;III)V

    invoke-interface {v4, v5}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
