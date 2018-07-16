.class public final Lcom/smalife/db/Sma$Swatch;
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
    name = "Swatch"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/swatch"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/swatch"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_ORDER:Ljava/lang/String; = "update_time desc"

.field public static final DeviceMac:Ljava/lang/String; = "device_mac"

.field public static final DeviceName:Ljava/lang/String; = "deviceName"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final SWATCH_TABLE_NAME:Ljava/lang/String; = "swatch"

.field public static final UpdateTime:Ljava/lang/String; = "update_time"

.field public static final Verison:Ljava/lang/String; = "verison"

.field public static final createSWatchTBSQL:Ljava/lang/String; = "create table swatch(_id INTEGER primary key autoincrement,device_mac text not null,deviceName text,verison text,update_time text)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "content://com.sma.app.provider/swatch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Swatch;->CONTENT_URI:Landroid/net/Uri;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
