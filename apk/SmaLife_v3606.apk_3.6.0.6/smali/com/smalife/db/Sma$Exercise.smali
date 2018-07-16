.class public final Lcom/smalife/db/Sma$Exercise;
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
    name = "Exercise"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/exercise"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/exercise"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Calorie:Ljava/lang/String; = "calorie"

.field public static final Distance:Ljava/lang/String; = "distance"

.field public static final EXERCIXE_TABLE_NAME:Ljava/lang/String; = "exercise"

.field public static final End_Time:Ljava/lang/String; = "end_time"

.field public static final Exercise_Date:Ljava/lang/String; = "exercise_date"

.field public static final Exercise_ID:Ljava/lang/String; = "exercise_ID"

.field public static final Pacer:Ljava/lang/String; = "pacer"

.field public static final Speed:Ljava/lang/String; = "speed"

.field public static final Start_Time:Ljava/lang/String; = "start_time"

.field public static final Sync:Ljava/lang/String; = "sync_status"

.field public static final UserAccount:Ljava/lang/String; = "user_account"

.field public static final createExerciseTBSQL:Ljava/lang/String; = "create table exercise(exercise_ID long primary key ,user_account text not null,exercise_date text not null,start_time long,end_time long,distance REAL,speed REAL,pacer REAL,calorie REAL,sync_status int default 0)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 381
    const-string v0, "content://com.sma.app.provider/exercise"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Exercise;->CONTENT_URI:Landroid/net/Uri;

    .line 417
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
