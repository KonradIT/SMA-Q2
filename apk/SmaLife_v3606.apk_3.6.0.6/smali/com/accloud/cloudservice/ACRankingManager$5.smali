.class Lcom/accloud/cloudservice/ACRankingManager$5;
.super Ljava/lang/Object;
.source "ACRankingManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACRankingManager;->totalCount(Ljava/lang/String;Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 171
    iput-object p1, p0, Lcom/accloud/cloudservice/ACRankingManager$5;->this$0:Lcom/accloud/cloudservice/ACRankingManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACRankingManager$5;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/accloud/cloudservice/ACRankingManager$5;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 186
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 8
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/accloud/cloudservice/ACRankingManager$5;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v4, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "error"

    invoke-virtual {p1, v6}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v4}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 178
    .local v2, "resultTimestamp":J
    const-string v1, "count"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "count":I
    iget-object v1, p0, Lcom/accloud/cloudservice/ACRankingManager$5;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v4, Lcom/accloud/service/ACRankingCount;

    int-to-long v6, v0

    invoke-direct {v4, v2, v3, v6, v7}, Lcom/accloud/service/ACRankingCount;-><init>(JJ)V

    invoke-interface {v1, v4}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
