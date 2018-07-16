.class public Lcom/smalife/db/DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseHelper.java"


# static fields
.field public static dbHelper:Lcom/smalife/db/DataBaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 14
    const-string v0, "sma.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    return-void
.end method

.method private deleteDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 61
    const-string v0, "drop table if exists users"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v0, "drop table if exists swatch"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "drop table if exists friends"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "drop table if exists sleep"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "drop table if exists sport"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "drop table if exists aim_tb"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "drop table if exists clock_tb"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "drop table if exists track"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "drop table if exists rate"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "drop table if exists exercise"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lcom/smalife/db/DataBaseHelper;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/smalife/db/DataBaseHelper;

    const-string v1, "sma.db"

    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x2

    .line 19
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/smalife/db/DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/smalife/db/DataBaseHelper;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    .line 22
    :cond_0
    sget-object v0, Lcom/smalife/db/DataBaseHelper;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    return-object v0
.end method


# virtual methods
.method public deleteDB(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string v0, "sma.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 27
    const-string v0, "create table users(_id INTEGER primary key autoincrement,user_account text not null,client_id text not null,nickName text,hight REAL,weight REAL,sex int default -1,age int default 0,header_url text default NULL,Adrress text,device_type text,steps_Aim int)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    const-string v0, "create table swatch(_id INTEGER primary key autoincrement,device_mac text not null,deviceName text,verison text,update_time text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    const-string v0, "create table friends(friend_Id INTEGER primary key autoincrement,user_account text not null,friend_account text not null,friendName text not null,isFriend text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    const-string v0, "create table sleep(sleep_id long  primary key,sleep_date text not null,sync_status int default 0,action_time int not null,sleep_type int not null,time_type int not null,insert_time DATETIME not null  DEFAULT (datetime(\'now\',\'localtime\')),mac_Address text not null,user_account text not null )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    const-string v0, "create table sport(sport_id long primary key,user_account text not null,mac_Address text not null,count_date text not null,distance float,offset int not null,calorie float,steps int,sync_status int default 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string v0, "create table aim_tb(_id INTEGER PRIMARY KEY ASC AUTOINCREMENT,userAccount TEXT,distance REAL    DEFAULT ( 0 ),calories REAL    DEFAULT ( 0 ),steps INTEGER DEFAULT ( 0 ),sleep_long REAL    DEFAULT ( 0 ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v0, "create table clock_tb(clock_id INTEGER PRIMARY KEY ASC AUTOINCREMENT,user_account TEXT,clock_time REAL,name REAL ,year REAL,month REAL,day REAL,mac_Address REAL,sync INTEGER DEFAULT(0),repeat INTEGER DEFAULT ( 0 ),clockOpen INTEGER DEFAULT ( 0 ),mon_day INTEGER DEFAULT ( 0 ),tues_day INTEGER DEFAULT ( 0 ),wes_day INTEGER DEFAULT ( 0 ),thur_day INTEGER DEFAULT ( 0 ),frid_day INTEGER DEFAULT ( 0 ),sta_day INTEGER DEFAULT ( 0 ),sun_day INTEGER DEFAULT ( 0 ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string v0, "create table track(track_id long primary key ,user_account text not null,track_date text not null,track_time long,track_lat double,track_long double,sync_status int default 0,location_model int)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const-string v0, "create table rate(rate_id long primary key ,user_account text not null,rate_date text not null,rate_time long,rate_status int default 0,sync_status int default 0,rate_value int default 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "create table exercise(exercise_ID long primary key ,user_account text not null,exercise_date text not null,start_time long,end_time long,distance REAL,speed REAL,pacer REAL,calorie REAL,sync_status int default 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 51
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 52
    const-string v0, "drop table if exists rate"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "create table rate(rate_id long primary key ,user_account text not null,rate_date text not null,rate_time long,rate_status int default 0,sync_status int default 0,rate_value int default 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
