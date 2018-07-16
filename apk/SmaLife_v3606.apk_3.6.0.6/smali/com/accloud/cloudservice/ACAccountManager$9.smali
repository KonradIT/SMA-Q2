.class Lcom/accloud/cloudservice/ACAccountManager$9;
.super Ljava/lang/Object;
.source "ACAccountManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACAccountManager;->listAllOpenIds(Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACAccountManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/accloud/cloudservice/ACAccountManager$9;->this$0:Lcom/accloud/cloudservice/ACAccountManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACAccountManager$9;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/accloud/cloudservice/ACAccountManager$9;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 399
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 10
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    iget-object v6, p0, Lcom/accloud/cloudservice/ACAccountManager$9;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v7, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "error"

    invoke-virtual {p1, v9}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 394
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v6, "openIds"

    invoke-virtual {p1, v6}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 375
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v4, "openIdInfos":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACOpenIdInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/accloud/service/ACObject;

    .line 377
    .local v1, "object":Lcom/accloud/service/ACObject;
    const-string v6, "openId"

    invoke-virtual {v1, v6}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "openId":Ljava/lang/String;
    const-string v6, "provider"

    invoke-virtual {v1, v6}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "provider":Ljava/lang/String;
    sget-object v6, Lcom/accloud/service/ACThirdPlatform;->QQ:Lcom/accloud/service/ACThirdPlatform;

    iget-object v6, v6, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    new-instance v6, Lcom/accloud/service/ACOpenIdInfo;

    sget-object v7, Lcom/accloud/service/ACThirdPlatform;->QQ:Lcom/accloud/service/ACThirdPlatform;

    invoke-direct {v6, v7, v3}, Lcom/accloud/service/ACOpenIdInfo;-><init>(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_1
    sget-object v6, Lcom/accloud/service/ACThirdPlatform;->SINA:Lcom/accloud/service/ACThirdPlatform;

    iget-object v6, v6, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 382
    new-instance v6, Lcom/accloud/service/ACOpenIdInfo;

    sget-object v7, Lcom/accloud/service/ACThirdPlatform;->SINA:Lcom/accloud/service/ACThirdPlatform;

    invoke-direct {v6, v7, v3}, Lcom/accloud/service/ACOpenIdInfo;-><init>(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :cond_2
    sget-object v6, Lcom/accloud/service/ACThirdPlatform;->WEIXIN:Lcom/accloud/service/ACThirdPlatform;

    iget-object v6, v6, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 384
    new-instance v6, Lcom/accloud/service/ACOpenIdInfo;

    sget-object v7, Lcom/accloud/service/ACThirdPlatform;->WEIXIN:Lcom/accloud/service/ACThirdPlatform;

    invoke-direct {v6, v7, v3}, Lcom/accloud/service/ACOpenIdInfo;-><init>(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    :cond_3
    sget-object v6, Lcom/accloud/service/ACThirdPlatform;->JINGDONG:Lcom/accloud/service/ACThirdPlatform;

    iget-object v6, v6, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 386
    new-instance v6, Lcom/accloud/service/ACOpenIdInfo;

    sget-object v7, Lcom/accloud/service/ACThirdPlatform;->JINGDONG:Lcom/accloud/service/ACThirdPlatform;

    invoke-direct {v6, v7, v3}, Lcom/accloud/service/ACOpenIdInfo;-><init>(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 388
    :cond_4
    sget-object v6, Lcom/accloud/service/ACThirdPlatform;->OTHER:Lcom/accloud/service/ACThirdPlatform;

    invoke-virtual {v6, v5}, Lcom/accloud/service/ACThirdPlatform;->setProvider(Ljava/lang/String;)V

    .line 389
    new-instance v6, Lcom/accloud/service/ACOpenIdInfo;

    sget-object v7, Lcom/accloud/service/ACThirdPlatform;->OTHER:Lcom/accloud/service/ACThirdPlatform;

    invoke-direct {v6, v7, v3}, Lcom/accloud/service/ACOpenIdInfo;-><init>(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    .end local v1    # "object":Lcom/accloud/service/ACObject;
    .end local v3    # "openId":Ljava/lang/String;
    .end local v5    # "provider":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/accloud/cloudservice/ACAccountManager$9;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v6, v4}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
