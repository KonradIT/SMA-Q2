.class public final Lcom/smalife/db/Sma$Sleep;
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
    name = "Sleep"
.end annotation


# static fields
.field public static final Action_time:Ljava/lang/String; = "action_time"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sleep"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/sleep"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Insert_time:Ljava/lang/String; = "insert_time"

.field public static final MacAddress:Ljava/lang/String; = "mac_Address"

.field public static final SLEEP_TABLE_NAME:Ljava/lang/String; = "sleep"

.field public static final Sleep_date:Ljava/lang/String; = "sleep_date"

.field public static final Sleep_id:Ljava/lang/String; = "sleep_id"

.field public static final Sleep_model:Ljava/lang/String; = "time_type"

.field public static final Sync:Ljava/lang/String; = "sync_status"

.field public static final User_account:Ljava/lang/String; = "user_account"

.field public static final createSleepTBSQL:Ljava/lang/String; = "create table sleep(sleep_id long  primary key,sleep_date text not null,sync_status int default 0,action_time int not null,sleep_type int not null,time_type int not null,insert_time DATETIME not null  DEFAULT (datetime(\'now\',\'localtime\')),mac_Address text not null,user_account text not null )"

.field public static final sleep_type:Ljava/lang/String; = "sleep_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "content://com.sma.app.provider/sleep"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Sleep;->CONTENT_URI:Landroid/net/Uri;

    .line 208
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
