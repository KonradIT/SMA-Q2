.class public final Lcom/smalife/db/Sma$Friend;
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
    name = "Friend"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/friends"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/friends"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FRIEND_TABLE_NAME:Ljava/lang/String; = "friends"

.field public static final FriendName:Ljava/lang/String; = "friendName"

.field public static final Friend_Account:Ljava/lang/String; = "friend_account"

.field public static final Friend_Id:Ljava/lang/String; = "friend_Id"

.field public static final User_Account:Ljava/lang/String; = "user_account"

.field public static final createFriendTBSQL:Ljava/lang/String; = "create table friends(friend_Id INTEGER primary key autoincrement,user_account text not null,friend_account text not null,friendName text not null,isFriend text)"

.field public static final isFriend:Ljava/lang/String; = "isFriend"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "content://com.sma.app.provider/friends"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Friend;->CONTENT_URI:Landroid/net/Uri;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
