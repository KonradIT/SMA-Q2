.class public final Lcom/smalife/db/Sma$Sport;
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
    name = "Sport"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sport"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/sport"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Calorie:Ljava/lang/String; = "calorie"

.field public static final CountDate:Ljava/lang/String; = "count_date"

.field public static final Distance:Ljava/lang/String; = "distance"

.field public static final MacAddress:Ljava/lang/String; = "mac_Address"

.field public static final OffSet:Ljava/lang/String; = "offset"

.field public static final SPORT_TABLE_NAME:Ljava/lang/String; = "sport"

.field public static final Sport_ID:Ljava/lang/String; = "sport_id"

.field public static final Steps:Ljava/lang/String; = "steps"

.field public static final Sync:Ljava/lang/String; = "sync_status"

.field public static final UserAccount:Ljava/lang/String; = "user_account"

.field public static final createSportTBSQL:Ljava/lang/String; = "create table sport(sport_id long primary key,user_account text not null,mac_Address text not null,count_date text not null,distance float,offset int not null,calorie float,steps int,sync_status int default 0)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const-string v0, "content://com.sma.app.provider/sport"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    .line 171
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
