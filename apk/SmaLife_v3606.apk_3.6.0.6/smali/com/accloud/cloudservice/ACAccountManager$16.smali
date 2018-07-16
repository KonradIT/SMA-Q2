.class Lcom/accloud/cloudservice/ACAccountManager$16;
.super Ljava/lang/Object;
.source "ACAccountManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACAccountManager;->getUserProfile(Lcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACAccountManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACAccountManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/accloud/cloudservice/ACAccountManager$16;->this$0:Lcom/accloud/cloudservice/ACAccountManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACAccountManager$16;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/accloud/cloudservice/ACAccountManager$16;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 648
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 5
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 637
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/accloud/cloudservice/ACAccountManager$16;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    new-instance v2, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_0
    const-string v1, "userProfile"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACMsg;->getACObject(Ljava/lang/String;)Lcom/accloud/service/ACObject;

    move-result-object v0

    .line 641
    .local v0, "userProfile":Lcom/accloud/service/ACObject;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACAccountManager$16;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
