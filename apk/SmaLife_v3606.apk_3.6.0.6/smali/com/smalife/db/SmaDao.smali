.class public Lcom/smalife/db/SmaDao;
.super Ljava/lang/Object;
.source "SmaDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/db/SmaDao$SleepObject;
    }
.end annotation


# instance fields
.field dbHelper:Lcom/smalife/db/DataBaseHelper;

.field private mContext:Landroid/content/Context;

.field private slist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/SleepStatusObject;",
            ">;"
        }
    .end annotation
.end field

.field timeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    .line 1046
    new-instance v0, Lcom/smalife/db/SmaDao$1;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao$1;-><init>(Lcom/smalife/db/SmaDao;)V

    iput-object v0, p0, Lcom/smalife/db/SmaDao;->timeComparator:Ljava/util/Comparator;

    .line 39
    iput-object p1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/db/SmaDao;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    .line 41
    return-void
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 6
    .param p1, "index_day"    # I

    .prologue
    const/4 v5, 0x5

    .line 514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 515
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 516
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 517
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 518
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 519
    .local v1, "day":I
    add-int v4, v1, p1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 520
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 521
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 522
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private productLogs(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "logBuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1066
    new-instance v1, Lcom/smalife/tools/LogTools;

    invoke-direct {v1}, Lcom/smalife/tools/LogTools;-><init>()V

    .line 1067
    .local v1, "tools":Lcom/smalife/tools/LogTools;
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/tools/LogTools;->log2bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1068
    .local v0, "logs":[B
    invoke-virtual {v1, p1, v0}, Lcom/smalife/tools/LogTools;->writeLogs(Ljava/lang/String;[B)V

    .line 1069
    return-void
.end method


# virtual methods
.method public SyncRateList(Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .param p2, "user_account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/db/entity/RateEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1150
    .local p1, "ratelist":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/db/entity/RateEntity;>;"
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-gez v11, :cond_0

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 1178
    :cond_1
    :goto_0
    return-void

    .line 1152
    :cond_2
    const-string v9, "delete from rate where rate_id = ? "

    .line 1153
    .local v9, "sql":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smalife/db/SmaDao;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    invoke-virtual {v11}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1154
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1155
    .local v10, "stat":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1156
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1160
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1161
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1163
    const-string v2, "insert into rate(user_account,rate_id,rate_date,rate_time,rate_value,rate_status) values(?,?,?,?,?,?) "

    .line 1164
    .local v2, "addSql":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1165
    .local v3, "addStat":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1166
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1176
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1177
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1156
    .end local v2    # "addSql":Ljava/lang/String;
    .end local v3    # "addStat":Landroid/database/sqlite/SQLiteStatement;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smalife/db/entity/RateEntity;

    .line 1157
    .local v5, "entity":Lcom/smalife/db/entity/RateEntity;
    const/4 v12, 0x1

    invoke-virtual {v5}, Lcom/smalife/db/entity/RateEntity;->getRate_Id()J

    move-result-wide v14

    invoke-virtual {v10, v12, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1158
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_1

    .line 1166
    .end local v5    # "entity":Lcom/smalife/db/entity/RateEntity;
    .restart local v2    # "addSql":Ljava/lang/String;
    .restart local v3    # "addStat":Landroid/database/sqlite/SQLiteStatement;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smalife/db/entity/RateEntity;

    .line 1167
    .local v8, "n":Lcom/smalife/db/entity/RateEntity;
    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/smalife/db/entity/RateEntity;->getUserAccount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1168
    const/4 v12, 0x2

    invoke-virtual {v8}, Lcom/smalife/db/entity/RateEntity;->getRate_Id()J

    move-result-wide v14

    invoke-virtual {v3, v12, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1169
    const/4 v12, 0x3

    invoke-virtual {v8}, Lcom/smalife/db/entity/RateEntity;->getRate_date()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1170
    const/4 v12, 0x4

    invoke-virtual {v8}, Lcom/smalife/db/entity/RateEntity;->getRate_time()J

    move-result-wide v14

    invoke-virtual {v3, v12, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1171
    const/4 v12, 0x5

    invoke-virtual {v8}, Lcom/smalife/db/entity/RateEntity;->getRate_value()I

    move-result v13

    int-to-long v14, v13

    invoke-virtual {v3, v12, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1172
    const/4 v12, 0x6

    invoke-virtual {v8}, Lcom/smalife/db/entity/RateEntity;->getRate_status()I

    move-result v13

    int-to-long v14, v13

    invoke-virtual {v3, v12, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1173
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v6

    .line 1174
    .local v6, "i":J
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "insert into i = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public SyncSportList(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "user_account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "sportlist":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/db/entity/SportEntity;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gez v3, :cond_0

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    iget-object v3, p0, Lcom/smalife/db/SmaDao;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    invoke-virtual {v3}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 100
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 89
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/db/entity/SportEntity;

    .line 90
    .local v1, "entity":Lcom/smalife/db/entity/SportEntity;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "update sport set sync_status = 1 where user_account = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/smalife/db/entity/SportEntity;->getUserAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 91
    const-string v5, " and sport_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/smalife/db/entity/SportEntity;->getSport_id()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addAim(Ljava/lang/String;Lcom/smalife/db/entity/AimEntity;)V
    .locals 4
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "aim"    # Lcom/smalife/db/entity/AimEntity;

    .prologue
    .line 358
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "userAccount"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "distance"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getDistance()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 364
    const-string v2, "calories"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getCalories()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 365
    const-string v2, "steps"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getSteps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v2, "sleep_long"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getSleeplong()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 367
    sget-object v2, Lcom/smalife/db/Sma$Aim;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public addExerciseData(Lcom/smalife/db/entity/ExerciseEntity;Ljava/lang/String;)V
    .locals 6
    .param p1, "entity"    # Lcom/smalife/db/entity/ExerciseEntity;
    .param p2, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 1304
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v2, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1307
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1309
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_account"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v2, "exercise_ID"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getExercise_id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1311
    const-string v2, "exercise_date"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getExercise_date()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v2, "start_time"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getStart_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1313
    const-string v2, "end_time"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getEnd_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1314
    const-string v2, "distance"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getDistance()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1315
    const-string v2, "speed"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1316
    const-string v2, "pacer"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getPacer()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1317
    const-string v2, "calorie"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getCalorie()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1318
    const-string v2, "sync_status"

    invoke-virtual {p1}, Lcom/smalife/db/entity/ExerciseEntity;->getSync()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    sget-object v2, Lcom/smalife/db/Sma$Exercise;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public addNewClock(Ljava/lang/String;Lcom/smalife/entity/ClockEntity;)V
    .locals 5
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "clock"    # Lcom/smalife/entity/ClockEntity;

    .prologue
    .line 895
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    iget-object v3, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 898
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 899
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "user_account"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v3, "name"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getClockName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v3, "clockOpen"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getOpenOrClose()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    const-string v3, "clock_time"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getClock_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v3, "mon_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getMon_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 904
    const-string v3, "tues_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getTues_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    const-string v3, "wes_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getWes_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    const-string v3, "thur_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getThur_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    const-string v3, "frid_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getFrid_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v3, "sta_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getSta_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 909
    const-string v3, "sun_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getSun_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    const-string v3, "year"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v3, "month"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getMonth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    const-string v3, "day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    const-string v3, "repeat"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getRepeat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 914
    const-string v3, "sync"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getSync()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "macAddress":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 917
    const-string v1, ""

    .line 919
    :cond_2
    const-string v3, "mac_Address"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    sget-object v3, Lcom/smalife/db/Sma$Clock;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public addRateData(Lcom/smalife/db/entity/RateEntity;Ljava/lang/String;)V
    .locals 10
    .param p1, "entity"    # Lcom/smalife/db/entity/RateEntity;
    .param p2, "userAccount"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1184
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1187
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "rate_id= ?"

    .line 1188
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/smalife/db/entity/RateEntity;->getRate_Id()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    .line 1187
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1195
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1198
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1200
    .local v7, "values":Landroid/content/ContentValues;
    const-string v1, "user_account"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v1, "rate_id"

    invoke-virtual {p1}, Lcom/smalife/db/entity/RateEntity;->getRate_Id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1202
    const-string v1, "rate_date"

    invoke-virtual {p1}, Lcom/smalife/db/entity/RateEntity;->getRate_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v1, "rate_time"

    invoke-virtual {p1}, Lcom/smalife/db/entity/RateEntity;->getRate_time()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1204
    const-string v1, "rate_status"

    invoke-virtual {p1}, Lcom/smalife/db/entity/RateEntity;->getRate_status()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const-string v1, "rate_value"

    invoke-virtual {p1}, Lcom/smalife/db/entity/RateEntity;->getRate_value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1206
    const-string v1, "sync_status"

    invoke-virtual {p1}, Lcom/smalife/db/entity/RateEntity;->getSync()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1207
    sget-object v1, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public addSleepData(Ljava/lang/String;Lcom/smalife/db/entity/SleepEntity;)V
    .locals 10
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "sleep"    # Lcom/smalife/db/entity/SleepEntity;

    .prologue
    .line 451
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v4, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 454
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/smalife/db/Sma$Sleep;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "sleep_id = ? "

    .line 455
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/smalife/db/entity/SleepEntity;->getSleep_id()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 454
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 456
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/smalife/db/entity/SleepEntity;->getSleep_date()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "sleep_date":Ljava/lang/String;
    const-string v4, "user_account"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v4, "sleep_id"

    invoke-virtual {p2}, Lcom/smalife/db/entity/SleepEntity;->getSleep_id()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    const-string v4, "sleep_date"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v4, "action_time"

    invoke-virtual {p2}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v4, "time_type"

    invoke-virtual {p2}, Lcom/smalife/db/entity/SleepEntity;->getSleep_model()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    const-string v4, "sleep_type"

    invoke-virtual {p2}, Lcom/smalife/db/entity/SleepEntity;->getSleep_type()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v4, "sync_status"

    invoke-virtual {p2}, Lcom/smalife/db/entity/SleepEntity;->getSync()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    invoke-virtual {p2}, Lcom/smalife/db/entity/SleepEntity;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "macAddress":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 467
    const-string v1, ""

    .line 469
    :cond_2
    const-string v4, "mac_Address"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget-object v4, Lcom/smalife/db/Sma$Sleep;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public addSportData(Lcom/smalife/db/entity/SportEntity;Ljava/lang/String;)V
    .locals 8
    .param p1, "sport"    # Lcom/smalife/db/entity/SportEntity;
    .param p2, "User_Account"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    .line 57
    const-string v4, "user_account = ? and offset = ? and count_date = ? "

    .line 58
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getOffSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 56
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "macAddress":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 63
    const-string v1, ""

    .line 65
    :cond_2
    const-string v3, "sport_id"

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSport_id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v3, "user_account"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "mac_Address"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "offset"

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getOffSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v3, "distance"

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getDistance()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 70
    const-string v3, "count_date"

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "steps"

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v3, "calorie"

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 73
    const-string v3, "sync_status"

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSync()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    sget-object v3, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public addTrackData(Lcom/smalife/db/entity/TrackEntity;Ljava/lang/String;)V
    .locals 6
    .param p1, "entity"    # Lcom/smalife/db/entity/TrackEntity;
    .param p2, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 1074
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget-object v2, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1077
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1079
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_account"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v2, "track_id"

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getTrack_ID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1081
    const-string v2, "track_date"

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getTrack_date()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v2, "track_time"

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getTrack_time()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1083
    const-string v2, "track_lat"

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1084
    const-string v2, "track_long"

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1085
    const-string v2, "sync_status"

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getSync()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    const-string v2, "location_model"

    invoke-virtual {p1}, Lcom/smalife/db/entity/TrackEntity;->getLocationModel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1088
    sget-object v2, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public addUser(Lcom/smalife/db/entity/UserEntity;)V
    .locals 4
    .param p1, "user"    # Lcom/smalife/db/entity/UserEntity;

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_account"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "client_id"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getClient_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "hight"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v2, "weight"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 281
    const-string v2, "sex"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v2, "age"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v2, "nickName"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "header_url"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getHeader_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "steps_Aim"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getAim_steps()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v2, Lcom/smalife/db/Sma$Users;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public checkUserExist(Ljava/lang/String;)I
    .locals 12
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 336
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v10

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v9

    .line 339
    .local v9, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v9}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    .line 340
    const-string v3, "user_account = ? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v6, v5

    move-object v7, v5

    .line 339
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 341
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 342
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 343
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 344
    .local v10, "result":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public delAllClocks(Ljava/lang/String;)I
    .locals 6
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 1019
    iget-object v2, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1020
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/smalife/db/Sma$Clock;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "user_account = ? "

    .line 1021
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 1020
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1022
    .local v1, "rowAffect":I
    return v1
.end method

.method public delClock(J)I
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 1006
    iget-object v2, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1007
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/smalife/db/Sma$Clock;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "clock_id = ? "

    .line 1008
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1007
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1009
    .local v1, "rowAffect":I
    return v1
.end method

.method public deleteOneExercise(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1359
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Exercise;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "exercise_ID= ? "

    .line 1360
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1359
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1361
    return-void
.end method

.method public deleteOneTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "track_date"    # Ljava/lang/String;
    .param p3, "start_time"    # Ljava/lang/String;
    .param p4, "end_time"    # Ljava/lang/String;

    .prologue
    .line 1139
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1144
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "user_account= ? and track_date= ? track_time BETWEEN ? AND ? "

    .line 1146
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    .line 1143
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteTracks(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "startTrack_ID"    # J
    .param p4, "endTrack_ID"    # J

    .prologue
    .line 1126
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1130
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    .line 1131
    const-string v2, "track_date= ? and track_id < ? or track_id > ?"

    .line 1132
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1130
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAim(Ljava/lang/String;)Lcom/smalife/db/entity/AimEntity;
    .locals 11
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 427
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v8, v2

    .line 442
    :cond_1
    :goto_0
    return-object v8

    .line 429
    :cond_2
    const/4 v8, 0x0

    .line 430
    .local v8, "aim":Lcom/smalife/db/entity/AimEntity;
    iget-object v0, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v10

    .line 431
    .local v10, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v10}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "aim_tb"

    .line 432
    const-string v3, "userAccount= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 431
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 433
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 434
    new-instance v8, Lcom/smalife/db/entity/AimEntity;

    .end local v8    # "aim":Lcom/smalife/db/entity/AimEntity;
    invoke-direct {v8}, Lcom/smalife/db/entity/AimEntity;-><init>()V

    .line 435
    .restart local v8    # "aim":Lcom/smalife/db/entity/AimEntity;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 436
    invoke-virtual {v8, p1}, Lcom/smalife/db/entity/AimEntity;->setAccount(Ljava/lang/String;)V

    .line 437
    const-string v0, "steps"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/smalife/db/entity/AimEntity;->setSteps(I)V

    .line 438
    const-string v0, "distance"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/smalife/db/entity/AimEntity;->setDistance(F)V

    .line 439
    const-string v0, "calories"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/smalife/db/entity/AimEntity;->setCalories(F)V

    .line 440
    const-string v0, "sleep_long"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v8, v0}, Lcom/smalife/db/entity/AimEntity;->setSleeplong(F)V

    goto :goto_0
.end method

.method public getCurDaySportData(Ljava/lang/String;Ljava/lang/String;)Lcom/smalife/db/entity/SportEntity;
    .locals 17
    .param p1, "dayString"    # Ljava/lang/String;
    .param p2, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v7, 0x0

    .line 219
    .local v7, "calorie":F
    const/4 v10, 0x0

    .line 220
    .local v10, "distance":F
    const/16 v16, 0x0

    .line 221
    .local v16, "steps":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 222
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 223
    const-string v4, "count_date= ? and user_account = ?"

    .line 224
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    .line 222
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 225
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v13, "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    const/4 v15, 0x0

    .line 227
    .local v15, "sportEntity":Lcom/smalife/db/entity/SportEntity;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 228
    new-instance v15, Lcom/smalife/db/entity/SportEntity;

    .end local v15    # "sportEntity":Lcom/smalife/db/entity/SportEntity;
    invoke-direct {v15}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 229
    .restart local v15    # "sportEntity":Lcom/smalife/db/entity/SportEntity;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 231
    :cond_0
    new-instance v14, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v14}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 232
    .local v14, "sport":Lcom/smalife/db/entity/SportEntity;
    const-string v2, "calorie"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v14, v2}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 233
    const-string v2, "steps"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 234
    const-string v2, "user_account"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/smalife/db/entity/SportEntity;->setUserAccount(Ljava/lang/String;)V

    .line 235
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/smalife/db/entity/SportEntity;->setSprot_type(I)V

    .line 236
    const-string v2, "count_date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 237
    .local v9, "dateString":Ljava/lang/String;
    invoke-virtual {v14, v9}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 238
    const-string v2, "offset"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/smalife/db/entity/SportEntity;->setOffSet(I)V

    .line 239
    const-string v2, "distance"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v14, v2}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 240
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 245
    .end local v9    # "dateString":Ljava/lang/String;
    .end local v14    # "sport":Lcom/smalife/db/entity/SportEntity;
    :cond_1
    const/4 v11, 0x0

    .line 246
    .local v11, "maxStep":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 248
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 269
    :cond_3
    return-object v15

    .line 248
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smalife/db/entity/SportEntity;

    .line 249
    .local v12, "s":Lcom/smalife/db/entity/SportEntity;
    invoke-virtual {v12}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 250
    invoke-virtual {v12}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v3

    add-float/2addr v7, v3

    .line 251
    invoke-virtual {v12}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    add-int v16, v16, v3

    .line 252
    invoke-virtual {v12}, Lcom/smalife/db/entity/SportEntity;->getDistance()F

    move-result v3

    add-float/2addr v10, v3

    .line 253
    invoke-virtual {v15, v7}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 254
    invoke-virtual/range {v15 .. v16}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 255
    invoke-virtual {v15, v10}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    goto :goto_0

    .line 257
    :cond_5
    invoke-virtual {v12}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    if-le v3, v11, :cond_2

    .line 258
    invoke-virtual {v12}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v11

    .line 259
    move-object v15, v12

    goto :goto_0
.end method

.method public getExerciseLists(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "userAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/ExerciseEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1329
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v8, v2

    .line 1351
    :cond_1
    return-object v8

    .line 1332
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v8, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/ExerciseEntity;>;"
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1334
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Exercise;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "user_account= ? "

    .line 1335
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    .line 1334
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1336
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1337
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1338
    new-instance v6, Lcom/smalife/db/entity/ExerciseEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/ExerciseEntity;-><init>()V

    .line 1339
    .local v6, "bean":Lcom/smalife/db/entity/ExerciseEntity;
    const-string v1, "exercise_ID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/ExerciseEntity;->setExercise_id(J)V

    .line 1340
    const-string v1, "exercise_date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/ExerciseEntity;->setExercise_date(Ljava/lang/String;)V

    .line 1341
    const-string v1, "start_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/ExerciseEntity;->setStart_time(J)V

    .line 1342
    const-string v1, "end_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/ExerciseEntity;->setEnd_time(J)V

    .line 1343
    const-string v1, "distance"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/ExerciseEntity;->setDistance(F)V

    .line 1344
    const-string v1, "speed"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/ExerciseEntity;->setSpeed(F)V

    .line 1345
    const-string v1, "pacer"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/ExerciseEntity;->setPacer(F)V

    .line 1346
    const-string v1, "calorie"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/ExerciseEntity;->setCalorie(F)V

    .line 1347
    const-string v1, "sync_status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/ExerciseEntity;->setSync(I)V

    .line 1348
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getExerciseRateLists(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;
    .locals 11
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/RateEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1217
    :cond_0
    const/4 v8, 0x0

    .line 1239
    :cond_1
    :goto_0
    return-object v8

    .line 1219
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v8, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/RateEntity;>;"
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1221
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1222
    const-string v3, "user_account= ? and rate_date = ? and rate_status = ? and rate_time > ? and rate_time < ? "

    .line 1224
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    sget v9, Lcom/smalife/db/entity/RateEntity;->STATUS_EXERCISE:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x4

    .line 1225
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    .line 1226
    const/4 v5, 0x0

    .line 1221
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1227
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1228
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1237
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1229
    :cond_3
    new-instance v6, Lcom/smalife/db/entity/RateEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/RateEntity;-><init>()V

    .line 1230
    .local v6, "bean":Lcom/smalife/db/entity/RateEntity;
    const-string v1, "rate_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 1231
    const-string v1, "rate_date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_date(Ljava/lang/String;)V

    .line 1232
    const-string v1, "rate_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    .line 1233
    const-string v1, "rate_status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_status(I)V

    .line 1234
    const-string v1, "rate_value"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_value(I)V

    .line 1235
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getOneDayRateLists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/RateEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1248
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v8, v2

    .line 1269
    :cond_1
    :goto_0
    return-object v8

    .line 1251
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    .local v8, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/RateEntity;>;"
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1253
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 1254
    const-string v3, "user_account= ? and rate_date = ? and rate_status = ? "

    .line 1255
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    sget v9, Lcom/smalife/db/entity/RateEntity;->STATUS_NORMAL:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move-object v5, v2

    .line 1253
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1257
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1258
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1259
    :cond_3
    new-instance v6, Lcom/smalife/db/entity/RateEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/RateEntity;-><init>()V

    .line 1260
    .local v6, "bean":Lcom/smalife/db/entity/RateEntity;
    const-string v1, "rate_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 1261
    const-string v1, "rate_date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_date(Ljava/lang/String;)V

    .line 1262
    const-string v1, "rate_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    .line 1263
    const-string v1, "rate_status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_status(I)V

    .line 1264
    const-string v1, "rate_value"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_value(I)V

    .line 1265
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getOneDaySleepData(Ljava/lang/String;Ljava/lang/String;I)Lcom/smalife/db/entity/SleepEntity;
    .locals 47
    .param p1, "dtString"    # Ljava/lang/String;
    .param p2, "userAccount"    # Ljava/lang/String;
    .param p3, "day_index"    # I

    .prologue
    .line 609
    const/16 v42, 0x0

    .line 610
    .local v42, "up_number":I
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v28, "sleepList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v27, Lcom/smalife/db/entity/SleepEntity;

    invoke-direct/range {v27 .. v27}, Lcom/smalife/db/entity/SleepEntity;-><init>()V

    .line 613
    .local v27, "sleepBean":Lcom/smalife/db/entity/SleepEntity;
    const/16 v30, -0x1

    .line 614
    .local v30, "sleep_status":I
    const/4 v11, 0x0

    .line 616
    .local v11, "action_point":I
    const/16 v45, 0x0

    .line 618
    .local v45, "wakeup_time":I
    const/16 v44, 0x0

    .line 620
    .local v44, "wakeup_action_time":I
    const/16 v16, 0x0

    .line 622
    .local v16, "deep_time":I
    const/16 v39, 0x0

    .line 624
    .local v39, "tint_time":I
    const/16 v40, 0x0

    .line 626
    .local v40, "tint_time2":I
    const/4 v13, 0x0

    .line 628
    .local v13, "clear_time":I
    const-string v18, ""

    .line 629
    .local v18, "fallSleep_date":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v15

    .line 632
    .local v15, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    const/16 v17, 0x528

    .line 634
    .local v17, "default_time":I
    move/from16 v20, v17

    .line 635
    .local v20, "fallsleep_time":I
    add-int/lit8 v2, p3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smalife/db/SmaDao;->getCurDate(I)Ljava/lang/String;

    move-result-object v18

    .line 637
    move-object/from16 v10, v18

    .line 640
    .local v10, "Mysleep_date":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "sleep"

    const/4 v4, 0x0

    .line 641
    const-string v5, "user_account= ? and sleep_type= ? and time_type= ? and ((sleep_date = ? ) or (sleep_date = ? and action_time< 300 ))"

    .line 644
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 645
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p1, v6, v7

    .line 646
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "sleep_date,action_time desc"

    .line 640
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 647
    .local v26, "scursor":Landroid/database/Cursor;
    if-eqz v26, :cond_2

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 648
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 650
    :cond_0
    const-string v2, "sleep_date"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 651
    const-string v2, "action_time"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 652
    .local v34, "temp_time":I
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    move/from16 v0, v34

    add-int/lit16 v0, v0, 0x5a0

    move/from16 v34, v0

    .line 655
    :cond_1
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->timeComparator:Ljava/util/Comparator;

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 658
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 659
    .local v23, "len":I
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 663
    .end local v23    # "len":I
    .end local v34    # "temp_time":I
    :cond_2
    const/16 v2, 0x528

    move/from16 v0, v20

    if-ge v0, v2, :cond_3

    .line 664
    const/16 v20, 0x528

    .line 668
    :cond_3
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v41, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/SmaDao$SleepObject;>;"
    invoke-virtual {v15}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "sleep"

    const/4 v4, 0x0

    .line 670
    const-string v5, "user_account= ? and sleep_date = ? and sleep_type= ? and time_type= ? "

    .line 672
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 673
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 674
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "sleep_date,action_time asc"

    .line 669
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v46

    .line 675
    .local v46, "wcursor":Landroid/database/Cursor;
    if-eqz v46, :cond_5

    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 676
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToFirst()Z

    .line 678
    :cond_4
    new-instance v24, Lcom/smalife/db/SmaDao$SleepObject;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smalife/db/SmaDao$SleepObject;-><init>(Lcom/smalife/db/SmaDao;)V

    .line 679
    .local v24, "obj":Lcom/smalife/db/SmaDao$SleepObject;
    const-string v2, "action_time"

    move-object/from16 v0, v46

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v46

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 680
    .local v12, "action_time":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/smalife/db/SmaDao$SleepObject;->setAction_time(I)V

    .line 681
    const-string v2, "sleep_type"

    move-object/from16 v0, v46

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v46

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/smalife/db/SmaDao$SleepObject;->setSleep_type(I)V

    .line 682
    const-string v2, "time_type"

    move-object/from16 v0, v46

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v46

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/smalife/db/SmaDao$SleepObject;->setAction_type(I)V

    .line 683
    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 685
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    .line 688
    .end local v12    # "action_time":I
    .end local v24    # "obj":Lcom/smalife/db/SmaDao$SleepObject;
    :cond_5
    if-eqz v41, :cond_7

    .line 689
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 700
    :cond_7
    :goto_0
    if-gtz v45, :cond_9

    .line 701
    const-wide/16 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setFallsleep_time(J)V

    .line 702
    const-wide/16 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setWeakup_time(J)V

    .line 703
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/smalife/db/entity/SleepEntity;->setUp_number(I)V

    .line 704
    const-wide/16 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setDeep_time(J)V

    .line 705
    const-wide/16 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setTint_time(J)V

    .line 706
    const-wide/16 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setClear_time(J)V

    .line 885
    :goto_1
    return-object v27

    .line 689
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/smalife/db/SmaDao$SleepObject;

    .line 690
    .local v33, "t":Lcom/smalife/db/SmaDao$SleepObject;
    invoke-static/range {v33 .. v33}, Lcom/smalife/db/SmaDao$SleepObject;->access$0(Lcom/smalife/db/SmaDao$SleepObject;)I

    move-result v3

    add-int/lit16 v0, v3, 0x5a0

    move/from16 v34, v0

    .line 691
    .restart local v34    # "temp_time":I
    invoke-virtual/range {v33 .. v33}, Lcom/smalife/db/SmaDao$SleepObject;->getSleep_type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    invoke-virtual/range {v33 .. v33}, Lcom/smalife/db/SmaDao$SleepObject;->getAction_type()I

    move-result v3

    if-nez v3, :cond_6

    .line 692
    const/16 v3, 0x654

    move/from16 v0, v34

    if-le v0, v3, :cond_6

    const/16 v3, 0x99c

    move/from16 v0, v34

    if-gt v0, v3, :cond_6

    .line 693
    invoke-static/range {v33 .. v33}, Lcom/smalife/db/SmaDao$SleepObject;->access$0(Lcom/smalife/db/SmaDao$SleepObject;)I

    move-result v45

    .line 694
    move/from16 v44, v34

    .line 695
    goto :goto_0

    .line 709
    .end local v33    # "t":Lcom/smalife/db/SmaDao$SleepObject;
    .end local v34    # "temp_time":I
    :cond_9
    move/from16 v0, v20

    int-to-long v2, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setFallsleep_time(J)V

    .line 710
    move/from16 v0, v44

    int-to-long v2, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setWeakup_time(J)V

    .line 715
    const/16 v21, 0x0

    .line 716
    .local v21, "gotosleep_time":I
    const/16 v25, 0x0

    .line 717
    .local v25, "rtcursor":Landroid/database/Cursor;
    const/16 v2, 0x5a0

    move/from16 v0, v20

    if-lt v0, v2, :cond_e

    .line 719
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/smalife/db/SmaDao;->getCurDate(I)Ljava/lang/String;

    move-result-object v18

    .line 720
    move/from16 v0, v20

    add-int/lit16 v0, v0, -0x5a0

    move/from16 v21, v0

    .line 721
    invoke-virtual {v15}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "sleep"

    const/4 v4, 0x0

    .line 722
    const-string v5, "user_account = ? and ((sleep_date= ? and action_time>= ? ) and (sleep_date= ? and action_time<= ? )) "

    .line 725
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object v18, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    const/4 v7, 0x4

    .line 726
    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 727
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 721
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 740
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 741
    if-eqz v25, :cond_d

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 742
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 744
    :cond_a
    const-string v2, "time_type"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 745
    .local v29, "sleep_model":I
    const-string v2, "sleep_type"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 746
    .local v31, "sleep_type":I
    const/4 v2, 0x2

    move/from16 v0, v29

    if-ne v0, v2, :cond_b

    .line 747
    add-int/lit8 v42, v42, 0x1

    .line 749
    :cond_b
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_f

    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_f

    .line 787
    :cond_c
    :goto_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 791
    .end local v29    # "sleep_model":I
    .end local v31    # "sleep_type":I
    :cond_d
    new-instance v19, Lcom/smalife/entity/SleepStatusObject;

    invoke-direct/range {v19 .. v19}, Lcom/smalife/entity/SleepStatusObject;-><init>()V

    .line 792
    .local v19, "fall_obj":Lcom/smalife/entity/SleepStatusObject;
    const/16 v2, 0x21

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 793
    invoke-virtual/range {v19 .. v20}, Lcom/smalife/entity/SleepStatusObject;->setAction_time(I)V

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 795
    new-instance v43, Lcom/smalife/entity/SleepStatusObject;

    invoke-direct/range {v43 .. v43}, Lcom/smalife/entity/SleepStatusObject;-><init>()V

    .line 796
    .local v43, "wake_obj":Lcom/smalife/entity/SleepStatusObject;
    const/16 v2, 0x22

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 797
    invoke-virtual/range {v43 .. v44}, Lcom/smalife/entity/SleepStatusObject;->setAction_time(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_12

    .line 804
    const/16 v32, -0x1

    .line 805
    .local v32, "status":I
    const/16 v35, 0x0

    .line 806
    .local v35, "time":I
    const/16 v36, 0x0

    .local v36, "timeClear":I
    const/16 v37, 0x0

    .local v37, "timeDeep":I
    const/16 v38, 0x0

    .line 807
    .local v38, "timeTint":I
    const/16 v22, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_13

    .line 876
    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/SleepEntity;->setUp_number(I)V

    .line 882
    move/from16 v0, v37

    int-to-long v2, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setDeep_time(J)V

    .line 883
    move/from16 v0, v38

    int-to-long v2, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setTint_time(J)V

    .line 884
    move/from16 v0, v36

    int-to-long v2, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/smalife/db/entity/SleepEntity;->setClear_time(J)V

    goto/16 :goto_1

    .line 730
    .end local v19    # "fall_obj":Lcom/smalife/entity/SleepStatusObject;
    .end local v22    # "i":I
    .end local v32    # "status":I
    .end local v35    # "time":I
    .end local v36    # "timeClear":I
    .end local v37    # "timeDeep":I
    .end local v38    # "timeTint":I
    .end local v43    # "wake_obj":Lcom/smalife/entity/SleepStatusObject;
    :cond_e
    move/from16 v21, v20

    .line 731
    invoke-virtual {v15}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "sleep"

    const/4 v4, 0x0

    .line 732
    const-string v5, "user_account = ? and ((sleep_date= ? and action_time>= ? ) or (sleep_date= ? and action_time<= ? )) "

    .line 735
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object v18, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    const/4 v7, 0x4

    .line 736
    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 737
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 731
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    goto/16 :goto_2

    .line 751
    .restart local v29    # "sleep_model":I
    .restart local v31    # "sleep_type":I
    :cond_f
    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_10

    if-eqz v29, :cond_c

    .line 754
    :cond_10
    const-string v2, "action_time"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 755
    .restart local v12    # "action_time":I
    const-string v2, "sleep_date"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 756
    .local v14, "curData":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 757
    add-int/lit16 v12, v12, 0x5a0

    .line 764
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sleep_model = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , sleep_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 765
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action_point = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 764
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 783
    new-instance v24, Lcom/smalife/entity/SleepStatusObject;

    invoke-direct/range {v24 .. v24}, Lcom/smalife/entity/SleepStatusObject;-><init>()V

    .line 784
    .local v24, "obj":Lcom/smalife/entity/SleepStatusObject;
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/smalife/entity/SleepStatusObject;->setAction_time(I)V

    .line 785
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 802
    .end local v12    # "action_time":I
    .end local v14    # "curData":Ljava/lang/String;
    .end local v24    # "obj":Lcom/smalife/entity/SleepStatusObject;
    .end local v29    # "sleep_model":I
    .end local v31    # "sleep_type":I
    .restart local v19    # "fall_obj":Lcom/smalife/entity/SleepStatusObject;
    .restart local v22    # "i":I
    .restart local v43    # "wake_obj":Lcom/smalife/entity/SleepStatusObject;
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Date["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->w(Ljava/lang/String;)V

    .line 801
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 808
    .restart local v32    # "status":I
    .restart local v35    # "time":I
    .restart local v36    # "timeClear":I
    .restart local v37    # "timeDeep":I
    .restart local v38    # "timeTint":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_type()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 809
    const/4 v2, 0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_15

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v36, v36, v2

    .line 821
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_type()I

    move-result v32

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v35

    .line 807
    :cond_14
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 811
    :cond_15
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_16

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v37, v37, v2

    .line 813
    goto :goto_6

    :cond_16
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_17

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v38, v38, v2

    .line 815
    goto :goto_6

    .line 816
    :cond_17
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_18

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 819
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v36, v36, v2

    goto :goto_6

    .line 823
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 824
    const/4 v2, 0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_1a

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v36, v36, v2

    .line 836
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_type()I

    move-result v32

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v35

    .line 838
    goto/16 :goto_7

    .line 826
    :cond_1a
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_1b

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v37, v37, v2

    .line 828
    goto :goto_8

    :cond_1b
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_1c

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v38, v38, v2

    .line 830
    goto :goto_8

    .line 831
    :cond_1c
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_1d

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 834
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v37, v37, v2

    goto :goto_8

    .line 838
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 839
    const/4 v2, 0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_1f

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v36, v36, v2

    .line 851
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_type()I

    move-result v32

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v35

    .line 853
    goto/16 :goto_7

    .line 841
    :cond_1f
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_20

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v37, v37, v2

    .line 843
    goto :goto_9

    :cond_20
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_21

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v38, v38, v2

    .line 845
    goto :goto_9

    .line 846
    :cond_21
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_22

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 849
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v38, v38, v2

    goto :goto_9

    .line 854
    :cond_23
    const/4 v2, 0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_24

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v36, v36, v2

    .line 856
    goto/16 :goto_7

    :cond_24
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_25

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v37, v37, v2

    .line 858
    goto/16 :goto_7

    :cond_25
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_26

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v2

    sub-int v2, v2, v35

    add-int v38, v38, v2

    .line 860
    goto/16 :goto_7

    .line 861
    :cond_26
    if-nez v22, :cond_14

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_type()I

    move-result v32

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v2}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v35

    goto/16 :goto_7
.end method

.method public getOneDaySleepList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "preDate"    # Ljava/lang/String;
    .param p2, "today"    # Ljava/lang/String;
    .param p3, "userAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/SleepEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smalife/db/SmaDao;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    invoke-virtual {v1}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sleep"

    const/4 v3, 0x0

    .line 559
    const-string v4, "user_account = ? and ((sleep_date = ? and action_time >= 1320) or (sleep_date = ? and action_time <= 600)) "

    .line 561
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 562
    const-string v8, "sleep_date,action_time asc"

    .line 558
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 564
    .local v9, "cs":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 565
    .local v17, "type_count":I
    const/4 v10, 0x0

    .line 566
    .local v10, "isHaveFall":Z
    const/4 v11, 0x0

    .line 567
    .local v11, "isHaveWake":Z
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 586
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 587
    .local v15, "size":I
    if-nez v10, :cond_0

    if-lez v15, :cond_0

    .line 588
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/db/entity/SleepEntity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 589
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/db/entity/SleepEntity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SleepEntity;->setSleep_model(I)V

    .line 590
    add-int/lit8 v17, v17, 0x1

    .line 592
    :cond_0
    if-nez v11, :cond_1

    if-lez v15, :cond_1

    .line 593
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/db/entity/SleepEntity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 594
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/db/entity/SleepEntity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SleepEntity;->setSleep_model(I)V

    .line 595
    add-int/lit8 v17, v17, 0x1

    .line 597
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmaDao getOneDaySleepList >>>> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x1

    if-le v15, v1, :cond_6

    .line 601
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    :goto_1
    return-object v12

    .line 568
    .end local v15    # "size":I
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    :cond_2
    new-instance v14, Lcom/smalife/db/entity/SleepEntity;

    invoke-direct {v14}, Lcom/smalife/db/entity/SleepEntity;-><init>()V

    .line 569
    .local v14, "se":Lcom/smalife/db/entity/SleepEntity;
    const-string v1, "action_time"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/smalife/db/entity/SleepEntity;->setActionTime(Ljava/lang/String;)V

    .line 570
    const-string v1, "sleep_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 571
    .local v16, "type":I
    const-string v1, "time_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 572
    .local v13, "mode":I
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/smalife/db/entity/SleepEntity;->setSleep_type(I)V

    .line 573
    invoke-virtual {v14, v13}, Lcom/smalife/db/entity/SleepEntity;->setSleep_model(I)V

    .line 574
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_3

    .line 575
    add-int/lit8 v17, v17, 0x1

    .line 577
    :cond_3
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    const/4 v1, 0x1

    if-ne v13, v1, :cond_4

    .line 578
    const/4 v10, 0x1

    .line 580
    :cond_4
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_5

    if-nez v13, :cond_5

    .line 581
    const/4 v11, 0x1

    .line 583
    :cond_5
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 601
    .end local v13    # "mode":I
    .end local v14    # "se":Lcom/smalife/db/entity/SleepEntity;
    .end local v16    # "type":I
    .restart local v15    # "size":I
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public getOneTrackLists(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;
    .locals 11
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/TrackEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    :cond_0
    const/4 v8, 0x0

    .line 1119
    :cond_1
    :goto_0
    return-object v8

    .line 1100
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    .local v8, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/TrackEntity;>;"
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1102
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 1103
    const-string v3, "user_account= ? and track_date = ? and track_time > ? and track_time < ? "

    .line 1105
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 1102
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1106
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1107
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1117
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1108
    :cond_3
    new-instance v6, Lcom/smalife/db/entity/TrackEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/TrackEntity;-><init>()V

    .line 1109
    .local v6, "bean":Lcom/smalife/db/entity/TrackEntity;
    const-string v1, "track_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setTrack_ID(J)V

    .line 1110
    const-string v1, "track_date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/TrackEntity;->setTrack_date(Ljava/lang/String;)V

    .line 1111
    const-string v1, "track_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setTrack_time(J)V

    .line 1112
    const-string v1, "track_lat"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setLatitude(D)V

    .line 1113
    const-string v1, "track_long"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setLongitude(D)V

    .line 1114
    const-string v1, "location_model"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/TrackEntity;->setLocationModel(I)V

    .line 1115
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getPeriodData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "start_date"    # Ljava/lang/String;
    .param p2, "end_date"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 136
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v8, v2

    .line 157
    :cond_1
    :goto_0
    return-object v8

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    .line 140
    const-string v3, "user_account= ? and count_date BETWEEN ? AND ? "

    .line 141
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v10

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    move-object v5, v2

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v8, "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    :cond_3
    new-instance v9, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v9}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 147
    .local v9, "sport":Lcom/smalife/db/entity/SportEntity;
    const-string v1, "calorie"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 148
    const-string v1, "steps"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 149
    const-string v1, "user_account"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setUserAccount(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v9, v10}, Lcom/smalife/db/entity/SportEntity;->setSprot_type(I)V

    .line 151
    const-string v1, "count_date"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "dateString":Ljava/lang/String;
    invoke-virtual {v9, v7}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 153
    const-string v1, "distance"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 154
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public getPeriodRateLists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "start_date"    # Ljava/lang/String;
    .param p3, "end_date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/RateEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1278
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v8, v2

    .line 1297
    :cond_1
    return-object v8

    .line 1281
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    .local v8, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/RateEntity;>;"
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1283
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 1284
    const-string v3, "user_account= ? and rate_date BETWEEN ? AND ? "

    .line 1285
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    move-object v5, v2

    .line 1283
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1286
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1287
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    new-instance v6, Lcom/smalife/db/entity/RateEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/RateEntity;-><init>()V

    .line 1289
    .local v6, "bean":Lcom/smalife/db/entity/RateEntity;
    const-string v1, "rate_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 1290
    const-string v1, "rate_date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_date(Ljava/lang/String;)V

    .line 1291
    const-string v1, "rate_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    .line 1292
    const-string v1, "rate_status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_status(I)V

    .line 1293
    const-string v1, "rate_value"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_value(I)V

    .line 1294
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/SleepStatusObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTodaySportListData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "today_date"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 167
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v8, v2

    .line 195
    :cond_1
    :goto_0
    return-object v8

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    .line 171
    const-string v3, "count_date= ? and user_account= ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v5, 0x1

    aput-object p2, v4, v5

    move-object v5, v2

    .line 170
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v8, "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    :cond_3
    new-instance v9, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v9}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 180
    .local v9, "sport":Lcom/smalife/db/entity/SportEntity;
    const-string v1, "calorie"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 181
    const-string v1, "steps"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 182
    const-string v1, "offset"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setOffSet(I)V

    .line 183
    const-string v1, "user_account"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setUserAccount(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v9, v10}, Lcom/smalife/db/entity/SportEntity;->setSprot_type(I)V

    .line 185
    const-string v1, "count_date"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "dateString":Ljava/lang/String;
    invoke-virtual {v9, v7}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 187
    const-string v1, "distance"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 188
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0
.end method

.method public getTodaySteps(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 199
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 201
    const-string v3, "count_date= ? and user_account = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v7

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 202
    const-string v5, "steps desc"

    .line 200
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    .line 209
    :goto_0
    return v1

    .line 206
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const-string v1, "steps"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v7

    .line 209
    goto :goto_0
.end method

.method public getUserInfo(Ljava/lang/String;)Lcom/smalife/db/entity/UserEntity;
    .locals 11
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 290
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v10, v2

    .line 307
    :cond_1
    :goto_0
    return-object v10

    .line 292
    :cond_2
    new-instance v10, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v10}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    .line 293
    .local v10, "user":Lcom/smalife/db/entity/UserEntity;
    iget-object v0, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v9

    .line 294
    .local v9, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v9}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    .line 295
    const-string v3, "user_account= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 294
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 296
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 298
    invoke-virtual {v10, p1}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 299
    const-string v0, "nickName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/smalife/db/entity/UserEntity;->setNickName(Ljava/lang/String;)V

    .line 300
    const-string v0, "client_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/smalife/db/entity/UserEntity;->setClient_id(Ljava/lang/String;)V

    .line 301
    const-string v0, "hight"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    .line 302
    const-string v0, "weight"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    .line 303
    const-string v0, "age"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/smalife/db/entity/UserEntity;->setAge(Ljava/lang/Integer;)V

    .line 304
    const-string v0, "sex"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 305
    const-string v0, "Adrress"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/smalife/db/entity/UserEntity;->setAddress(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public modifyAim(Ljava/lang/String;Lcom/smalife/db/entity/AimEntity;)Z
    .locals 8
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "aim"    # Lcom/smalife/db/entity/AimEntity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 378
    iget-object v5, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 380
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "userAccount"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v5, "distance"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getDistance()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 382
    const-string v5, "calories"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getCalories()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 383
    const-string v5, "steps"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getSteps()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v5, "sleep_long"

    invoke-virtual {p2}, Lcom/smalife/db/entity/AimEntity;->getSleeplong()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 385
    sget-object v5, Lcom/smalife/db/Sma$Aim;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "userAccount=?"

    .line 386
    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    .line 385
    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 387
    .local v1, "rt":I
    if-lez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public modifyClock(ILcom/smalife/entity/ClockEntity;)I
    .locals 8
    .param p1, "_id"    # I
    .param p2, "clock"    # Lcom/smalife/entity/ClockEntity;

    .prologue
    .line 977
    iget-object v3, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 978
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 979
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "user_account"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v3, "name"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getClockName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v3, "clock_time"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getClock_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v3, "clockOpen"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getOpenOrClose()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    const-string v3, "mon_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getMon_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 984
    const-string v3, "tues_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getTues_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 985
    const-string v3, "wes_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getWes_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    const-string v3, "thur_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getThur_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    const-string v3, "frid_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getFrid_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v3, "sta_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getSta_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string v3, "sun_day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getSun_day()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 990
    const-string v3, "year"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    const-string v3, "month"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getMonth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    const-string v3, "day"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    const-string v3, "repeat"

    invoke-virtual {p2}, Lcom/smalife/entity/ClockEntity;->getRepeat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 994
    sget-object v3, Lcom/smalife/db/Sma$Clock;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "clock_id= ? "

    .line 995
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 994
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 996
    .local v1, "rowAffect":I
    return v1
.end method

.method public modifyUserInfo(Ljava/lang/String;Lcom/smalife/db/entity/UserEntity;I)Z
    .locals 8
    .param p1, "userAccount"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/smalife/db/entity/UserEntity;
    .param p3, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 311
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 326
    :cond_1
    :goto_0
    return v3

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 314
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "user_account"

    invoke-virtual {p2}, Lcom/smalife/db/entity/UserEntity;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v5, "client_id"

    invoke-virtual {p2}, Lcom/smalife/db/entity/UserEntity;->getClient_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v5, "hight"

    invoke-virtual {p2}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v5, "weight"

    invoke-virtual {p2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 319
    const-string v5, "sex"

    invoke-virtual {p2}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v5, "age"

    invoke-virtual {p2}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v5, "header_url"

    invoke-virtual {p2}, Lcom/smalife/db/entity/UserEntity;->getHeader_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-nez p3, :cond_3

    .line 323
    const-string v5, "nickName"

    invoke-virtual {p2}, Lcom/smalife/db/entity/UserEntity;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_3
    sget-object v5, Lcom/smalife/db/Sma$Users;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "user_account= ? "

    .line 325
    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    .line 324
    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, "rt":I
    if-gtz v1, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public queryClockList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "userAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/ClockEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 930
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v8, v2

    .line 967
    :cond_1
    :goto_0
    return-object v8

    .line 932
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v8, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/ClockEntity;>;"
    iget-object v0, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v10

    .line 934
    .local v10, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v10}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "clock_tb"

    .line 935
    const-string v3, "user_account= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 934
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 936
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 937
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 939
    :cond_3
    new-instance v11, Lcom/smalife/entity/ClockEntity;

    invoke-direct {v11}, Lcom/smalife/entity/ClockEntity;-><init>()V

    .line 940
    .local v11, "entity":Lcom/smalife/entity/ClockEntity;
    const-string v0, "clock_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->set_id(I)V

    .line 941
    const-string v0, "user_account"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setAccount(Ljava/lang/String;)V

    .line 942
    const-string v0, "name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setClockName(Ljava/lang/String;)V

    .line 943
    const-string v0, "clockOpen"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setOpenOrClose(I)V

    .line 944
    const-string v0, "clock_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setClock_time(Ljava/lang/String;)V

    .line 946
    const-string v0, "mon_day"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setMon_day(I)V

    .line 947
    const-string v0, "tues_day"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setTues_day(I)V

    .line 948
    const-string v0, "wes_day"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setWes_day(I)V

    .line 949
    const-string v0, "thur_day"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setThur_day(I)V

    .line 950
    const-string v0, "frid_day"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setFrid_day(I)V

    .line 951
    const-string v0, "sta_day"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setSta_day(I)V

    .line 952
    const-string v0, "sun_day"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setSun_day(I)V

    .line 954
    const-string v0, "year"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setYear(I)V

    .line 955
    const-string v0, "month"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setMonth(I)V

    .line 956
    const-string v0, "day"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setDay(I)V

    .line 957
    const-string v0, "repeat"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/smalife/entity/ClockEntity;->setRepeat(I)V

    .line 959
    const-string v0, "ljh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clock_id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "clock_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 960
    const-string v2, "sync"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 965
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public setSlist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/SleepStatusObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, "slist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/SleepStatusObject;>;"
    iput-object p1, p0, Lcom/smalife/db/SmaDao;->slist:Ljava/util/ArrayList;

    .line 1031
    return-void
.end method

.method public syncAimStep(Ljava/lang/String;ILcom/smalife/db/entity/UserEntity;)V
    .locals 11
    .param p1, "user_account"    # Ljava/lang/String;
    .param p2, "steps"    # I
    .param p3, "user"    # Lcom/smalife/db/entity/UserEntity;

    .prologue
    .line 391
    iget-object v1, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 392
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "userAccount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    sget-object v1, Lcom/smalife/db/Sma$Aim;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "userAccount= ? "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 395
    const/4 v5, 0x0

    .line 394
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 396
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 397
    sget-object v1, Lcom/smalife/db/Sma$Aim;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "userAccount=?"

    .line 398
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 397
    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    new-instance v7, Lcom/smalife/db/entity/AimEntity;

    invoke-direct {v7}, Lcom/smalife/db/entity/AimEntity;-><init>()V

    .line 401
    .local v7, "entity":Lcom/smalife/db/entity/AimEntity;
    if-eqz p3, :cond_0

    .line 402
    invoke-virtual {p3}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 403
    const-wide v2, 0x3f4205bc01a36e2fL    # 5.5E-4

    invoke-virtual {p3}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 404
    .local v8, "mcalories":F
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    int-to-double v4, p2

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-float v9, v2

    .line 405
    .local v9, "mdistance":F
    invoke-virtual {v7, v8}, Lcom/smalife/db/entity/AimEntity;->setCalories(F)V

    .line 406
    invoke-virtual {v7, v9}, Lcom/smalife/db/entity/AimEntity;->setDistance(F)V

    .line 407
    invoke-virtual {v7, p2}, Lcom/smalife/db/entity/AimEntity;->setSteps(I)V

    .line 415
    :goto_1
    invoke-virtual {p0, p1, v7}, Lcom/smalife/db/SmaDao;->addAim(Ljava/lang/String;Lcom/smalife/db/entity/AimEntity;)V

    goto :goto_0

    .line 409
    .end local v8    # "mcalories":F
    .end local v9    # "mdistance":F
    :cond_2
    const-wide v2, 0x3f3e2584f4c6e6daL    # 4.6E-4

    invoke-virtual {p3}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 410
    .restart local v8    # "mcalories":F
    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    int-to-double v4, p2

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-float v9, v2

    .line 411
    .restart local v9    # "mdistance":F
    invoke-virtual {v7, v8}, Lcom/smalife/db/entity/AimEntity;->setCalories(F)V

    .line 412
    invoke-virtual {v7, v9}, Lcom/smalife/db/entity/AimEntity;->setDistance(F)V

    .line 413
    invoke-virtual {v7, p2}, Lcom/smalife/db/entity/AimEntity;->setSteps(I)V

    goto :goto_1
.end method

.method public syncSleepDataDown(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "userAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/db/entity/SleepEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "sleeplist":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/db/entity/SleepEntity;>;"
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    const-string v6, "delete from sleep where sleep_id = ? "

    .line 477
    .local v6, "sql":Ljava/lang/String;
    iget-object v8, p0, Lcom/smalife/db/SmaDao;->dbHelper:Lcom/smalife/db/DataBaseHelper;

    invoke-virtual {v8}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 478
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 479
    .local v7, "stat":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 480
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 484
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 485
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 487
    const-string v0, "insert into sleep(user_account,sleep_id,sleep_date,action_time,time_type,mac_Address,sync_status,sleep_type) values(?,?,?,?,?,?,?,?)"

    .line 488
    .local v0, "addSql":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 489
    .local v1, "addStat":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 490
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 506
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 507
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 480
    .end local v0    # "addSql":Ljava/lang/String;
    .end local v1    # "addStat":Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smalife/db/entity/SleepEntity;

    .line 481
    .local v3, "entity":Lcom/smalife/db/entity/SleepEntity;
    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/smalife/db/entity/SleepEntity;->getSleep_id()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 482
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_1

    .line 490
    .end local v3    # "entity":Lcom/smalife/db/entity/SleepEntity;
    .restart local v0    # "addSql":Ljava/lang/String;
    .restart local v1    # "addStat":Landroid/database/sqlite/SQLiteStatement;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smalife/db/entity/SleepEntity;

    .line 491
    .local v5, "s":Lcom/smalife/db/entity/SleepEntity;
    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/smalife/db/entity/SleepEntity;->getUserAccount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 492
    const/4 v9, 0x2

    invoke-virtual {v5}, Lcom/smalife/db/entity/SleepEntity;->getSleep_id()J

    move-result-wide v10

    invoke-virtual {v1, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 493
    const/4 v9, 0x3

    invoke-virtual {v5}, Lcom/smalife/db/entity/SleepEntity;->getSleep_date()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 494
    const/4 v9, 0x4

    invoke-virtual {v5}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 495
    const/4 v9, 0x5

    invoke-virtual {v5}, Lcom/smalife/db/entity/SleepEntity;->getSleep_model()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v1, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 496
    invoke-virtual {v5}, Lcom/smalife/db/entity/SleepEntity;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "mac_Address":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 498
    const/4 v9, 0x6

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 502
    :goto_3
    const/4 v9, 0x7

    const-wide/16 v10, 0x1

    invoke-virtual {v1, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 503
    const/16 v9, 0x8

    invoke-virtual {v5}, Lcom/smalife/db/entity/SleepEntity;->getSleep_type()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v1, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 504
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_2

    .line 500
    :cond_4
    const/4 v9, 0x6

    invoke-virtual {v5}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3
.end method

.method public updateHeaderIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 1040
    iget-object v2, p0, Lcom/smalife/db/SmaDao;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v0

    .line 1041
    .local v0, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update users set header_url = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1042
    const-string v3, "user_account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1041
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1044
    return-void
.end method
