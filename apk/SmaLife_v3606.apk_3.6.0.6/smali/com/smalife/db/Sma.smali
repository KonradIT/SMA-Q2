.class public Lcom/smalife/db/Sma;
.super Ljava/lang/Object;
.source "Sma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/db/Sma$Aim;,
        Lcom/smalife/db/Sma$Clock;,
        Lcom/smalife/db/Sma$Exercise;,
        Lcom/smalife/db/Sma$Friend;,
        Lcom/smalife/db/Sma$Message;,
        Lcom/smalife/db/Sma$Rate;,
        Lcom/smalife/db/Sma$Sleep;,
        Lcom/smalife/db/Sma$Sport;,
        Lcom/smalife/db/Sma$Swatch;,
        Lcom/smalife/db/Sma$Track;,
        Lcom/smalife/db/Sma$Users;
    }
.end annotation


# static fields
.field public static final AIM_ITEM:I = 0x70

.field public static final AIM_ITEM_ID:I = 0x71

.field public static final AUTHORITY:Ljava/lang/String; = "com.sma.app.provider"

.field public static final CLOCK_ITEM:I = 0x80

.field public static final CLOCK_ITEM_ID:I = 0x81

.field public static final DATABASE_NAME:Ljava/lang/String; = "sma.db"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final EXERCISE_ITEM:I = 0xb0

.field public static final EXERCISE_ITEM_ID:I = 0xb1

.field public static final FRIEND_ITEM:I = 0x60

.field public static final FRIEND_ITEM_ID:I = 0x61

.field public static final MESSAGE_ITEM:I = 0x50

.field public static final MESSAGE_ITEM_ID:I = 0x51

.field public static final RATE_ITEM:I = 0xa0

.field public static final RATE_ITEM_ID:I = 0xa1

.field public static final SLEEP_ITEM:I = 0x40

.field public static final SLEEP_ITEM_ID:I = 0x41

.field public static final SPORT_ITEM:I = 0x30

.field public static final SPORT_ITEM_ID:I = 0x31

.field public static final SWATCH_ITEM:I = 0x20

.field public static final SWATCH_ITEM_ID:I = 0x21

.field public static final TRACK_ITEM:I = 0x90

.field public static final TRACK_ITEM_ID:I = 0x91

.field public static final USER_ITEM:I = 0x10

.field public static final USER_ITEM_ID:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
