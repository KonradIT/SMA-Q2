.class Lcom/accloud/cloudservice/ACRankingManager$3;
.super Ljava/lang/Object;
.source "ACRankingManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACRankingManager;->get(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACRankingManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/accloud/cloudservice/ACRankingManager$3;->this$0:Lcom/accloud/cloudservice/ACRankingManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACRankingManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/accloud/cloudservice/ACRankingManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 109
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 14
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/accloud/cloudservice/ACRankingManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

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

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 97
    .local v8, "resultTimestamp":J
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    .line 98
    .local v2, "resultKey":J
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 99
    .local v4, "resultValue":D
    const-string v0, "place"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 100
    .local v6, "resultPlace":J
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v10

    .line 101
    .local v10, "profile":Lcom/accloud/service/ACObject;
    new-instance v1, Lcom/accloud/service/ACRankingValue;

    invoke-direct/range {v1 .. v10}, Lcom/accloud/service/ACRankingValue;-><init>(JDJJLcom/accloud/service/ACObject;)V

    .line 102
    .local v1, "rankingValue":Lcom/accloud/service/ACRankingValue;
    iget-object v0, p0, Lcom/accloud/cloudservice/ACRankingManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
