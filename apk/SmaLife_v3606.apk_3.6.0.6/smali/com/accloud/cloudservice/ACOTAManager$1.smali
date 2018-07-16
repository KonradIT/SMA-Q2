.class Lcom/accloud/cloudservice/ACOTAManager$1;
.super Ljava/lang/Object;
.source "ACOTAManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACOTAManager;->checkUpdate(Ljava/lang/String;Lcom/accloud/service/ACOTACheckInfo;Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACOTAManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACOTAManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/accloud/cloudservice/ACOTAManager$1;->this$0:Lcom/accloud/cloudservice/ACOTAManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACOTAManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/accloud/cloudservice/ACOTAManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 77
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 20
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACOTAManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v17, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const-string v19, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 72
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v2, "update"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 50
    .local v16, "update":I
    if-nez v16, :cond_1

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACOTAManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v17, Lcom/accloud/service/ACOTAUpgradeInfo;

    const/16 v18, 0x0

    const-string v19, "you have not OTA update"

    invoke-direct/range {v17 .. v19}, Lcom/accloud/service/ACOTAUpgradeInfo;-><init>(ZLjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_1
    const-string v2, "currentVersion"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "currentVersion":Ljava/lang/String;
    const-string v2, "targetVersion"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "targetVersion":Ljava/lang/String;
    const-string v2, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 57
    .local v7, "status":I
    const-string v2, "otaMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 58
    .local v5, "otaMode":I
    const-string v2, "upgradeLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "upgradeLog":Ljava/lang/String;
    const-string v2, "files"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 60
    .local v14, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v8, "files":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACOTAFileInfo;>;"
    if-eqz v14, :cond_2

    .line 62
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/accloud/service/ACObject;

    .line 63
    .local v13, "object":Lcom/accloud/service/ACObject;
    const-string v2, "name"

    invoke-virtual {v13, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 64
    .local v12, "name":Ljava/lang/String;
    const-string v2, "downloadUrl"

    invoke-virtual {v13, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "downloadUrl":Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {v13, v2}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 66
    .local v15, "type":I
    const-string v2, "checksum"

    invoke-virtual {v13, v2}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 67
    .local v9, "checksum":I
    new-instance v2, Lcom/accloud/service/ACOTAFileInfo;

    invoke-direct {v2, v12, v15, v9, v10}, Lcom/accloud/service/ACOTAFileInfo;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v9    # "checksum":I
    .end local v10    # "downloadUrl":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "object":Lcom/accloud/service/ACObject;
    .end local v15    # "type":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACOTAManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v17, v0

    new-instance v2, Lcom/accloud/service/ACOTAUpgradeInfo;

    invoke-direct/range {v2 .. v8}, Lcom/accloud/service/ACOTAUpgradeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
