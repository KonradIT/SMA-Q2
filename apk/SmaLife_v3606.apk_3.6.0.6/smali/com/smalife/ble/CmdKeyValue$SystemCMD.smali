.class public Lcom/smalife/ble/CmdKeyValue$SystemCMD;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemCMD"
.end annotation


# static fields
.field public static final OTA05_erase:B = 0x45t

.field public static final OTA05_eraseback:B = 0x4ft

.field public static final OTA05_write:B = 0x55t

.field public static final OTA05_writeback:B = 0x4ft

.field public static final OTA_back:B = 0x2t

.field public static final OTA_cmd:B = 0x1t

.field public static final OTA_key:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
