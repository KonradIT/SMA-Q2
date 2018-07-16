.class Lcom/accloud/cloudservice/ACBindManager$3;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->listUsers(Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 194
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$3;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 221
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 20
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v16, v0

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

    invoke-interface/range {v16 .. v17}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 216
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v16, "users"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 201
    .local v13, "acObjects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "acDeviceUsers":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACDeviceUser;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/accloud/service/ACObject;

    .line 203
    .local v14, "binding":Lcom/accloud/service/ACObject;
    const-string v16, "userId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 204
    .local v4, "userId":J
    const-string v16, "deviceId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 205
    .local v6, "deviceId":J
    const-string v16, "userType"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 206
    .local v8, "userType":J
    const-string v16, "phone"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "phone":Ljava/lang/String;
    const-string v16, "email"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, "email":Ljava/lang/String;
    const-string v16, "nickName"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 211
    .local v12, "nickName":Ljava/lang/String;
    new-instance v3, Lcom/accloud/service/ACDeviceUser;

    invoke-direct/range {v3 .. v12}, Lcom/accloud/service/ACDeviceUser;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v3, "acDeviceUser":Lcom/accloud/service/ACDeviceUser;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    .end local v3    # "acDeviceUser":Lcom/accloud/service/ACDeviceUser;
    .end local v4    # "userId":J
    .end local v6    # "deviceId":J
    .end local v8    # "userType":J
    .end local v10    # "phone":Ljava/lang/String;
    .end local v11    # "email":Ljava/lang/String;
    .end local v12    # "nickName":Ljava/lang/String;
    .end local v14    # "binding":Lcom/accloud/service/ACObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACBindManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
