.class Lcom/accloud/cloudservice/ACRankingManager$7;
.super Ljava/lang/Object;
.source "ACRankingManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACRankingManager;->scan(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACRankingManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACRankingManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/accloud/cloudservice/ACRankingManager$7;->this$0:Lcom/accloud/cloudservice/ACRankingManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACRankingManager$7;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/accloud/cloudservice/ACRankingManager$7;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 267
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 20
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACRankingManager$7;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

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

    .line 262
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v16, "objects"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 248
    .local v14, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v15, "ranks":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACRankingValue;>;"
    if-eqz v14, :cond_1

    .line 250
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/accloud/service/ACObject;

    .line 251
    .local v13, "object":Lcom/accloud/service/ACObject;
    const-string v16, "timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 252
    .local v10, "rTimestamp":J
    const-string v16, "uid"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v4, v0

    .line 253
    .local v4, "rKey":J
    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/accloud/service/ACObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 254
    .local v6, "rValue":D
    const-string v16, "place"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 255
    .local v8, "rPlace":J
    const-string v16, "profile"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/accloud/service/ACObject;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v12

    .line 256
    .local v12, "rProfile":Lcom/accloud/service/ACObject;
    new-instance v3, Lcom/accloud/service/ACRankingValue;

    invoke-direct/range {v3 .. v12}, Lcom/accloud/service/ACRankingValue;-><init>(JDJJLcom/accloud/service/ACObject;)V

    .line 257
    .local v3, "rankingValue":Lcom/accloud/service/ACRankingValue;
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "rankingValue":Lcom/accloud/service/ACRankingValue;
    .end local v4    # "rKey":J
    .end local v6    # "rValue":D
    .end local v8    # "rPlace":J
    .end local v10    # "rTimestamp":J
    .end local v12    # "rProfile":Lcom/accloud/service/ACObject;
    .end local v13    # "object":Lcom/accloud/service/ACObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/accloud/cloudservice/ACRankingManager$7;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
