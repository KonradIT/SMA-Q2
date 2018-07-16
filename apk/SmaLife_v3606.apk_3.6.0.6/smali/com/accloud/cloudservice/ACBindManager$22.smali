.class Lcom/accloud/cloudservice/ACBindManager$22;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->listNewDevices(Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 1096
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$22;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$22;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$22;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 1121
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 11
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 1099
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1100
    iget-object v7, p0, Lcom/accloud/cloudservice/ACBindManager$22;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v8, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "error"

    invoke-virtual {p1, v10}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 1116
    :goto_0
    return-void

    .line 1102
    :cond_0
    const-string v7, "devices"

    invoke-virtual {p1, v7}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1103
    .local v2, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v1, "deviceBinds":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACDeviceBind;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/accloud/service/ACObject;

    .line 1105
    .local v0, "device":Lcom/accloud/service/ACObject;
    const-string v7, "subDomainId"

    invoke-virtual {v0, v7}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1106
    .local v6, "subDomainId":Ljava/lang/String;
    const-string v7, "physicalDeviceId"

    invoke-virtual {v0, v7}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1108
    .local v5, "physicalDeviceId":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lcom/accloud/service/ACDeviceBind;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9, v5}, Lcom/accloud/service/ACDeviceBind;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1109
    :catch_0
    move-exception v3

    .line 1110
    .local v3, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/accloud/cloudservice/ACBindManager$22;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v8, Lcom/accloud/service/ACException;

    sget v9, Lcom/accloud/service/ACException;->INTERNAL_ERROR:I

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 1114
    .end local v0    # "device":Lcom/accloud/service/ACObject;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "physicalDeviceId":Ljava/lang/String;
    .end local v6    # "subDomainId":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/accloud/cloudservice/ACBindManager$22;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v7, v1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
