.class public final Lcom/smalife/db/Sma$Rate;
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
    name = "Rate"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/rate"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/rate"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final RATE_TABLE_NAME:Ljava/lang/String; = "rate"

.field public static final Rate_Date:Ljava/lang/String; = "rate_date"

.field public static final Rate_ID:Ljava/lang/String; = "rate_id"

.field public static final Rate_Time:Ljava/lang/String; = "rate_time"

.field public static final Rate_status:Ljava/lang/String; = "rate_status"

.field public static final Rate_value:Ljava/lang/String; = "rate_value"

.field public static final Sync:Ljava/lang/String; = "sync_status"

.field public static final UserAccount:Ljava/lang/String; = "user_account"

.field public static final createRateTBSQL:Ljava/lang/String; = "create table rate(rate_id long primary key ,user_account text not null,rate_date text not null,rate_time long,rate_status int default 0,sync_status int default 0,rate_value int default 0)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    const-string v0, "content://com.sma.app.provider/rate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 371
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
