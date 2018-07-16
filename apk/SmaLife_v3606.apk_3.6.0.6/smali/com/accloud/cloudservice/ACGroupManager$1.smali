.class Lcom/accloud/cloudservice/ACGroupManager$1;
.super Ljava/lang/Object;
.source "ACGroupManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACGroupManager;->createHome(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
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
    .line 30
    iput-object p1, p0, Lcom/accloud/cloudservice/ACGroupManager$1;->this$0:Lcom/accloud/cloudservice/ACGroupManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACGroupManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/accloud/cloudservice/ACGroupManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 47
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 10
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/accloud/cloudservice/ACGroupManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v7, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "error"

    invoke-virtual {p1, v9}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v7}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v1, "home"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACMsg;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v0

    .line 37
    .local v0, "object":Lcom/accloud/service/ACObject;
    const-string v1, "homeId"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 38
    .local v2, "homeId":J
    const-string v1, "owner"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 39
    .local v4, "owner":J
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/accloud/cloudservice/ACGroupManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v1, Lcom/accloud/service/ACHome;

    invoke-direct/range {v1 .. v6}, Lcom/accloud/service/ACHome;-><init>(JJLjava/lang/String;)V

    invoke-interface {v7, v1}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
