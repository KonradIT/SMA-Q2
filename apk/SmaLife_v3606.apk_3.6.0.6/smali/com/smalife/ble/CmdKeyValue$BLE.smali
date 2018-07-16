.class public Lcom/smalife/ble/CmdKeyValue$BLE;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BLE"
.end annotation


# static fields
.field public static BONDDevice:Landroid/bluetooth/BluetoothDevice;

.field public static MacAddress:Ljava/lang/String;

.field public static battery_level:I

.field public static ble_hasOpen:Z

.field public static bondNoResult:Z

.field public static firstBonded:Z

.field public static isRun:Z

.field public static user_id:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->ble_hasOpen:Z

    .line 536
    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->isRun:Z

    .line 537
    const/16 v0, 0x64

    sput v0, Lcom/smalife/ble/CmdKeyValue$BLE;->battery_level:I

    .line 538
    const/4 v0, -0x1

    sput-byte v0, Lcom/smalife/ble/CmdKeyValue$BLE;->user_id:B

    .line 539
    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->firstBonded:Z

    .line 541
    const-string v0, ""

    sput-object v0, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    sput-object v0, Lcom/smalife/ble/CmdKeyValue$BLE;->BONDDevice:Landroid/bluetooth/BluetoothDevice;

    .line 543
    sput-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->bondNoResult:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
