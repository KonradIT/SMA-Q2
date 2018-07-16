.class Lcom/umeng/message/MsgLogStore$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MsgLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/MsgLogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/MsgLogStore;


# direct methods
.method public constructor <init>(Lcom/umeng/message/MsgLogStore;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 260
    iput-object p1, p0, Lcom/umeng/message/MsgLogStore$a;->a:Lcom/umeng/message/MsgLogStore;

    .line 261
    const-string v0, "MsgLogStore.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 263
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 268
    const-string v0, "create table if not exists MsgLogStore ( MsgId varchar, ActionType Integer, Time long, PRIMARY KEY(MsgId, ActionType))"

    .line 270
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const-string v0, "create table if not exists MsgLogIdTypeStore (MsgId varchar, MsgType varchar, PRIMARY KEY(MsgId))"

    .line 274
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/umeng/message/MsgLogStore$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 281
    return-void
.end method
