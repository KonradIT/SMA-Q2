.class Lcom/accloud/cloudservice/ACBindManager$1;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->listDevices(Lcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 31
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$1;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 69
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 24
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACBindManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v21, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const-string v23, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 64
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v2, "devices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 38
    .local v20, "userDevices":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v17, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACUserDevice;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v16

    .line 40
    .local v16, "deviceNum":I
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v21, "ablecloud_privatedevices_num"

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v2, v0, v1}, Lcom/accloud/utils/PreferencesUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 41
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 42
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/accloud/service/ACObject;

    .line 43
    .local v19, "userDevice":Lcom/accloud/service/ACObject;
    const-string v2, "aesKey"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, "aesKey":Ljava/lang/String;
    const-string v2, "deviceId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 45
    .local v3, "deviceId":J
    const-string v2, "owner"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 46
    .local v5, "owner":J
    const-string v2, "physicalDeviceId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 47
    .local v11, "physicalDeviceId":Ljava/lang/String;
    const-string v2, "subDomainId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 48
    .local v8, "subDomainId":J
    const-string v2, "name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "name":Ljava/lang/String;
    const-string v2, "gatewayDeviceId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 50
    .local v12, "gatewayDeviceId":J
    const-string v2, "rootId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 52
    .local v14, "rootId":J
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ablecloud_privatedevice"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_aesKey"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0, v10}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ablecloud_privatedevice"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_deviceId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3, v4}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 54
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ablecloud_privatedevice"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_owner"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0, v5, v6}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 55
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ablecloud_privatedevice"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_physicalDeviceId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0, v11}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ablecloud_privatedevice"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_subDomainId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0, v8, v9}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 57
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ablecloud_privatedevice"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_deviceName"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0, v7}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ablecloud_privatedevice"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_gatewayDeviceId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0, v12, v13}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 59
    sget-object v2, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ablecloud_privatedevice"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_rootId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0, v14, v15}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 60
    new-instance v2, Lcom/accloud/service/ACUserDevice;

    invoke-direct/range {v2 .. v15}, Lcom/accloud/service/ACUserDevice;-><init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 62
    .end local v3    # "deviceId":J
    .end local v5    # "owner":J
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "subDomainId":J
    .end local v10    # "aesKey":Ljava/lang/String;
    .end local v11    # "physicalDeviceId":Ljava/lang/String;
    .end local v12    # "gatewayDeviceId":J
    .end local v14    # "rootId":J
    .end local v19    # "userDevice":Lcom/accloud/service/ACObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACBindManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
