.class Lcom/accloud/cloudservice/ACFileManager$4;
.super Ljava/lang/Object;
.source "ACFileManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/ACMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACFileManager;->uploadFile(Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACFileManager;

.field final synthetic val$callback:Lcom/accloud/cloudservice/VoidCallback;

.field final synthetic val$file:Lcom/accloud/service/ACFileInfo;

.field final synthetic val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACFileManager;Lcom/accloud/cloudservice/VoidCallback;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/accloud/cloudservice/ACFileManager$4;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    iput-object p3, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$file:Lcom/accloud/service/ACFileInfo;

    iput-object p4, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 1
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-interface {v0, p1}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 221
    return-void
.end method

.method public finish(Lcom/accloud/service/ACMsg;)V
    .locals 6
    .param p1, "resp"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->isErr()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    new-instance v3, Lcom/accloud/service/ACException;

    invoke-virtual {p1}, Lcom/accloud/service/ACMsg;->getErrCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "error"

    invoke-virtual {p1, v5}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/accloud/service/ACException;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/accloud/cloudservice/VoidCallback;->error(Lcom/accloud/service/ACException;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const-string v2, "storeType"

    invoke-virtual {p1, v2}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "storeType":Ljava/lang/String;
    const-string v2, "uptoken"

    invoke-virtual {p1, v2}, Lcom/accloud/service/ACMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "token":Ljava/lang/String;
    const-string v2, "qiniu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager$4;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v3, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$file:Lcom/accloud/service/ACFileInfo;

    iget-object v4, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    iget-object v5, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/accloud/cloudservice/ACFileManager;->uploadFileToQiniu(Ljava/lang/String;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V

    goto :goto_0

    .line 212
    :cond_2
    const-string v2, "aws"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/accloud/cloudservice/ACFileManager$4;->this$0:Lcom/accloud/cloudservice/ACFileManager;

    iget-object v3, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$file:Lcom/accloud/service/ACFileInfo;

    iget-object v4, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$progressCallback:Lcom/accloud/cloudservice/ProgressCallback;

    iget-object v5, p0, Lcom/accloud/cloudservice/ACFileManager$4;->val$callback:Lcom/accloud/cloudservice/VoidCallback;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/accloud/cloudservice/ACFileManager;->uploadFileToAws(Ljava/lang/String;Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V

    goto :goto_0
.end method
