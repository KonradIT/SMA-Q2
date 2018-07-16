.class public interface abstract Lorg/android/agoo/net/channel/IDataChannel;
.super Ljava/lang/Object;
.source "IDataChannel.java"


# virtual methods
.method public abstract asyncDisconnect()V
.end method

.method public abstract close()V
.end method

.method public abstract connect(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JLorg/android/agoo/net/channel/IPushHandler;Lcom/umeng/message/proguard/aT;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lorg/android/agoo/net/channel/IPushHandler;",
            "Lcom/umeng/message/proguard/aT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract ping()J
.end method

.method public abstract readyChannelState()Lorg/android/agoo/net/channel/ChannelState;
.end method

.method public abstract send(Ljava/lang/String;[BLorg/android/agoo/net/channel/IPullHandler;Lcom/umeng/message/proguard/aV;)I
.end method

.method public abstract shutdown()V
.end method

.method public abstract syncDisconnect()V
.end method
