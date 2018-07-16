.class Lcom/accloud/cloudservice/ACBindManager$23;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager;->openGatewayMatch(Ljava/lang/String;JILcom/accloud/cloudservice/VoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACBindManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/VoidCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACBindManager;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$23;->this$0:Lcom/accloud/cloudservice/ACBindManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACBindManager$23;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$23;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 1153
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 4
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 1143
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$23;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v1, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 1148
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACBindManager$23;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0}, Lcom/accloud/cloudservice/VoidCallback;->success()V

    goto :goto_0
.end method
