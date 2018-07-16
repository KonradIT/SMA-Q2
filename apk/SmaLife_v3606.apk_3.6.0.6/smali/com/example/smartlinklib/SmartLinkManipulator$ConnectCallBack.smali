.class public interface abstract Lcom/example/smartlinklib/SmartLinkManipulator$ConnectCallBack;
.super Ljava/lang/Object;
.source "SmartLinkManipulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/smartlinklib/SmartLinkManipulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectCallBack"
.end annotation


# virtual methods
.method public abstract onConnect(Lcom/example/smartlinklib/ModuleInfo;)V
.end method

.method public abstract onConnectOk()V
.end method

.method public abstract onConnectTimeOut()V
.end method
