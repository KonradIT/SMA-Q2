.class public Lcom/smalife/ble/CmdKeyValue;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/ble/CmdKeyValue$Action;,
        Lcom/smalife/ble/CmdKeyValue$AskAction;,
        Lcom/smalife/ble/CmdKeyValue$BLE;,
        Lcom/smalife/ble/CmdKeyValue$BondLoginCMD;,
        Lcom/smalife/ble/CmdKeyValue$ContralCMD;,
        Lcom/smalife/ble/CmdKeyValue$Extra;,
        Lcom/smalife/ble/CmdKeyValue$FirmType;,
        Lcom/smalife/ble/CmdKeyValue$FirmWare;,
        Lcom/smalife/ble/CmdKeyValue$Message;,
        Lcom/smalife/ble/CmdKeyValue$MessageID;,
        Lcom/smalife/ble/CmdKeyValue$NormalKey;,
        Lcom/smalife/ble/CmdKeyValue$NoticCMD;,
        Lcom/smalife/ble/CmdKeyValue$Rate;,
        Lcom/smalife/ble/CmdKeyValue$SettingCMD;,
        Lcom/smalife/ble/CmdKeyValue$Sleep;,
        Lcom/smalife/ble/CmdKeyValue$SprotCMD;,
        Lcom/smalife/ble/CmdKeyValue$SystemCMD;,
        Lcom/smalife/ble/CmdKeyValue$Uuid;
    }
.end annotation


# static fields
.field public static sport_calories:F

.field public static sport_distance:F

.field public static sport_steps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intToBytes2(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 438
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 439
    .local v0, "src":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 440
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 441
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 442
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 443
    return-object v0
.end method
