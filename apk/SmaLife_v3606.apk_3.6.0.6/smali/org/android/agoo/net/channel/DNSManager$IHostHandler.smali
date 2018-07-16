.class public interface abstract Lorg/android/agoo/net/channel/DNSManager$IHostHandler;
.super Ljava/lang/Object;
.source "DNSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/channel/DNSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHostHandler"
.end annotation


# virtual methods
.method public abstract onFailure(Lorg/android/agoo/net/channel/ChannelError;Ljava/lang/String;)V
.end method

.method public abstract onHost(Lorg/android/agoo/net/channel/ChannelType;Ljava/lang/String;ILcom/umeng/message/proguard/aT;Ljava/lang/String;)V
.end method

.method public abstract onReportDNS(Lcom/umeng/message/proguard/aU;)V
.end method
