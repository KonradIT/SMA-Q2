.class public final Lcom/smalife/db/Sma$Aim;
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
    name = "Aim"
.end annotation


# static fields
.field public static final AIM_TABLE_NAME:Ljava/lang/String; = "aim_tb"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/aim_tb"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/aim_tb"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Calories:Ljava/lang/String; = "calories"

.field public static final Distance:Ljava/lang/String; = "distance"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final Sleeplong:Ljava/lang/String; = "sleep_long"

.field public static final Steps:Ljava/lang/String; = "steps"

.field public static final User_Account:Ljava/lang/String; = "userAccount"

.field public static final createAIMTBSQL:Ljava/lang/String; = "create table aim_tb(_id INTEGER PRIMARY KEY ASC AUTOINCREMENT,userAccount TEXT,distance REAL    DEFAULT ( 0 ),calories REAL    DEFAULT ( 0 ),steps INTEGER DEFAULT ( 0 ),sleep_long REAL    DEFAULT ( 0 ))"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    const-string v0, "content://com.sma.app.provider/aim_tb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Aim;->CONTENT_URI:Landroid/net/Uri;

    .line 262
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
