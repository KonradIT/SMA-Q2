.class Lcom/accloud/cloudservice/ACRankingManager$4;
.super Ljava/lang/Object;
.source "ACRankingManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACRankingManager;->ranks(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 128
    iput-object p1, p0, Lcom/accloud/cloudservice/ACRankingManager$4;->this$0:Lcom/accloud/cloudservice/ACRankingManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACRankingManager$4;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/accloud/cloudservice/ACRankingManager$4;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 153
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 19
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/accloud/cloudservice/ACRankingManager$4;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

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

    .line 148
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v3, "profile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/accloud/service/ACMsg;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v12

    .line 135
    .local v12, "profile":Lcom/accloud/service/ACObject;
    const-string v3, "objects"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 136
    .local v14, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACObject;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v15, "ranks":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACRankingValue;>;"
    if-eqz v14, :cond_1

    .line 138
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/accloud/service/ACObject;

    .line 139
    .local v13, "object":Lcom/accloud/service/ACObject;
    const-string v3, "timestamp"

    invoke-virtual {v13, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 140
    .local v10, "rTimestamp":J
    const-string v3, "uid"

    invoke-virtual {v13, v3}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    .line 141
    .local v4, "rKey":J
    const-string v3, "value"

    invoke-virtual {v13, v3}, Lcom/accloud/service/ACObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 142
    .local v6, "rValue":D
    const-string v3, "place"

    invoke-virtual {v13, v3}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 143
    .local v8, "rPlace":J
    new-instance v3, Lcom/accloud/service/ACRankingValue;

    invoke-direct/range {v3 .. v12}, Lcom/accloud/service/ACRankingValue;-><init>(JDJJLcom/accloud/service/ACObject;)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "rKey":J
    .end local v6    # "rValue":D
    .end local v8    # "rPlace":J
    .end local v10    # "rTimestamp":J
    .end local v13    # "object":Lcom/accloud/service/ACObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/accloud/cloudservice/ACRankingManager$4;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v3, v15}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
