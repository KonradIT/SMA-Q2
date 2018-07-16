.class Lcom/accloud/cloudservice/ACBindManager$2;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->listDevicesWithStatus(Lcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 84
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$2;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$2;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACBindManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-virtual {v0, v1}, Lcom/accloud/cloudservice/ACBindManager;->listDevicesFromCacheWithStatus(Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 139
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 31
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0xbb8

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x2710

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_0

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v27, v0

    new-instance v28, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const-string v30, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface/range {v27 .. v28}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 134
    :goto_0
    return-void

    .line 91
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$2;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/accloud/cloudservice/ACBindManager;->listDevicesFromCacheWithStatus(Lcom/accloud/cloudservice/PayloadCallback;)V

    goto :goto_0

    .line 93
    :cond_1
    const-string v27, "devices"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 94
    .local v26, "userDevices":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v20, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACUserDevice;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v19

    .line 96
    .local v19, "deviceNum":I
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    const-string v28, "ablecloud_privatedevices_num"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/accloud/utils/PreferencesUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 97
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 98
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/accloud/service/ACObject;

    .line 99
    .local v23, "object":Lcom/accloud/service/ACObject;
    const-string v27, "aesKey"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, "aesKey":Ljava/lang/String;
    const-string v27, "deviceId"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 101
    .local v5, "deviceId":J
    const-string v27, "owner"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 102
    .local v7, "owner":J
    const-string v27, "physicalDeviceId"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 103
    .local v13, "physicalDeviceId":Ljava/lang/String;
    const-string v27, "subDomainId"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 104
    .local v10, "subDomainId":J
    const-string v27, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "name":Ljava/lang/String;
    const-string v27, "gatewayDeviceId"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 106
    .local v14, "gatewayDeviceId":J
    const-string v27, "status"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 107
    .local v24, "status":J
    const-string v27, "rootId"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 109
    .local v16, "rootId":J
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ablecloud_privatedevice"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_aesKey"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v12}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ablecloud_privatedevice"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_deviceId"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5, v6}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 111
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ablecloud_privatedevice"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_owner"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7, v8}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 112
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ablecloud_privatedevice"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_physicalDeviceId"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v13}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ablecloud_privatedevice"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_subDomainId"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10, v11}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 114
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ablecloud_privatedevice"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_deviceName"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Lcom/accloud/utils/PreferencesUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ablecloud_privatedevice"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_gatewayDeviceId"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14, v15}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 116
    sget-object v27, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ablecloud_privatedevice"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_rootId"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lcom/accloud/utils/PreferencesUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 118
    sget-object v27, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    if-eqz v27, :cond_4

    sget-object v27, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_4

    .line 119
    sget-object v27, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/accloud/service/ACDeviceFind;

    .line 120
    .local v18, "deviceFind":Lcom/accloud/service/ACDeviceFind;
    invoke-virtual/range {v18 .. v18}, Lcom/accloud/service/ACDeviceFind;->getPhysicalDeviceId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 121
    const-wide/16 v28, 0x0

    cmp-long v27, v24, v28

    if-nez v27, :cond_3

    .line 122
    const-wide/16 v24, 0x2

    goto :goto_2

    .line 124
    :cond_3
    const-wide/16 v24, 0x3

    goto :goto_2

    .line 128
    .end local v18    # "deviceFind":Lcom/accloud/service/ACDeviceFind;
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v4, Lcom/accloud/service/ACUserDevice;

    invoke-direct/range {v4 .. v17}, Lcom/accloud/service/ACUserDevice;-><init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V

    .line 129
    .local v4, "userDevice":Lcom/accloud/service/ACUserDevice;
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACUserDevice;->setStatus(I)V

    .line 130
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 132
    .end local v4    # "userDevice":Lcom/accloud/service/ACUserDevice;
    .end local v5    # "deviceId":J
    .end local v7    # "owner":J
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "subDomainId":J
    .end local v12    # "aesKey":Ljava/lang/String;
    .end local v13    # "physicalDeviceId":Ljava/lang/String;
    .end local v14    # "gatewayDeviceId":J
    .end local v16    # "rootId":J
    .end local v23    # "object":Lcom/accloud/service/ACObject;
    .end local v24    # "status":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
