.class public Lcom/smalife/upgrade/ble/utils/DfuProgressListenerAdapter;
.super Ljava/lang/Object;
.source "DfuProgressListenerAdapter.java"

# interfaces
.implements Lcom/smalife/upgrade/ble/utils/DfuProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 12
    return-void
.end method

.method public onDeviceConnecting(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 7
    return-void
.end method

.method public onDeviceDisconnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 47
    return-void
.end method

.method public onDeviceDisconnecting(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public onDfuAborted(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public onDfuCompleted(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public onDfuProcessStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 22
    return-void
.end method

.method public onDfuProcessStarting(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public onEnablingDfuMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public onError(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "errorType"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public onFirmwareValidating(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method public onProgressChanged(Ljava/lang/String;IFFII)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "percent"    # I
    .param p3, "speed"    # F
    .param p4, "avgSpeed"    # F
    .param p5, "currentPart"    # I
    .param p6, "partsTotal"    # I

    .prologue
    .line 32
    return-void
.end method
