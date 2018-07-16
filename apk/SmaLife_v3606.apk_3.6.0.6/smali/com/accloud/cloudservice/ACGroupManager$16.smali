.class Lcom/accloud/cloudservice/ACGroupManager$16;
.super Ljava/lang/Object;
.source "ACGroupManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACGroupManager;->listRooms(JLcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 558
    iput-object p1, p0, Lcom/accloud/cloudservice/ACGroupManager$16;->this$0:Lcom/accloud/cloudservice/ACGroupManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACGroupManager$16;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/accloud/cloudservice/ACGroupManager$16;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 580
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 17
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/accloud/cloudservice/ACGroupManager$16;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v14, Lcom/accloud/service/ACException;

    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v16, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v14}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 575
    :goto_0
    return-void

    .line 564
    :cond_0
    const-string v3, "rooms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/accloud/service/ACMsg;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 565
    .local v12, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v13, "rooms":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACRoom;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/accloud/service/ACObject;

    .line 567
    .local v11, "object":Lcom/accloud/service/ACObject;
    const-string v3, "homeId"

    invoke-virtual {v11, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 568
    .local v4, "homeId":J
    const-string v3, "roomId"

    invoke-virtual {v11, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 569
    .local v6, "roomId":J
    const-string v3, "owner"

    invoke-virtual {v11, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 570
    .local v8, "owner":J
    const-string v3, "name"

    invoke-virtual {v11, v3}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 571
    .local v10, "name":Ljava/lang/String;
    new-instance v3, Lcom/accloud/service/ACRoom;

    invoke-direct/range {v3 .. v10}, Lcom/accloud/service/ACRoom;-><init>(JJJLjava/lang/String;)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 573
    .end local v4    # "homeId":J
    .end local v6    # "roomId":J
    .end local v8    # "owner":J
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "object":Lcom/accloud/service/ACObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/accloud/cloudservice/ACGroupManager$16;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v3, v13}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
