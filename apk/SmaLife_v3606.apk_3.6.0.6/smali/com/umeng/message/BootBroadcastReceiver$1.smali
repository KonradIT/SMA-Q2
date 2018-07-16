.class Lcom/umeng/message/BootBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BootBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/BootBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/BootBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/umeng/message/BootBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/umeng/message/BootBroadcastReceiver$1;->a:Lcom/umeng/message/BootBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/message/BootBroadcastReceiver$1;->a:Lcom/umeng/message/BootBroadcastReceiver;

    invoke-static {v0}, Lcom/umeng/message/BootBroadcastReceiver;->a(Lcom/umeng/message/BootBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MsgLogStore;->getMsgLogIdTypes()Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;

    .line 40
    iget-object v2, p0, Lcom/umeng/message/BootBroadcastReceiver$1;->a:Lcom/umeng/message/BootBroadcastReceiver;

    invoke-static {v2}, Lcom/umeng/message/BootBroadcastReceiver;->a(Lcom/umeng/message/BootBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v2

    iget-object v3, v0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/umeng/message/MsgLogStore;->getMsgLog(Ljava/lang/String;)Lcom/umeng/message/MsgLogStore$MsgLog;

    move-result-object v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    iget-object v2, v0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgType:Ljava/lang/String;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/umeng/message/BootBroadcastReceiver$1;->a:Lcom/umeng/message/BootBroadcastReceiver;

    invoke-static {v2}, Lcom/umeng/message/BootBroadcastReceiver;->a(Lcom/umeng/message/BootBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v2

    iget-object v0, v0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->msgId:Ljava/lang/String;

    const/4 v3, 0x2

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 43
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/umeng/message/MsgLogStore;->addLog(Ljava/lang/String;IJ)Z

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method
