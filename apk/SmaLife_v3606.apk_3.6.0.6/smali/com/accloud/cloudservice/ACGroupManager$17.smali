.class Lcom/accloud/cloudservice/ACGroupManager$17;
.super Ljava/lang/Object;
.source "ACGroupManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACGroupManager;->listHomeDevices(JLcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 599
    iput-object p1, p0, Lcom/accloud/cloudservice/ACGroupManager$17;->this$0:Lcom/accloud/cloudservice/ACGroupManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACGroupManager$17;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/accloud/cloudservice/ACGroupManager$17;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 625
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 23
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 602
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACGroupManager$17;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v20, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const-string v22, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 620
    :goto_0
    return-void

    .line 605
    :cond_0
    const-string v2, "devices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 606
    .local v19, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v16, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACUserDevice;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/accloud/service/ACObject;

    .line 608
    .local v18, "object":Lcom/accloud/service/ACObject;
    const-string v2, "aesKey"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, "aesKey":Ljava/lang/String;
    const-string v2, "deviceId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 610
    .local v3, "deviceId":J
    const-string v2, "owner"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 611
    .local v5, "owner":J
    const-string v2, "physicalDeviceId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 612
    .local v11, "physicalDeviceId":Ljava/lang/String;
    const-string v2, "subDomainId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 613
    .local v8, "subDomainId":J
    const-string v2, "name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 614
    .local v7, "name":Ljava/lang/String;
    const-string v2, "gatewayDeviceId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 615
    .local v12, "gatewayDeviceId":J
    const-string v2, "rootId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 616
    .local v14, "rootId":J
    new-instance v2, Lcom/accloud/service/ACUserDevice;

    invoke-direct/range {v2 .. v15}, Lcom/accloud/service/ACUserDevice;-><init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 618
    .end local v3    # "deviceId":J
    .end local v5    # "owner":J
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "subDomainId":J
    .end local v10    # "aesKey":Ljava/lang/String;
    .end local v11    # "physicalDeviceId":Ljava/lang/String;
    .end local v12    # "gatewayDeviceId":J
    .end local v14    # "rootId":J
    .end local v18    # "object":Lcom/accloud/service/ACObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACGroupManager$17;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method