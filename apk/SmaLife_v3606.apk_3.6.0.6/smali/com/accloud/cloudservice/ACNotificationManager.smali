.class public Lcom/accloud/cloudservice/ACNotificationManager;
.super Ljava/lang/Object;
.source "ACNotificationManager.java"

# interfaces
.implements Lcom/accloud/service/ACNotificationMgr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;,
        Lcom/accloud/cloudservice/ACNotificationManager$AddAliasTask;
    }
.end annotation


# instance fields
.field private mPushAgent:Lcom/umeng/message/PushAgent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    .line 21
    invoke-static {}, Lcom/accloud/common/ACConfiguration;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/message/PushAgent;->setDebugMode(Z)V

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/PushAgent;->setDebugMode(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/accloud/cloudservice/ACNotificationManager;)Lcom/umeng/message/PushAgent;
    .locals 1
    .param p0, "x0"    # Lcom/accloud/cloudservice/ACNotificationManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    return-object v0
.end method


# virtual methods
.method public addAlias(Ljava/lang/Long;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->enable()V

    .line 36
    :cond_0
    new-instance v0, Lcom/accloud/cloudservice/ACNotificationManager$AddAliasTask;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ablecloud"

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/accloud/cloudservice/ACNotificationManager$AddAliasTask;-><init>(Lcom/accloud/cloudservice/ACNotificationManager;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/accloud/cloudservice/ACNotificationManager$AddAliasTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    return-void
.end method

.method public disableNotification()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->disable()V

    .line 60
    :cond_0
    return-void
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/UmengRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->enable()V

    .line 29
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->onAppStart()V

    .line 30
    const-string v0, "PushAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v2}, Lcom/umeng/message/PushAgent;->isRegistered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public removeAlias(Ljava/lang/Long;Lcom/accloud/cloudservice/VoidCallback;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/accloud/cloudservice/VoidCallback;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->enable()V

    .line 42
    :cond_0
    new-instance v0, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ablecloud"

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;-><init>(Lcom/accloud/cloudservice/ACNotificationManager;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/accloud/cloudservice/ACNotificationManager$RemoveAliasTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    return-void
.end method

.method public setMessageHandler(Lcom/umeng/message/UHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/umeng/message/UHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0, p1}, Lcom/umeng/message/PushAgent;->setMessageHandler(Lcom/umeng/message/UHandler;)V

    .line 47
    return-void
.end method

.method public setNotificationClickHandler(Lcom/umeng/message/UmengNotificationClickHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/umeng/message/UmengNotificationClickHandler;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/accloud/cloudservice/ACNotificationManager;->mPushAgent:Lcom/umeng/message/PushAgent;

    invoke-virtual {v0, p1}, Lcom/umeng/message/PushAgent;->setNotificationClickHandler(Lcom/umeng/message/UHandler;)V

    .line 51
    return-void
.end method
