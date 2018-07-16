.class public Lcom/umeng/message/MsgLogStore;
.super Ljava/lang/Object;
.source "MsgLogStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/MsgLogStore$MsgLogIdType;,
        Lcom/umeng/message/MsgLogStore$MsgLog;,
        Lcom/umeng/message/MsgLogStore$a;
    }
.end annotation


# static fields
.field public static final ActionType:Ljava/lang/String; = "ActionType"

.field public static final MsgId:Ljava/lang/String; = "MsgId"

.field public static final MsgType:Ljava/lang/String; = "MsgType"

.field public static final Time:Ljava/lang/String; = "Time"

.field private static a:Lcom/umeng/message/MsgLogStore; = null

.field private static final e:Ljava/lang/String; = " And "

.field private static final f:Ljava/lang/String; = " Asc "

.field private static final g:Ljava/lang/String; = " Desc "

.field private static final h:Ljava/lang/String; = "MsgLogStore.db"

.field private static final i:I = 0x2

.field private static final j:Ljava/lang/String; = "MsgLogStore"

.field private static final k:Ljava/lang/String; = "MsgLogIdTypeStore"


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/umeng/message/MsgLogStore$a;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MsgLogStore;->d:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/umeng/message/MsgLogStore$a;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/MsgLogStore$a;-><init>(Lcom/umeng/message/MsgLogStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/MsgLogStore;->c:Lcom/umeng/message/MsgLogStore$a;

    .line 45
    iget-object v0, p0, Lcom/umeng/message/MsgLogStore;->c:Lcom/umeng/message/MsgLogStore$a;

    invoke-virtual {v0}, Lcom/umeng/message/MsgLogStore$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/message/MsgLogStore;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/MsgLogStore;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/umeng/message/MsgLogStore$1;

    invoke-direct {v1, p0}, Lcom/umeng/message/MsgLogStore$1;-><init>(Lcom/umeng/message/MsgLogStore;)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 67
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 69
    invoke-direct {p0, v3}, Lcom/umeng/message/MsgLogStore;->a(Ljava/io/File;)V

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/MsgLogStore;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->i()Z

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 80
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/message/MsgLogStore;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v0, "msg_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v2, "action_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 85
    const-string v3, "ts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 87
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/umeng/message/MsgLogStore;->addLog(Ljava/lang/String;IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 98
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    const-string v0, ""

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 108
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    :cond_0
    :goto_2
    throw v0

    .line 104
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 106
    if-eqz v1, :cond_2

    .line 108
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    :cond_2
    :goto_3
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 109
    :catch_1
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 106
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/message/MsgLogStore;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/umeng/message/MsgLogStore;->a:Lcom/umeng/message/MsgLogStore;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/umeng/message/MsgLogStore;

    invoke-direct {v0, p0}, Lcom/umeng/message/MsgLogStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/MsgLogStore;->a:Lcom/umeng/message/MsgLogStore;

    .line 31
    sget-object v0, Lcom/umeng/message/MsgLogStore;->a:Lcom/umeng/message/MsgLogStore;

    invoke-direct {v0}, Lcom/umeng/message/MsgLogStore;->a()V

    .line 33
    :cond_0
    sget-object v0, Lcom/umeng/message/MsgLogStore;->a:Lcom/umeng/message/MsgLogStore;

    return-object v0
.end method


# virtual methods
.method public addLog(Ljava/lang/String;IJ)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return v6

    .line 122
    :cond_0
    new-instance v0, Lcom/umeng/message/MsgLogStore$MsgLog;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/MsgLogStore$MsgLog;-><init>(Lcom/umeng/message/MsgLogStore;Ljava/lang/String;IJ)V

    .line 123
    iget-object v1, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogStore"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/umeng/message/MsgLogStore$MsgLog;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 124
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public addLogIdType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    new-instance v1, Lcom/umeng/message/MsgLogStore$MsgLogIdType;

    invoke-direct {v1, p0, p1, p2}, Lcom/umeng/message/MsgLogStore$MsgLogIdType;-><init>(Lcom/umeng/message/MsgLogStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "MsgLogIdTypeStore"

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/umeng/message/MsgLogStore$MsgLogIdType;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 186
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMsgLog(Ljava/lang/String;)Lcom/umeng/message/MsgLogStore$MsgLog;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-object v2

    .line 144
    :cond_0
    const-string v3, "MsgId=?"

    .line 145
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 146
    iget-object v0, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogStore"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 149
    if-eqz v1, :cond_1

    .line 151
    new-instance v2, Lcom/umeng/message/MsgLogStore$MsgLog;

    invoke-direct {v2, p0, v0}, Lcom/umeng/message/MsgLogStore$MsgLog;-><init>(Lcom/umeng/message/MsgLogStore;Landroid/database/Cursor;)V

    .line 153
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getMsgLogIdTypes()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/message/MsgLogStore$MsgLogIdType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 226
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 229
    const-string v7, "MsgId Asc "

    .line 230
    iget-object v0, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogIdTypeStore"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 232
    :goto_0
    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/MsgLogStore$MsgLogIdType;-><init>(Lcom/umeng/message/MsgLogStore;Landroid/database/Cursor;)V

    .line 235
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    return-object v9
.end method

.method public getMsgLogIdTypes(I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/message/MsgLogStore$MsgLogIdType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 220
    :goto_0
    return-object v2

    .line 207
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 210
    const-string v7, "MsgId Asc "

    .line 211
    iget-object v0, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogIdTypeStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 212
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 213
    :goto_1
    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Lcom/umeng/message/MsgLogStore$MsgLogIdType;

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/MsgLogStore$MsgLogIdType;-><init>(Lcom/umeng/message/MsgLogStore;Landroid/database/Cursor;)V

    .line 216
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_1

    .line 219
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    .line 220
    goto :goto_0
.end method

.method public getMsgLogs(I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/message/MsgLogStore$MsgLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 159
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 174
    :goto_0
    return-object v2

    .line 161
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 164
    const-string v7, "Time Asc "

    .line 165
    iget-object v0, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 167
    :goto_1
    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lcom/umeng/message/MsgLogStore$MsgLog;

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/MsgLogStore$MsgLog;-><init>(Lcom/umeng/message/MsgLogStore;Landroid/database/Cursor;)V

    .line 170
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_1

    .line 173
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    .line 174
    goto :goto_0
.end method

.method public removeLog(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    :goto_0
    return v1

    .line 134
    :cond_0
    const-string v2, "MsgId=? And ActionType=?"

    .line 135
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 136
    iget-object v4, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "MsgLogStore"

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 137
    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public removeLogIdType(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    :goto_0
    return v1

    .line 196
    :cond_0
    const-string v2, "MsgId=?"

    .line 197
    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v1

    .line 198
    iget-object v4, p0, Lcom/umeng/message/MsgLogStore;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "MsgLogIdTypeStore"

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 199
    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
