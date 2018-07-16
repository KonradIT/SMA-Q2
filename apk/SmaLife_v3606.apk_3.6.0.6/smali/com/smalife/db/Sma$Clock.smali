.class public final Lcom/smalife/db/Sma$Clock;
.super Ljava/lang/Object;
.source "Sma.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/db/Sma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clock"
.end annotation


# static fields
.field public static final CLOCK_ID:Ljava/lang/String; = "clock_id"

.field public static final CLOCK_TABLE_NAME:Ljava/lang/String; = "clock_tb"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/clock_tb"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/clock_tb"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CTime:Ljava/lang/String; = "clock_time"

.field public static final ClockName:Ljava/lang/String; = "name"

.field public static final ClockOpen:Ljava/lang/String; = "clockOpen"

.field public static final DAY:Ljava/lang/String; = "day"

.field public static final FRIDDAY:Ljava/lang/String; = "frid_day"

.field public static final MONDAY:Ljava/lang/String; = "mon_day"

.field public static final MONTH:Ljava/lang/String; = "month"

.field public static final MacAddress:Ljava/lang/String; = "mac_Address"

.field public static final REPEAT:Ljava/lang/String; = "repeat"

.field public static final STADAY:Ljava/lang/String; = "sta_day"

.field public static final SUNDAY:Ljava/lang/String; = "sun_day"

.field public static final Sync:Ljava/lang/String; = "sync"

.field public static final THURDAY:Ljava/lang/String; = "thur_day"

.field public static final TUESDAY:Ljava/lang/String; = "tues_day"

.field public static final User_Account:Ljava/lang/String; = "user_account"

.field public static final WESDAY:Ljava/lang/String; = "wes_day"

.field public static final YEAR:Ljava/lang/String; = "year"

.field public static final createCLOCKTBSQL:Ljava/lang/String; = "create table clock_tb(clock_id INTEGER PRIMARY KEY ASC AUTOINCREMENT,user_account TEXT,clock_time REAL,name REAL ,year REAL,month REAL,day REAL,mac_Address REAL,sync INTEGER DEFAULT(0),repeat INTEGER DEFAULT ( 0 ),clockOpen INTEGER DEFAULT ( 0 ),mon_day INTEGER DEFAULT ( 0 ),tues_day INTEGER DEFAULT ( 0 ),wes_day INTEGER DEFAULT ( 0 ),thur_day INTEGER DEFAULT ( 0 ),frid_day INTEGER DEFAULT ( 0 ),sta_day INTEGER DEFAULT ( 0 ),sun_day INTEGER DEFAULT ( 0 ))"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    const-string v0, "content://com.sma.app.provider/clock_tb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Clock;->CONTENT_URI:Landroid/net/Uri;

    .line 311
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
