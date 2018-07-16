.class Lcom/accloud/cloudservice/ACBindManager$36;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->sendToDevice(Ljava/lang/String;JLjava/lang/String;Lcom/accloud/service/ACDeviceMsg;Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACBindManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACBindManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$36;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$36;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$36;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 1499
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 6
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 1484
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/accloud/cloudservice/ACBindManager$36;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v3, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "error"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 1494
    :goto_0
    return-void

    .line 1488
    :cond_0
    :try_start_0
    const-string v2, "code"

    invoke-virtual {p1, v2}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1489
    .local v1, "msgCode":I
    iget-object v2, p0, Lcom/accloud/cloudservice/ACBindManager$36;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v3, Lcom/accloud/service/ACDeviceMsg;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getPayload()[B

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/accloud/service/ACDeviceMsg;-><init>(I[B)V

    invoke-interface {v2, v3}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1490
    .end local v1    # "msgCode":I
    :catch_0
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/accloud/cloudservice/ACBindManager$36;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v3, Lcom/accloud/service/ACException;

    sget v4, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0
.end method
