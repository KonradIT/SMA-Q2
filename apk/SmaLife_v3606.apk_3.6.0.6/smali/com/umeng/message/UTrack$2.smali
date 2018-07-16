.class Lcom/umeng/message/UTrack$2;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->sendCachedMsgLog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/umeng/message/UTrack$2;->a:Lcom/umeng/message/UTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/UTrack$2;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/message/MsgLogStore;->getMsgLogs(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/MsgLogStore$MsgLog;

    .line 193
    iget-object v1, p0, Lcom/umeng/message/UTrack$2;->a:Lcom/umeng/message/UTrack;

    iget-object v2, v0, Lcom/umeng/message/MsgLogStore$MsgLog;->msgId:Ljava/lang/String;

    iget v3, v0, Lcom/umeng/message/MsgLogStore$MsgLog;->actionType:I

    iget-wide v4, v0, Lcom/umeng/message/MsgLogStore$MsgLog;->time:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;Ljava/lang/String;IJ)V

    .line 194
    iget-object v0, p0, Lcom/umeng/message/UTrack$2;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MsgLogStore;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/message/MsgLogStore;->getMsgLogs(I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendCachedMsgLog finished, clear cacheLogSending flag"

    invoke-static {v0, v1}, Lcom/umeng/common/message/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v6}, Lcom/umeng/message/UTrack;->a(Z)Z

    .line 203
    :goto_1
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendCachedMsgLog finished, clear cacheLogSending flag"

    invoke-static {v0, v1}, Lcom/umeng/common/message/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v6}, Lcom/umeng/message/UTrack;->a(Z)Z

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendCachedMsgLog finished, clear cacheLogSending flag"

    invoke-static {v1, v2}, Lcom/umeng/common/message/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v6}, Lcom/umeng/message/UTrack;->a(Z)Z

    throw v0
.end method
