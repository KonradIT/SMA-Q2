.class public interface abstract Lcom/accloud/service/ACDeviceMgr;
.super Ljava/lang/Object;
.source "ACDeviceMgr.java"


# virtual methods
.method public abstract activateDevice(Ljava/lang/String;Lcom/accloud/service/ACDeviceActive;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract getDeviceInfo(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACDevice;",
            ">;)V"
        }
    .end annotation
.end method
