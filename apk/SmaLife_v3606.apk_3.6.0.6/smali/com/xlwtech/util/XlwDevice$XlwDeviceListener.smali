.class public interface abstract Lcom/xlwtech/util/XlwDevice$XlwDeviceListener;
.super Ljava/lang/Object;
.source "XlwDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xlwtech/util/XlwDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "XlwDeviceListener"
.end annotation


# virtual methods
.method public abstract onReceive(Ljava/lang/String;[BI)V
.end method

.method public abstract onSearchFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onSendError(Ljava/lang/String;II)V
.end method

.method public abstract onSmartFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onStatusChange(Ljava/lang/String;I)V
.end method
