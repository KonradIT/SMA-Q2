.class public Lcom/smalife/upgrade/ble/utils/BootloaderScannerLollipop;
.super Ljava/lang/Object;
.source "BootloaderScannerLollipop.java"


# instance fields
.field private mBootloaderAddress:Ljava/lang/String;

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceAddressIncremented:Ljava/lang/String;

.field private mFound:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerLollipop;->mLock:Ljava/lang/Object;

    .line 10
    return-void
.end method
