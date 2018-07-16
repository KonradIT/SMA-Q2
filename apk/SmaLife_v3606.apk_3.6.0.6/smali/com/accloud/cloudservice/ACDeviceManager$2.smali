.class Lcom/accloud/cloudservice/ACDeviceManager$2;
.super Ljava/lang/Object;
.source "ACDeviceManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACDeviceManager;->getDeviceInfo(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACDeviceManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACDeviceManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceManager$2;->this$0:Lcom/accloud/cloudservice/ACDeviceManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACDeviceManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 77
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 12
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v9, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "error"

    invoke-virtual {p1, v11}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "ipAddr"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "ip":Ljava/lang/String;
    const-string v0, "devVersion"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "devVersion":Ljava/lang/String;
    const-string v0, "modVersion"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "modVersion":Ljava/lang/String;
    const-string v0, "activeTime"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "activeTime":Ljava/lang/String;
    const-string v0, "lastOnlineTime"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "lastOnlineTime":Ljava/lang/String;
    const-string v0, "country"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "country":Ljava/lang/String;
    const-string v0, "province"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "province":Ljava/lang/String;
    const-string v0, "city"

    invoke-virtual {p1, v0}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "city":Ljava/lang/String;
    iget-object v9, p0, Lcom/accloud/cloudservice/ACDeviceManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v0, Lcom/accloud/service/ACDevice;

    invoke-direct/range {v0 .. v8}, Lcom/accloud/service/ACDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
