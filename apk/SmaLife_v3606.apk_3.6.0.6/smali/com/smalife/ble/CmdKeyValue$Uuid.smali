.class public Lcom/smalife/ble/CmdKeyValue$Uuid;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uuid"
.end annotation


# static fields
.field public static final BATTERY_LEVEL_CHARACTERISTIC:Ljava/util/UUID;

.field public static final BATTERY_SERVICE:Ljava/util/UUID;

.field public static final CCCD:Ljava/util/UUID;

.field public static final DEVICE_SERVICE:Ljava/util/UUID;

.field public static final DEVICE_VERSION:Ljava/util/UUID;

.field public static final HARDWARE_VERSION:Ljava/util/UUID;

.field public static final RX_CHAR_UUID:Ljava/util/UUID;

.field public static final RX_SERVICE_UUID:Ljava/util/UUID;

.field public static final WX_CHAR_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "0000180a-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->DEVICE_SERVICE:Ljava/util/UUID;

    .line 26
    const-string v0, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->DEVICE_VERSION:Ljava/util/UUID;

    .line 31
    const-string v0, "00002a27-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->HARDWARE_VERSION:Ljava/util/UUID;

    .line 36
    const-string v0, "0000180F-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->BATTERY_SERVICE:Ljava/util/UUID;

    .line 41
    const-string v0, "00002A19-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->BATTERY_LEVEL_CHARACTERISTIC:Ljava/util/UUID;

    .line 46
    const-string v0, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_SERVICE_UUID:Ljava/util/UUID;

    .line 51
    const-string v0, "6e400002-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 50
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->WX_CHAR_UUID:Ljava/util/UUID;

    .line 56
    const-string v0, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 55
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->RX_CHAR_UUID:Ljava/util/UUID;

    .line 59
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 58
    sput-object v0, Lcom/smalife/ble/CmdKeyValue$Uuid;->CCCD:Ljava/util/UUID;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
