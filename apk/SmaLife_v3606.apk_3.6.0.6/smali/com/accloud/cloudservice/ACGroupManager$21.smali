.class Lcom/accloud/cloudservice/ACGroupManager$21;
.super Ljava/lang/Object;
.source "ACGroupManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACGroupManager;->listHomeUsers(JLcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 811
    iput-object p1, p0, Lcom/accloud/cloudservice/ACGroupManager$21;->this$0:Lcom/accloud/cloudservice/ACGroupManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACGroupManager$21;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 834
    iget-object v0, p0, Lcom/accloud/cloudservice/ACGroupManager$21;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 835
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 19
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 814
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/accloud/cloudservice/ACGroupManager$21;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v16, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string v18, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 830
    :goto_0
    return-void

    .line 817
    :cond_0
    const-string v3, "users"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 818
    .local v15, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v2, "homeUsers":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACHomeUser;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/accloud/service/ACObject;

    .line 820
    .local v14, "object":Lcom/accloud/service/ACObject;
    const-string v3, "userId"

    invoke-virtual {v14, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 821
    .local v4, "userId":J
    const-string v3, "homeId"

    invoke-virtual {v14, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 822
    .local v6, "homeId":J
    const-string v3, "userType"

    invoke-virtual {v14, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 823
    .local v8, "userType":J
    const-string v3, "phone"

    invoke-virtual {v14, v3}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 824
    .local v10, "phone":Ljava/lang/String;
    const-string v3, "email"

    invoke-virtual {v14, v3}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 825
    .local v11, "email":Ljava/lang/String;
    const-string v3, "nickName"

    invoke-virtual {v14, v3}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 826
    .local v12, "nickName":Ljava/lang/String;
    new-instance v3, Lcom/accloud/service/ACHomeUser;

    invoke-direct/range {v3 .. v12}, Lcom/accloud/service/ACHomeUser;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 828
    .end local v4    # "userId":J
    .end local v6    # "homeId":J
    .end local v8    # "userType":J
    .end local v10    # "phone":Ljava/lang/String;
    .end local v11    # "email":Ljava/lang/String;
    .end local v12    # "nickName":Ljava/lang/String;
    .end local v14    # "object":Lcom/accloud/service/ACObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/accloud/cloudservice/ACGroupManager$21;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v3, v2}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
