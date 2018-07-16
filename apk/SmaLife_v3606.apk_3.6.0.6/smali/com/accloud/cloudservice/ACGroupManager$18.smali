.class Lcom/accloud/cloudservice/ACGroupManager$18;
.super Ljava/lang/Object;
.source "ACGroupManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACGroupManager;->listHomeDevicesWithStatus(JLcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 645
    iput-object p1, p0, Lcom/accloud/cloudservice/ACGroupManager$18;->this$0:Lcom/accloud/cloudservice/ACGroupManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACGroupManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/accloud/cloudservice/ACGroupManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 685
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 28
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 648
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACGroupManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v24, v0

    new-instance v25, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const-string v27, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface/range {v24 .. v25}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 680
    :goto_0
    return-void

    .line 651
    :cond_0
    const-string v24, "devices"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 652
    .local v21, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v17, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACUserDevice;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/accloud/service/ACObject;

    .line 654
    .local v20, "object":Lcom/accloud/service/ACObject;
    const-string v24, "aesKey"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 655
    .local v10, "aesKey":Ljava/lang/String;
    const-string v24, "deviceId"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 656
    .local v3, "deviceId":J
    const-string v24, "owner"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 657
    .local v5, "owner":J
    const-string v24, "physicalDeviceId"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 658
    .local v11, "physicalDeviceId":Ljava/lang/String;
    const-string v24, "subDomainId"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 659
    .local v8, "subDomainId":J
    const-string v24, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 660
    .local v7, "name":Ljava/lang/String;
    const-string v24, "gatewayDeviceId"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 661
    .local v12, "gatewayDeviceId":J
    const-string v24, "rootId"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 662
    .local v14, "rootId":J
    const-string v24, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 664
    .local v22, "status":J
    sget-object v24, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    if-eqz v24, :cond_3

    sget-object v24, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_3

    .line 665
    sget-object v24, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/accloud/service/ACDeviceFind;

    .line 666
    .local v16, "deviceFind":Lcom/accloud/service/ACDeviceFind;
    invoke-virtual/range {v16 .. v16}, Lcom/accloud/service/ACDeviceFind;->getPhysicalDeviceId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 667
    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-nez v24, :cond_2

    .line 668
    const-wide/16 v22, 0x2

    goto :goto_2

    .line 670
    :cond_2
    const-wide/16 v22, 0x3

    goto :goto_2

    .line 674
    .end local v16    # "deviceFind":Lcom/accloud/service/ACDeviceFind;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v2, Lcom/accloud/service/ACUserDevice;

    invoke-direct/range {v2 .. v15}, Lcom/accloud/service/ACUserDevice;-><init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V

    .line 675
    .local v2, "userDevice":Lcom/accloud/service/ACUserDevice;
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/accloud/service/ACUserDevice;->setStatus(I)V

    .line 676
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 678
    .end local v2    # "userDevice":Lcom/accloud/service/ACUserDevice;
    .end local v3    # "deviceId":J
    .end local v5    # "owner":J
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "subDomainId":J
    .end local v10    # "aesKey":Ljava/lang/String;
    .end local v11    # "physicalDeviceId":Ljava/lang/String;
    .end local v12    # "gatewayDeviceId":J
    .end local v14    # "rootId":J
    .end local v20    # "object":Lcom/accloud/service/ACObject;
    .end local v22    # "status":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACGroupManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
