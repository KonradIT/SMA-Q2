.class public Lcom/umeng/message/MessageStore;
.super Ljava/lang/Object;
.source "MessageStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/MessageStore$a;
    }
.end annotation


# static fields
.field public static final ActionType:Ljava/lang/String; = "ActionType"

.field public static final ArrivalTime:Ljava/lang/String; = "ArrivalTime"

.field public static final Id:Ljava/lang/String; = "_id"

.field public static final Json:Ljava/lang/String; = "Json"

.field public static final MsgId:Ljava/lang/String; = "MsdId"

.field public static final SdkVersion:Ljava/lang/String; = "SdkVersion"

.field private static final d:Ljava/lang/String; = "MessageStore.db"

.field private static final e:Ljava/lang/String; = "MessageStore"

.field private static final f:I = 0x1

.field private static final g:Ljava/lang/String; = " PRIMARY KEY "

.field private static final h:Ljava/lang/String; = " AUTOINCREMENT "

.field private static final i:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS "

.field public static instance:Lcom/umeng/message/MessageStore; = null

.field private static final j:Ljava/lang/String; = " Integer "

.field private static final k:Ljava/lang/String; = " Long "

.field private static final l:Ljava/lang/String; = " Varchar "

.field private static final m:Ljava/lang/String; = "("

.field private static final n:Ljava/lang/String; = ")"

.field private static final o:Ljava/lang/String; = " , "

.field private static final p:Ljava/lang/String; = " And "

.field private static final q:Ljava/lang/String; = " desc "

.field private static final r:Ljava/lang/String; = " asc "


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/umeng/message/MessageStore$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MessageStore;->a:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/umeng/message/MessageStore$a;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/MessageStore$a;-><init>(Lcom/umeng/message/MessageStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/MessageStore;->c:Lcom/umeng/message/MessageStore$a;

    .line 29
    iget-object v0, p0, Lcom/umeng/message/MessageStore;->c:Lcom/umeng/message/MessageStore$a;

    invoke-virtual {v0}, Lcom/umeng/message/MessageStore$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MessageStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageStore;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/umeng/message/MessageStore;->instance:Lcom/umeng/message/MessageStore;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/umeng/message/MessageStore;

    invoke-direct {v0, p0}, Lcom/umeng/message/MessageStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/MessageStore;->instance:Lcom/umeng/message/MessageStore;

    .line 22
    :cond_0
    sget-object v0, Lcom/umeng/message/MessageStore;->instance:Lcom/umeng/message/MessageStore;

    return-object v0
.end method


# virtual methods
.method a(Lcom/umeng/message/entity/UMessage;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return v0

    .line 38
    :cond_0
    sget-object v1, Lcom/umeng/message/MessageStore;->instance:Lcom/umeng/message/MessageStore;

    monitor-enter v1

    .line 39
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 40
    const-string v3, "MsdId"

    iget-object v4, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "Json"

    invoke-virtual {p1}, Lcom/umeng/message/entity/UMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "SdkVersion"

    const-string v4, "2.2.0"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "ArrivalTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    const-string v3, "ActionType"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    iget-object v3, p0, Lcom/umeng/message/MessageStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MessageStore"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 46
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/MessageStore;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;I)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 60
    sget-object v2, Lcom/umeng/message/MessageStore;->instance:Lcom/umeng/message/MessageStore;

    monitor-enter v2

    .line 61
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 62
    const-string v4, "ActionType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v4, "MsdId=?"

    .line 65
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 66
    iget-object v6, p0, Lcom/umeng/message/MessageStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "MessageStore"

    invoke-virtual {v6, v7, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 67
    if-ne v3, v0, :cond_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/MessageStore;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
