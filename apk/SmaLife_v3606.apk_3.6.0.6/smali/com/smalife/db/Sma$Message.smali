.class public final Lcom/smalife/db/Sma$Message;
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
    name = "Message"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/message"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/message"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final Content:Ljava/lang/String; = "contentString"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final Isuccess:Ljava/lang/String; = "isuccess"

.field public static final MSG_TABLE_NAME:Ljava/lang/String; = "message"

.field public static final Receiver:Ljava/lang/String; = "receiver"

.field public static final Send_time:Ljava/lang/String; = "send_time"

.field public static final Sender:Ljava/lang/String; = "sender"

.field public static final Type:Ljava/lang/String; = "msgType"

.field public static final createMsgTBSQL:Ljava/lang/String; = "create table message(_id INTEGER primary key autoincrement,contentString text not null,msgType int not null default 0,sender text not null,receiver text not null,send_time text not null,isuccess int not null default 0 )"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    const-string v0, "content://com.sma.app.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 237
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
