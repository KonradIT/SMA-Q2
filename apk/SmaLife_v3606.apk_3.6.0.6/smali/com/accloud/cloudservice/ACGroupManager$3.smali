.class Lcom/accloud/cloudservice/ACGroupManager$3;
.super Ljava/lang/Object;
.source "ACGroupManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACGroupManager;->createRoom(JLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 99
    iput-object p1, p0, Lcom/accloud/cloudservice/ACGroupManager$3;->this$0:Lcom/accloud/cloudservice/ACGroupManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACGroupManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/accloud/cloudservice/ACGroupManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 117
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 12
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/accloud/cloudservice/ACGroupManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v9, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "error"

    invoke-virtual {p1, v11}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v9}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v1, "room"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACMsg;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v0

    .line 106
    .local v0, "object":Lcom/accloud/service/ACObject;
    const-string v1, "homeId"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 107
    .local v2, "homeId":J
    const-string v1, "roomId"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 108
    .local v4, "roomId":J
    const-string v1, "owner"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 109
    .local v6, "owner":J
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/accloud/cloudservice/ACGroupManager$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v1, Lcom/accloud/service/ACRoom;

    invoke-direct/range {v1 .. v8}, Lcom/accloud/service/ACRoom;-><init>(JJJLjava/lang/String;)V

    invoke-interface {v9, v1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
