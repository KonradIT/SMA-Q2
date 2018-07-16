.class Lcom/umeng/message/proguard/aR$1;
.super Ljava/lang/Object;
.source "NewMessagePush.java"

# interfaces
.implements Lorg/android/agoo/net/channel/IPushHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/aR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/proguard/aR;


# direct methods
.method constructor <init>(Lcom/umeng/message/proguard/aR;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;J)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 547
    .line 548
    iget-object v2, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v2}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 550
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v0}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;)J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 551
    iget-object v4, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v4}, Lcom/umeng/message/proguard/aR;->b(Lcom/umeng/message/proguard/aR;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->addLastTcpConnectedEndTime(J)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 555
    :goto_0
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect [onDisconnected] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] sessionId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]tcpKeepaliveInterval ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v2}, Lcom/umeng/message/proguard/aR;->b(Lcom/umeng/message/proguard/aR;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->addLastTcpConnectedEndTime(J)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    goto :goto_0
.end method


# virtual methods
.method public onCommand(Ljava/lang/Object;JLjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public onConnected(Ljava/lang/Object;JJLjava/util/Map;Lcom/umeng/message/proguard/aT;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/umeng/message/proguard/aT;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 603
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]sessionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]tcpConnectedInterval["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]header["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;J)J

    .line 608
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/aR;->b(Lcom/umeng/message/proguard/aR;J)J

    .line 610
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v0}, Lcom/umeng/message/proguard/aR;->b(Lcom/umeng/message/proguard/aR;)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v1}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p4, p5}, Lorg/android/agoo/net/channel/ChannelManager$Builder;->addLastTcpConnectedSuccessfully(JJ)Lorg/android/agoo/net/channel/ChannelManager$Builder;

    .line 613
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v0}, Lcom/umeng/message/proguard/aR;->d(Lcom/umeng/message/proguard/aR;)Lorg/android/agoo/net/channel/ChannelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelManager;->readyChannelType()Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v0

    .line 614
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected initChannel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v3}, Lcom/umeng/message/proguard/aR;->e(Lcom/umeng/message/proguard/aR;)Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/android/agoo/net/channel/ChannelType;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]-->targetChannel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/android/agoo/net/channel/ChannelType;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-virtual {v0, p6}, Lcom/umeng/message/proguard/aR;->a(Ljava/util/Map;)V

    .line 622
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    const-string v1, "action_get_his_message"

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Ljava/lang/String;J)V

    .line 623
    iget-object v1, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v0}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;)J

    move-result-wide v2

    const-string v0, "hb"

    invoke-interface {p6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, p1, v2, v3, v0}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;Ljava/lang/Object;JLjava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Lorg/android/Config;->setSpdyConnectTimes(Landroid/content/Context;I)V

    .line 626
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Lorg/android/Config;->setHttpConnectTimes(Landroid/content/Context;I)V

    .line 627
    new-instance v0, Lorg/android/agoo/net/async/c;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v1, v1, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    const-string v2, "agoo_pushService_connect_success"

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/net/async/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v1, v1, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/Config;->getConnectHeader(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/async/c;->a(Ljava/util/LinkedHashMap;)V

    .line 629
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aD;->l(Landroid/content/Context;)V

    .line 630
    return-void
.end method

.method public onData(Ljava/lang/Object;JLjava/lang/String;[BLcom/umeng/message/proguard/aV;)V
    .locals 5

    .prologue
    .line 580
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;J)J

    .line 581
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onData,mLastHeartTime--->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v2}, Lcom/umeng/message/proguard/aR;->c(Lcom/umeng/message/proguard/aR;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    .line 583
    const-string v2, ""

    .line 585
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {v1, p5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :try_start_1
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message--->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz p6, :cond_0

    .line 589
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v0, p6}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;Lcom/umeng/message/proguard/aV;)Lcom/umeng/message/proguard/aV;

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aR;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 597
    :cond_1
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 593
    :goto_1
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/umeng/message/proguard/aK;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 592
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onDisconnected(Ljava/lang/Object;JLcom/umeng/message/proguard/aT;)V
    .locals 4

    .prologue
    .line 565
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPushHandler onClose............"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/message/proguard/aR$1;->a(Ljava/lang/Object;J)V

    .line 567
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v1}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;)J

    move-result-wide v2

    const-string v1, "onClose"

    invoke-static {v0, v2, v3, v1}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    const-string v1, "agoo_action_heart"

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/aR;->e(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;J)J

    .line 570
    if-eqz p4, :cond_0

    .line 571
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v0, p4}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;Lcom/umeng/message/proguard/aT;)V

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/umeng/message/proguard/aT;->i(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aT;)V

    .line 575
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Object;JLorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J",
            "Lorg/android/agoo/net/channel/ChannelError;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lcom/umeng/message/proguard/aT;",
            ")V"
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPushHandler onError............"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/message/proguard/aR$1;->a(Ljava/lang/Object;J)V

    .line 643
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v0, p1, p4, p5, p6}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;Ljava/lang/Object;Lorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 644
    if-eqz p7, :cond_1

    .line 645
    invoke-virtual {p7}, Lcom/umeng/message/proguard/aT;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p4}, Lorg/android/agoo/net/channel/ChannelError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Lcom/umeng/message/proguard/aT;->f(Ljava/lang/String;)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {v0, p7}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;Lcom/umeng/message/proguard/aT;)V

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bd;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Lcom/umeng/message/proguard/aT;->k(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0, p7}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aT;)V

    .line 653
    :cond_1
    return-void
.end method

.method public onPing(Ljava/lang/Object;J)V
    .locals 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/proguard/aR;->a(Lcom/umeng/message/proguard/aR;J)J

    .line 536
    const-wide/16 v0, 0x2

    rem-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 537
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heart-->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][server_receive]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heart-->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][client_receive]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/aK;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReportDNS(Lcom/umeng/message/proguard/aU;)V
    .locals 2

    .prologue
    .line 657
    invoke-static {}, Lcom/umeng/message/proguard/aR;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPushHandler begin............"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    if-eqz p1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/aD;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->a(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->c(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/message/proguard/aU;->b(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/umeng/message/proguard/aR$1;->a:Lcom/umeng/message/proguard/aR;

    iget-object v0, v0, Lcom/umeng/message/proguard/aR;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;Lcom/umeng/message/proguard/aU;)V

    .line 665
    :cond_0
    return-void
.end method
