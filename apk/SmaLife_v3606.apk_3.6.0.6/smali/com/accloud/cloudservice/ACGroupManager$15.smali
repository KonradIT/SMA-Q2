.class Lcom/accloud/cloudservice/ACGroupManager$15;
.super Ljava/lang/Object;
.source "ACGroupManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACGroupManager;->listHomes(Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACGroupManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACGroupManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/accloud/cloudservice/ACGroupManager$15;->this$0:Lcom/accloud/cloudservice/ACGroupManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACGroupManager$15;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/accloud/cloudservice/ACGroupManager$15;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 539
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 13
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 521
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/accloud/cloudservice/ACGroupManager$15;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v10, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "error"

    invoke-virtual {p1, v12}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v10}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 534
    :goto_0
    return-void

    .line 524
    :cond_0
    const-string v1, "homes"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 525
    .local v9, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "homes":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACHome;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/accloud/service/ACObject;

    .line 527
    .local v8, "object":Lcom/accloud/service/ACObject;
    const-string v1, "homeId"

    invoke-virtual {v8, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 528
    .local v2, "homeId":J
    const-string v1, "owner"

    invoke-virtual {v8, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 529
    .local v4, "owner":J
    const-string v1, "name"

    invoke-virtual {v8, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "name":Ljava/lang/String;
    new-instance v1, Lcom/accloud/service/ACHome;

    invoke-direct/range {v1 .. v6}, Lcom/accloud/service/ACHome;-><init>(JJLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    .end local v2    # "homeId":J
    .end local v4    # "owner":J
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "object":Lcom/accloud/service/ACObject;
    :cond_1
    iget-object v1, p0, Lcom/accloud/cloudservice/ACGroupManager$15;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
