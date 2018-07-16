.class Lcom/accloud/cloudservice/ACPushManager$1$1;
.super Ljava/lang/Object;
.source "ACPushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 76
    iput-object p1, p0, Lcom/accloud/cloudservice/ACPushManager$1$1;->this$1:Lcom/accloud/cloudservice/ACPushManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    sget-object v1, Lcom/accloud/cloudservice/ACPushManager;->TAG:Ljava/lang/String;

    const-string v2, "updateAccessToken"

    invoke-static {v1, v2}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/accloud/service/ACAccountMgr;->updateAccessToken()V
    :try_end_0
    .catch Lcom/accloud/service/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lcom/accloud/service/ACException;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACPushManager$1$1;->this$1:Lcom/accloud/cloudservice/ACPushManager$1;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACPushManager$1;->this$0:Lcom/accloud/cloudservice/ACPushManager;

    iget-object v1, v1, Lcom/accloud/cloudservice/ACPushManager;->handler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
