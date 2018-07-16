.class public final Lcom/smalife/db/Sma$Track;
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
    name = "Track"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/track"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/track"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Latitude:Ljava/lang/String; = "track_lat"

.field public static final LocationModel:Ljava/lang/String; = "location_model"

.field public static final Longitude:Ljava/lang/String; = "track_long"

.field public static final Sync:Ljava/lang/String; = "sync_status"

.field public static final TRACK_TABLE_NAME:Ljava/lang/String; = "track"

.field public static final Track_Date:Ljava/lang/String; = "track_date"

.field public static final Track_ID:Ljava/lang/String; = "track_id"

.field public static final Track_Time:Ljava/lang/String; = "track_time"

.field public static final UserAccount:Ljava/lang/String; = "user_account"

.field public static final createTrackTBSQL:Ljava/lang/String; = "create table track(track_id long primary key ,user_account text not null,track_date text not null,track_time long,track_lat double,track_long double,sync_status int default 0,location_model int)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 321
    const-string v0, "content://com.sma.app.provider/track"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    .line 343
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
