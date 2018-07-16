.class public interface abstract Lcom/smalife/upgrade/ble/utils/DfuProgressListener;
.super Ljava/lang/Object;
.source "DfuProgressListener.java"


# virtual methods
.method public abstract onDeviceConnected(Ljava/lang/String;)V
.end method

.method public abstract onDeviceConnecting(Ljava/lang/String;)V
.end method

.method public abstract onDeviceDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onDeviceDisconnecting(Ljava/lang/String;)V
.end method

.method public abstract onDfuAborted(Ljava/lang/String;)V
.end method

.method public abstract onDfuCompleted(Ljava/lang/String;)V
.end method

.method public abstract onDfuProcessStarted(Ljava/lang/String;)V
.end method

.method public abstract onDfuProcessStarting(Ljava/lang/String;)V
.end method

.method public abstract onEnablingDfuMode(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract onFirmwareValidating(Ljava/lang/String;)V
.end method

.method public abstract onProgressChanged(Ljava/lang/String;IFFII)V
.end method
