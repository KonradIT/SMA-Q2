.class Lcom/accloud/cloudservice/ACPushManager$1$3;
.super Ljava/lang/Object;
.source "ACPushManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACPushManager$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/accloud/cloudservice/ACPushManager$1;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACPushManager$1;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/accloud/cloudservice/ACPushManager$1$3;->this$1:Lcom/accloud/cloudservice/ACPushManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 181
    sget-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/accloud/cloudservice/ACPushManager$1$3;->this$1:Lcom/accloud/cloudservice/ACPushManager$1;

    iget-object v2, v2, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v2, v2, Lcom/accloud/cloudservice/ACPushManager;->pushTables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/accloud/service/ACPushTable;

    .line 165
    .local v1, "pushTable":Lcom/accloud/service/ACPushTable;
    iget-object v2, p0, Lcom/accloud/cloudservice/ACPushManager$1$3;->this$1:Lcom/accloud/cloudservice/ACPushManager$1;

    iget-object v2, v2, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    new-instance v3, Lcom/accloud/cloudservice/ACPushManager$1$3$1;

    invoke-direct {v3, p0}, Lcom/accloud/cloudservice/ACPushManager$1$3$1;-><init>(Lcom/accloud/cloudservice/ACPushManager$1$3;)V

    invoke-virtual {v2, v1, v3}, Lcom/accloud/cloudservice/ACPushManager;->rewatch(Lcom/accloud/service/ACPushTable;Lcom/accloud/cloudservice/VoidCallback;)V

    goto :goto_0

    .line 177
    .end local v1    # "pushTable":Lcom/accloud/service/ACPushTable;
    :cond_0
    return-void
.end method
