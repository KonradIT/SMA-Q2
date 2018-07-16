.class public Lcom/umeng/message/UpdateActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateActionReceiver.java"


# instance fields
.field private a:Lcom/umeng/message/entity/UMessage;


# direct methods
.method public constructor <init>(Lcom/umeng/message/entity/UMessage;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/umeng/message/UpdateActionReceiver;->a:Lcom/umeng/message/entity/UMessage;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->isIncludesUmengUpdateSDK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    const-string v0, "UpdateListener"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 26
    const-string v1, "UpdateStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    const-string v1, "UpdateResponse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 29
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/message/PushAgent;->setUpdateResponse(Ljava/lang/Object;)V

    .line 30
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengMessageHandler;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/umeng/message/UpdateActionReceiver;->a:Lcom/umeng/message/entity/UMessage;

    invoke-virtual {v0, p1, v1}, Lcom/umeng/message/UmengMessageHandler;->dealWithNotificationMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    .line 38
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    :cond_1
    return-void

    .line 36
    :cond_2
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UpdateActionReceiver;->a:Lcom/umeng/message/entity/UMessage;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/UTrack;->trackMsgDismissed(Lcom/umeng/message/entity/UMessage;Z)V

    goto :goto_0
.end method
