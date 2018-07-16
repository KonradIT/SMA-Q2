.class public Lcom/smalife/db/SmaContentProvider;
.super Landroid/content/ContentProvider;
.source "SmaContentProvider.java"


# static fields
.field public static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/smalife/db/DataBaseHelper;

.field private orderBy:Ljava/lang/String;

.field tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 29
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "users"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "users/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "swatch"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "swatch/#"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "sport"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "sport/#"

    const/16 v3, 0x31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "sleep"

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "sleep/#"

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "friends"

    const/16 v3, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "friends/#"

    const/16 v3, 0x61

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "message"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "message/#"

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "aim_tb"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "aim_tb/#"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "clock_tb"

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "clock_tb/#"

    const/16 v3, 0x81

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "track"

    const/16 v3, 0x90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "track/#"

    const/16 v3, 0x91

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "rate"

    const/16 v3, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sma.app.provider"

    const-string v2, "rate/#"

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 150
    sget-object v5, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 151
    .local v2, "type":I
    const/16 v5, 0x10

    if-ne v2, v5, :cond_2

    move v6, v3

    :goto_0
    const/16 v5, 0x11

    if-ne v2, v5, :cond_3

    move v5, v3

    :goto_1
    or-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 152
    const-string v3, "users"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    .line 170
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/smalife/db/SmaContentProvider;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    invoke-virtual {v3}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 171
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "rt":I
    iget-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    const-string v4, "sport"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/smalife/db/SmaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 175
    :cond_1
    return v1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "rt":I
    :cond_2
    move v6, v4

    .line 151
    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    .line 153
    :cond_4
    const/16 v5, 0x20

    if-ne v2, v5, :cond_5

    move v6, v3

    :goto_3
    const/16 v5, 0x21

    if-ne v2, v5, :cond_6

    move v5, v3

    :goto_4
    or-int/2addr v5, v6

    if-eqz v5, :cond_7

    .line 154
    const-string v3, "swatch"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v6, v4

    .line 153
    goto :goto_3

    :cond_6
    move v5, v4

    goto :goto_4

    .line 155
    :cond_7
    const/16 v5, 0x30

    if-ne v2, v5, :cond_8

    move v6, v3

    :goto_5
    const/16 v5, 0x31

    if-ne v2, v5, :cond_9

    move v5, v3

    :goto_6
    or-int/2addr v5, v6

    if-eqz v5, :cond_a

    .line 156
    const-string v3, "sport"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move v6, v4

    .line 155
    goto :goto_5

    :cond_9
    move v5, v4

    goto :goto_6

    .line 157
    :cond_a
    const/16 v5, 0x70

    if-ne v2, v5, :cond_b

    move v6, v3

    :goto_7
    const/16 v5, 0x71

    if-ne v2, v5, :cond_c

    move v5, v3

    :goto_8
    or-int/2addr v5, v6

    if-eqz v5, :cond_d

    .line 158
    const-string v3, "aim_tb"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_b
    move v6, v4

    .line 157
    goto :goto_7

    :cond_c
    move v5, v4

    goto :goto_8

    .line 159
    :cond_d
    const/16 v5, 0x40

    if-ne v2, v5, :cond_e

    move v6, v3

    :goto_9
    const/16 v5, 0x41

    if-ne v2, v5, :cond_f

    move v5, v3

    :goto_a
    or-int/2addr v5, v6

    if-eqz v5, :cond_10

    .line 160
    const-string v3, "sleep"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_e
    move v6, v4

    .line 159
    goto :goto_9

    :cond_f
    move v5, v4

    goto :goto_a

    .line 161
    :cond_10
    const/16 v5, 0x80

    if-ne v2, v5, :cond_11

    move v6, v3

    :goto_b
    const/16 v5, 0x81

    if-ne v2, v5, :cond_12

    move v5, v3

    :goto_c
    or-int/2addr v5, v6

    if-eqz v5, :cond_13

    .line 162
    const-string v3, "clock_tb"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    move v6, v4

    .line 161
    goto :goto_b

    :cond_12
    move v5, v4

    goto :goto_c

    .line 163
    :cond_13
    const/16 v5, 0x90

    if-ne v2, v5, :cond_14

    move v6, v3

    :goto_d
    const/16 v5, 0x91

    if-ne v2, v5, :cond_15

    move v5, v3

    :goto_e
    or-int/2addr v5, v6

    if-eqz v5, :cond_16

    .line 164
    const-string v3, "track"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_14
    move v6, v4

    .line 163
    goto :goto_d

    :cond_15
    move v5, v4

    goto :goto_e

    .line 165
    :cond_16
    const/16 v5, 0xa0

    if-ne v2, v5, :cond_17

    move v6, v3

    :goto_f
    const/16 v5, 0xa1

    if-ne v2, v5, :cond_18

    move v5, v3

    :goto_10
    or-int/2addr v5, v6

    if-eqz v5, :cond_19

    .line 166
    const-string v3, "rate"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_17
    move v6, v4

    .line 165
    goto :goto_f

    :cond_18
    move v5, v4

    goto :goto_10

    .line 167
    :cond_19
    const/16 v5, 0xb0

    if-ne v2, v5, :cond_1a

    move v5, v3

    :goto_11
    const/16 v6, 0xb1

    if-ne v2, v6, :cond_1b

    :goto_12
    or-int/2addr v3, v5

    if-eqz v3, :cond_0

    .line 168
    const-string v3, "exercise"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1a
    move v5, v4

    .line 167
    goto :goto_11

    :cond_1b
    move v3, v4

    goto :goto_12
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    sget-object v0, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/users"

    .line 99
    :goto_0
    return-object v0

    .line 59
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/users"

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v0, "vnd.android.cursor.dir/swatch"

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v0, "vnd.android.cursor.item/swatch"

    goto :goto_0

    .line 65
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/sport"

    goto :goto_0

    .line 67
    :sswitch_5
    const-string v0, "vnd.android.cursor.item/sport"

    goto :goto_0

    .line 69
    :sswitch_6
    const-string v0, "vnd.android.cursor.dir/sleep"

    goto :goto_0

    .line 71
    :sswitch_7
    const-string v0, "vnd.android.cursor.item/sleep"

    goto :goto_0

    .line 73
    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/friends"

    goto :goto_0

    .line 75
    :sswitch_9
    const-string v0, "vnd.android.cursor.item/friends"

    goto :goto_0

    .line 77
    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/message"

    goto :goto_0

    .line 79
    :sswitch_b
    const-string v0, "vnd.android.cursor.item/message"

    goto :goto_0

    .line 81
    :sswitch_c
    const-string v0, "vnd.android.cursor.dir/aim_tb"

    goto :goto_0

    .line 83
    :sswitch_d
    const-string v0, "vnd.android.cursor.item/aim_tb"

    goto :goto_0

    .line 85
    :sswitch_e
    const-string v0, "vnd.android.cursor.dir/clock_tb"

    goto :goto_0

    .line 87
    :sswitch_f
    const-string v0, "vnd.android.cursor.item/clock_tb"

    goto :goto_0

    .line 89
    :sswitch_10
    const-string v0, "vnd.android.cursor.dir/track"

    goto :goto_0

    .line 91
    :sswitch_11
    const-string v0, "vnd.android.cursor.item/track"

    goto :goto_0

    .line 93
    :sswitch_12
    const-string v0, "vnd.android.cursor.dir/rate"

    goto :goto_0

    .line 95
    :sswitch_13
    const-string v0, "vnd.android.cursor.item/rate"

    goto :goto_0

    .line 97
    :sswitch_14
    const-string v0, "vnd.android.cursor.dir/exercise"

    goto :goto_0

    .line 99
    :sswitch_15
    const-string v0, "vnd.android.cursor.item/exercise"

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
        0x30 -> :sswitch_4
        0x31 -> :sswitch_5
        0x40 -> :sswitch_6
        0x41 -> :sswitch_7
        0x50 -> :sswitch_a
        0x51 -> :sswitch_b
        0x60 -> :sswitch_8
        0x61 -> :sswitch_9
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x80 -> :sswitch_e
        0x81 -> :sswitch_f
        0x90 -> :sswitch_10
        0x91 -> :sswitch_11
        0xa0 -> :sswitch_12
        0xa1 -> :sswitch_13
        0xb0 -> :sswitch_14
        0xb1 -> :sswitch_15
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 109
    sget-object v7, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 110
    .local v4, "url_v":I
    const/16 v7, 0x10

    if-ne v4, v7, :cond_1

    move v8, v5

    :goto_0
    const/16 v7, 0x11

    if-ne v4, v7, :cond_2

    move v7, v5

    :goto_1
    or-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 111
    const-string v5, "users"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    .line 129
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/smalife/db/SmaContentProvider;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    invoke-virtual {v5}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v5, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 131
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1b

    .line 133
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, "insertedUserUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/smalife/db/SmaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 136
    return-object v1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "insertedUserUri":Landroid/net/Uri;
    .end local v2    # "rowId":J
    :cond_1
    move v8, v6

    .line 110
    goto :goto_0

    :cond_2
    move v7, v6

    goto :goto_1

    .line 112
    :cond_3
    const/16 v7, 0x20

    if-ne v4, v7, :cond_4

    move v8, v5

    :goto_3
    const/16 v7, 0x21

    if-ne v4, v7, :cond_5

    move v7, v5

    :goto_4
    or-int/2addr v7, v8

    if-eqz v7, :cond_6

    .line 113
    const-string v5, "swatch"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v8, v6

    .line 112
    goto :goto_3

    :cond_5
    move v7, v6

    goto :goto_4

    .line 114
    :cond_6
    const/16 v7, 0x30

    if-ne v4, v7, :cond_7

    move v8, v5

    :goto_5
    const/16 v7, 0x31

    if-ne v4, v7, :cond_8

    move v7, v5

    :goto_6
    or-int/2addr v7, v8

    if-eqz v7, :cond_9

    .line 115
    const-string v5, "sport"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move v8, v6

    .line 114
    goto :goto_5

    :cond_8
    move v7, v6

    goto :goto_6

    .line 116
    :cond_9
    const/16 v7, 0x70

    if-ne v4, v7, :cond_a

    move v8, v5

    :goto_7
    const/16 v7, 0x71

    if-ne v4, v7, :cond_b

    move v7, v5

    :goto_8
    or-int/2addr v7, v8

    if-eqz v7, :cond_c

    .line 117
    const-string v5, "aim_tb"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_a
    move v8, v6

    .line 116
    goto :goto_7

    :cond_b
    move v7, v6

    goto :goto_8

    .line 118
    :cond_c
    const/16 v7, 0x40

    if-ne v4, v7, :cond_d

    move v8, v5

    :goto_9
    const/16 v7, 0x41

    if-ne v4, v7, :cond_e

    move v7, v5

    :goto_a
    or-int/2addr v7, v8

    if-eqz v7, :cond_f

    .line 119
    const-string v5, "sleep"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_d
    move v8, v6

    .line 118
    goto :goto_9

    :cond_e
    move v7, v6

    goto :goto_a

    .line 120
    :cond_f
    const/16 v7, 0x80

    if-ne v4, v7, :cond_10

    move v8, v5

    :goto_b
    const/16 v7, 0x81

    if-ne v4, v7, :cond_11

    move v7, v5

    :goto_c
    or-int/2addr v7, v8

    if-eqz v7, :cond_12

    .line 121
    const-string v5, "clock_tb"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    move v8, v6

    .line 120
    goto :goto_b

    :cond_11
    move v7, v6

    goto :goto_c

    .line 122
    :cond_12
    const/16 v7, 0x90

    if-ne v4, v7, :cond_13

    move v8, v5

    :goto_d
    const/16 v7, 0x91

    if-ne v4, v7, :cond_14

    move v7, v5

    :goto_e
    or-int/2addr v7, v8

    if-eqz v7, :cond_15

    .line 123
    const-string v5, "track"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    move v8, v6

    .line 122
    goto :goto_d

    :cond_14
    move v7, v6

    goto :goto_e

    .line 124
    :cond_15
    const/16 v7, 0xa0

    if-ne v4, v7, :cond_16

    move v8, v5

    :goto_f
    const/16 v7, 0xa1

    if-ne v4, v7, :cond_17

    move v7, v5

    :goto_10
    or-int/2addr v7, v8

    if-eqz v7, :cond_18

    .line 125
    const-string v5, "rate"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_16
    move v8, v6

    .line 124
    goto :goto_f

    :cond_17
    move v7, v6

    goto :goto_10

    .line 126
    :cond_18
    const/16 v7, 0xb0

    if-ne v4, v7, :cond_19

    move v7, v5

    :goto_11
    const/16 v8, 0xb1

    if-ne v4, v8, :cond_1a

    :goto_12
    or-int/2addr v5, v7

    if-eqz v5, :cond_0

    .line 127
    const-string v5, "exercise"

    iput-object v5, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_19
    move v7, v6

    .line 126
    goto :goto_11

    :cond_1a
    move v5, v6

    goto :goto_12

    .line 138
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "rowId":J
    :cond_1b
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to insert row into"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/smalife/db/SmaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/db/SmaContentProvider;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    sget-object v3, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 211
    .local v9, "ul":I
    const/16 v3, 0x10

    if-ne v9, v3, :cond_1

    move v4, v1

    :goto_0
    const/16 v3, 0x11

    if-ne v9, v3, :cond_2

    move v3, v1

    :goto_1
    or-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 212
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    const-string v1, "_id asc"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->orderBy:Ljava/lang/String;

    .line 217
    :goto_2
    const-string v1, "users"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    .line 240
    :cond_0
    :goto_3
    iget-object v1, p0, Lcom/smalife/db/SmaContentProvider;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    invoke-virtual {v1}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 242
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    .line 243
    iget-object v7, p0, Lcom/smalife/db/SmaContentProvider;->orderBy:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 242
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 244
    .local v8, "c":Landroid/database/Cursor;
    return-object v8

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_1
    move v4, v2

    .line 211
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 215
    :cond_3
    iput-object p5, p0, Lcom/smalife/db/SmaContentProvider;->orderBy:Ljava/lang/String;

    goto :goto_2

    .line 218
    :cond_4
    const/16 v3, 0x21

    if-ne v9, v3, :cond_5

    move v4, v1

    :goto_4
    const/16 v3, 0x20

    if-ne v9, v3, :cond_6

    move v3, v1

    :goto_5
    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 219
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 220
    const-string v1, "update_time desc"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->orderBy:Ljava/lang/String;

    .line 224
    :goto_6
    const-string v1, "swatch"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move v4, v2

    .line 218
    goto :goto_4

    :cond_6
    move v3, v2

    goto :goto_5

    .line 222
    :cond_7
    iput-object p5, p0, Lcom/smalife/db/SmaContentProvider;->orderBy:Ljava/lang/String;

    goto :goto_6

    .line 225
    :cond_8
    const/16 v3, 0x30

    if-ne v9, v3, :cond_9

    move v4, v1

    :goto_7
    const/16 v3, 0x31

    if-ne v9, v3, :cond_a

    move v3, v1

    :goto_8
    or-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 226
    const-string v1, "sport"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_3

    :cond_9
    move v4, v2

    .line 225
    goto :goto_7

    :cond_a
    move v3, v2

    goto :goto_8

    .line 227
    :cond_b
    const/16 v3, 0x70

    if-ne v9, v3, :cond_c

    move v4, v1

    :goto_9
    const/16 v3, 0x71

    if-ne v9, v3, :cond_d

    move v3, v1

    :goto_a
    or-int/2addr v3, v4

    if-eqz v3, :cond_e

    .line 228
    const-string v1, "aim_tb"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_3

    :cond_c
    move v4, v2

    .line 227
    goto :goto_9

    :cond_d
    move v3, v2

    goto :goto_a

    .line 229
    :cond_e
    const/16 v3, 0x40

    if-ne v9, v3, :cond_f

    move v4, v1

    :goto_b
    const/16 v3, 0x41

    if-ne v9, v3, :cond_10

    move v3, v1

    :goto_c
    or-int/2addr v3, v4

    if-eqz v3, :cond_11

    .line 230
    const-string v1, "sleep"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_3

    :cond_f
    move v4, v2

    .line 229
    goto :goto_b

    :cond_10
    move v3, v2

    goto :goto_c

    .line 231
    :cond_11
    const/16 v3, 0x80

    if-ne v9, v3, :cond_12

    move v4, v1

    :goto_d
    const/16 v3, 0x81

    if-ne v9, v3, :cond_13

    move v3, v1

    :goto_e
    or-int/2addr v3, v4

    if-eqz v3, :cond_14

    .line 232
    const-string v1, "clock_tb"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_12
    move v4, v2

    .line 231
    goto :goto_d

    :cond_13
    move v3, v2

    goto :goto_e

    .line 233
    :cond_14
    const/16 v3, 0x90

    if-ne v9, v3, :cond_15

    move v4, v1

    :goto_f
    const/16 v3, 0x91

    if-ne v9, v3, :cond_16

    move v3, v1

    :goto_10
    or-int/2addr v3, v4

    if-eqz v3, :cond_17

    .line 234
    const-string v1, "track"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_15
    move v4, v2

    .line 233
    goto :goto_f

    :cond_16
    move v3, v2

    goto :goto_10

    .line 235
    :cond_17
    const/16 v3, 0xa0

    if-ne v9, v3, :cond_18

    move v4, v1

    :goto_11
    const/16 v3, 0xa1

    if-ne v9, v3, :cond_19

    move v3, v1

    :goto_12
    or-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 236
    const-string v1, "rate"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_18
    move v4, v2

    .line 235
    goto :goto_11

    :cond_19
    move v3, v2

    goto :goto_12

    .line 237
    :cond_1a
    const/16 v3, 0xb0

    if-ne v9, v3, :cond_1b

    move v3, v1

    :goto_13
    const/16 v4, 0xb1

    if-ne v9, v4, :cond_1c

    :goto_14
    or-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "exercise"

    iput-object v1, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1b
    move v3, v2

    .line 237
    goto :goto_13

    :cond_1c
    move v1, v2

    goto :goto_14
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    sget-object v5, Lcom/smalife/db/SmaContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 182
    .local v2, "ul":I
    const/16 v5, 0x10

    if-ne v2, v5, :cond_1

    move v6, v3

    :goto_0
    const/16 v5, 0x11

    if-ne v2, v5, :cond_2

    move v5, v3

    :goto_1
    or-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 183
    const-string v3, "users"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    .line 201
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/smalife/db/SmaContentProvider;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    invoke-virtual {v3}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 202
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, "rt":I
    invoke-virtual {p0}, Lcom/smalife/db/SmaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 204
    return v1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "rt":I
    :cond_1
    move v6, v4

    .line 182
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    .line 184
    :cond_3
    const/16 v5, 0x21

    if-ne v2, v5, :cond_4

    move v6, v3

    :goto_3
    const/16 v5, 0x20

    if-ne v2, v5, :cond_5

    move v5, v3

    :goto_4
    or-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 185
    const-string v3, "swatch"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v6, v4

    .line 184
    goto :goto_3

    :cond_5
    move v5, v4

    goto :goto_4

    .line 186
    :cond_6
    const/16 v5, 0x30

    if-ne v2, v5, :cond_7

    move v6, v3

    :goto_5
    const/16 v5, 0x31

    if-ne v2, v5, :cond_8

    move v5, v3

    :goto_6
    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    .line 187
    const-string v3, "sport"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move v6, v4

    .line 186
    goto :goto_5

    :cond_8
    move v5, v4

    goto :goto_6

    .line 188
    :cond_9
    const/16 v5, 0x70

    if-ne v2, v5, :cond_a

    move v6, v3

    :goto_7
    const/16 v5, 0x71

    if-ne v2, v5, :cond_b

    move v5, v3

    :goto_8
    or-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 189
    const-string v3, "aim_tb"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_a
    move v6, v4

    .line 188
    goto :goto_7

    :cond_b
    move v5, v4

    goto :goto_8

    .line 190
    :cond_c
    const/16 v5, 0x40

    if-ne v2, v5, :cond_d

    move v6, v3

    :goto_9
    const/16 v5, 0x41

    if-ne v2, v5, :cond_e

    move v5, v3

    :goto_a
    or-int/2addr v5, v6

    if-eqz v5, :cond_f

    .line 191
    const-string v3, "sleep"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto :goto_2

    :cond_d
    move v6, v4

    .line 190
    goto :goto_9

    :cond_e
    move v5, v4

    goto :goto_a

    .line 192
    :cond_f
    const/16 v5, 0x80

    if-ne v2, v5, :cond_10

    move v6, v3

    :goto_b
    const/16 v5, 0x81

    if-ne v2, v5, :cond_11

    move v5, v3

    :goto_c
    or-int/2addr v5, v6

    if-eqz v5, :cond_12

    .line 193
    const-string v3, "clock_tb"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    move v6, v4

    .line 192
    goto :goto_b

    :cond_11
    move v5, v4

    goto :goto_c

    .line 194
    :cond_12
    const/16 v5, 0x90

    if-ne v2, v5, :cond_13

    move v6, v3

    :goto_d
    const/16 v5, 0x91

    if-ne v2, v5, :cond_14

    move v5, v3

    :goto_e
    or-int/2addr v5, v6

    if-eqz v5, :cond_15

    .line 195
    const-string v3, "track"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    move v6, v4

    .line 194
    goto :goto_d

    :cond_14
    move v5, v4

    goto :goto_e

    .line 196
    :cond_15
    const/16 v5, 0xa0

    if-ne v2, v5, :cond_16

    move v6, v3

    :goto_f
    const/16 v5, 0xa1

    if-ne v2, v5, :cond_17

    move v5, v3

    :goto_10
    or-int/2addr v5, v6

    if-eqz v5, :cond_18

    .line 197
    const-string v3, "rate"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_16
    move v6, v4

    .line 196
    goto :goto_f

    :cond_17
    move v5, v4

    goto :goto_10

    .line 198
    :cond_18
    const/16 v5, 0xb0

    if-ne v2, v5, :cond_19

    move v5, v3

    :goto_11
    const/16 v6, 0xb1

    if-ne v2, v6, :cond_1a

    :goto_12
    or-int/2addr v3, v5

    if-eqz v3, :cond_0

    .line 199
    const-string v3, "exercise"

    iput-object v3, p0, Lcom/smalife/db/SmaContentProvider;->tableName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_19
    move v5, v4

    .line 198
    goto :goto_11

    :cond_1a
    move v3, v4

    goto :goto_12
.end method
