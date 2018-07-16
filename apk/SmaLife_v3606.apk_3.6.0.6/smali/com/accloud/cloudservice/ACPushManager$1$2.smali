.class Lcom/accloud/cloudservice/ACPushManager$1$2;
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
    .line 131
    iput-object p1, p0, Lcom/accloud/cloudservice/ACPushManager$1$2;->this$1:Lcom/accloud/cloudservice/ACPushManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 139
    sget-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewatch failed:"

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

    .line 140
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    const-string v1, "rewatch success"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method
