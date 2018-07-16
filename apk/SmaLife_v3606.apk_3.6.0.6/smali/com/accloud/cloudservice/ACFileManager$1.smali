.class Lcom/accloud/cloudservice/ACFileManager$1;
.super Ljava/lang/Object;
.source "ACFileManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACFileManager;->getDownloadUrl(Lcom/accloud/service/ACFileInfo;JLcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACFileManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$1;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACFileManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    .line 91
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 5
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

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

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v1, "downloadUrl"

    invoke-virtual {p1, v1}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACFileManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method
