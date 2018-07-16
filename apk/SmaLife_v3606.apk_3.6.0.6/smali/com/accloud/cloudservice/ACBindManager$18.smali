.class Lcom/accloud/cloudservice/ACBindManager$18;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->addSubDevice(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 929
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$18;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 963
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 964
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 20
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 932
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACBindManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

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

    .line 959
    :goto_0
    return-void

    .line 935
    :cond_0
    const-string v2, "device"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/accloud/service/ACObject;

    .line 936
    .local v16, "device":Lcom/accloud/service/ACObject;
    if-nez v16, :cond_1

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/accloud/cloudservice/ACBindManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v17, Lcom/accloud/service/ACUserDevice;

    invoke-direct/range {v17 .. v17}, Lcom/accloud/service/ACUserDevice;-><init>()V

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 939
    :cond_1
    const-string v2, "deviceId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 940
    .local v3, "deviceId":J
    const-string v2, "owner"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 941
    .local v5, "owner":J
    const-string v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 942
    .local v7, "name":Ljava/lang/String;
    const-string v2, "subDomainId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 943
    .local v8, "subDomainId":J
    const-string v2, "aesKey"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 944
    .local v10, "aesKey":Ljava/lang/String;
    const-string v2, "physicalDeviceId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 945
    .local v11, "physicalDeviceId":Ljava/lang/String;
    const-string v2, "gatewayDeviceId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 946
    .local v12, "gatewayDeviceId":J
    const-string v2, "rootId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 947
    .local v14, "rootId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$18;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v17, v0

    new-instance v2, Lcom/accloud/service/ACUserDevice;

    invoke-direct/range {v2 .. v15}, Lcom/accloud/service/ACUserDevice;-><init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    .line 948
    const/16 v2, 0x5dc

    new-instance v17, Lcom/accloud/cloudservice/ACBindManager$18$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/accloud/cloudservice/ACBindManager$18$1;-><init>(Lcom/accloud/cloudservice/ACBindManager$18;)V

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/accloud/cloudservice/AC;->findLocalDevice(ILcom/accloud/cloudservice/PayloadCallback;)V

    goto :goto_0
.end method
