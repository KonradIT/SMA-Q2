.class public interface abstract Lorg/android/agoo/net/channel/IPushHandler;
.super Ljava/lang/Object;
.source "IPushHandler.java"


# virtual methods
.method public abstract onCommand(Ljava/lang/Object;JLjava/lang/String;[B)V
.end method

.method public abstract onConnected(Ljava/lang/Object;JJLjava/util/Map;Lcom/umeng/message/proguard/aT;)V
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
.end method

.method public abstract onData(Ljava/lang/Object;JLjava/lang/String;[BLcom/umeng/message/proguard/aV;)V
.end method

.method public abstract onDisconnected(Ljava/lang/Object;JLcom/umeng/message/proguard/aT;)V
.end method

.method public abstract onError(Ljava/lang/Object;JLorg/android/agoo/net/channel/ChannelError;Ljava/util/Map;Ljava/lang/Throwable;Lcom/umeng/message/proguard/aT;)V
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
.end method

.method public abstract onPing(Ljava/lang/Object;J)V
.end method

.method public abstract onReportDNS(Lcom/umeng/message/proguard/aU;)V
.end method
