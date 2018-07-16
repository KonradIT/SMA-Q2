.class public Lcom/smalife/upgrade/ble/utils/BootloaderScannerFactory;
.super Ljava/lang/Object;
.source "BootloaderScannerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScanner()Lcom/smalife/upgrade/ble/utils/BootloaderScanner;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;

    invoke-direct {v0}, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;-><init>()V

    return-object v0
.end method
