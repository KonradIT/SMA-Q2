.class public Lcom/smalife/ble/CmdKeyValue$ContralCMD;
.super Ljava/lang/Object;
.source "CmdKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/CmdKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContralCMD"
.end annotation


# static fields
.field public static contral_cmd:I

.field public static contral_key:I

.field public static long_press1:I

.field public static long_press2:I

.field public static shor_press2:I

.field public static short_press1:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 423
    const/4 v0, 0x7

    sput v0, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->contral_cmd:I

    .line 427
    sput v1, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->contral_key:I

    .line 428
    const/4 v0, 0x2

    sput v0, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->long_press1:I

    .line 429
    const/16 v0, 0x12

    sput v0, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->long_press2:I

    .line 430
    sput v1, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->short_press1:I

    .line 431
    const/16 v0, 0x11

    sput v0, Lcom/smalife/ble/CmdKeyValue$ContralCMD;->shor_press2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
