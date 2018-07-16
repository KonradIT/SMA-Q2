.class public Lcom/smalife/unitTest/DaoUnitTest;
.super Landroid/test/AndroidTestCase;
.source "DaoUnitTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public addRate()V
    .locals 6

    .prologue
    const-wide v4, 0x1253d19ab150L

    .line 241
    iget-object v2, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_account"

    const-string v3, "18620377910"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "rate_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    const-string v2, "rate_date"

    const-string v3, "2015-12-08"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "rate_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string v2, "rate_status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string v2, "rate_value"

    const/16 v3, 0x4d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v2, "sync_status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    sget-object v2, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 251
    return-void
.end method

.method public addSleep()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/smalife/db/SmaDao;

    iget-object v2, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    new-instance v1, Lcom/smalife/db/entity/SleepEntity;

    invoke-direct {v1}, Lcom/smalife/db/entity/SleepEntity;-><init>()V

    .line 50
    .local v1, "sleep":Lcom/smalife/db/entity/SleepEntity;
    const-string v2, "1352"

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SleepEntity;->setActionTime(Ljava/lang/String;)V

    .line 52
    const-string v2, "ljh"

    invoke-virtual {v0, v2, v1}, Lcom/smalife/db/SmaDao;->addSleepData(Ljava/lang/String;Lcom/smalife/db/entity/SleepEntity;)V

    .line 53
    return-void
.end method

.method public addSport()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/smalife/db/SmaDao;

    iget-object v2, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    new-instance v1, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v1}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 39
    .local v1, "sport":Lcom/smalife/db/entity/SportEntity;
    const-string v2, "ljh"

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SportEntity;->setUserAccount(Ljava/lang/String;)V

    .line 40
    const-string v2, "2015-04-28"

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 41
    const v2, 0x43ac8000    # 345.0f

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 42
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SportEntity;->setSportTime(I)V

    .line 43
    const/high16 v2, 0x436a0000    # 234.0f

    invoke-virtual {v1, v2}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 44
    const-string v2, "ljh"

    invoke-virtual {v0, v1, v2}, Lcom/smalife/db/SmaDao;->addSportData(Lcom/smalife/db/entity/SportEntity;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public addTrack()V
    .locals 6

    .prologue
    .line 204
    iget-object v2, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_account"

    const-string v3, "wsh"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "track_id"

    const-wide v4, 0x1253c6660caeL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v2, "track_lat"

    const-wide v4, 0x403638e368f08462L    # 22.22222

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 210
    const-string v2, "track_long"

    const-wide v4, 0x405d14e6fb4c3c19L    # 116.326598

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 211
    const-string v2, "location_model"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    sget-object v2, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 214
    return-void
.end method

.method public addTrackData()V
    .locals 6

    .prologue
    .line 296
    iget-object v2, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_account"

    const-string v3, "18620377910"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "track_id"

    const-wide v4, 0x1253d19aae56L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    const-string v2, "track_date"

    const-string v3, "2015-12-08"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v2, "track_time"

    const-string v3, "15:18:25"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v2, "track_lat"

    const-wide v4, 0x4037918aa8650e78L    # 23.568522

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 304
    const-string v2, "track_long"

    const-wide v4, 0x40461b31c219eb64L    # 44.212456

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 305
    const-string v2, "sync_status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v2, "location_model"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    sget-object v2, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 309
    return-void
.end method

.method public deleteTrack()V
    .locals 8

    .prologue
    .line 232
    iget-object v1, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    .line 234
    const-string v2, "track_id> ? and track_id < ?"

    .line 235
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-wide v6, 0x1253c665e9f2L

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-wide v6, 0x1253c6660465L

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 233
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public getAllClock()V
    .locals 5

    .prologue
    .line 179
    new-instance v1, Lcom/smalife/db/SmaDao;

    iget-object v2, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 180
    .local v1, "dao":Lcom/smalife/db/SmaDao;
    const-string v2, "18620377910"

    invoke-virtual {v1, v2}, Lcom/smalife/db/SmaDao;->queryClockList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/ClockEntity;>;"
    if-eqz v0, :cond_0

    .line 182
    const-string v2, "ljh"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clock list size : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-void
.end method

.method public getAllSleepData()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/smalife/unitTest/DaoUnitTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Sleep;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 190
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    :cond_0
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "User_Account : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "user_account"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sleepDate : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "sleep_date"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sleep_type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "sleep_type"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sleep_model : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "time_type"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action_time : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "action_time"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert_time : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "insert_time"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :cond_1
    return-void
.end method

.method public getAllUser()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/smalife/unitTest/DaoUnitTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Users;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 168
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    :cond_0
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nickName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "nickName"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "User_Account : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "user_account"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    :cond_1
    return-void
.end method

.method public getExerciseRateLists()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v1, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 275
    const-string v3, "user_account= ? and rate_date = ? and rate_status = ? and rate_time > ? and rate_time < ? "

    .line 277
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "18620377910"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "2015-12-08"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    sget v8, Lcom/smalife/db/entity/RateEntity;->STATUS_EXERCISE:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    .line 278
    const-wide v8, 0x1253d19aad7aL

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x4

    const-wide v8, 0x1253d19ab2f2L

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    .line 274
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 279
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 280
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    :cond_0
    return-void

    .line 281
    :cond_1
    new-instance v6, Lcom/smalife/db/entity/RateEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/RateEntity;-><init>()V

    .line 282
    .local v6, "bean":Lcom/smalife/db/entity/RateEntity;
    const-string v1, "rate_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 283
    const-string v1, "rate_date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_date(Ljava/lang/String;)V

    .line 284
    const-string v1, "rate_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    .line 285
    const-string v1, "rate_status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_status(I)V

    .line 286
    const-string v1, "rate_value"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_value(I)V

    .line 287
    const-string v1, "wsh"

    invoke-virtual {v6}, Lcom/smalife/db/entity/RateEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOneDayRateLists()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v1, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 255
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 256
    const-string v3, "user_account= ? and rate_date = ? "

    .line 257
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "18620377910"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "2015-12-13"

    aput-object v8, v4, v5

    move-object v5, v2

    .line 255
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 258
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 259
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    :cond_0
    return-void

    .line 260
    :cond_1
    new-instance v6, Lcom/smalife/db/entity/RateEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/RateEntity;-><init>()V

    .line 261
    .local v6, "bean":Lcom/smalife/db/entity/RateEntity;
    const-string v1, "rate_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_Id(J)V

    .line 262
    const-string v1, "rate_date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_date(Ljava/lang/String;)V

    .line 263
    const-string v1, "rate_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/RateEntity;->setRate_time(J)V

    .line 264
    const-string v1, "rate_status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_status(I)V

    .line 265
    const-string v1, "rate_value"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/RateEntity;->setRate_value(I)V

    .line 266
    const-string v1, "test"

    invoke-virtual {v6}, Lcom/smalife/db/entity/RateEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOneTrackLists()V
    .locals 12

    .prologue
    const-wide v10, 0x1253d19a8c39L

    const/4 v2, 0x0

    .line 312
    iget-object v1, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    .line 314
    const-string v3, "user_account= ? and track_date = ? and track_time BETWEEN ? AND ? "

    .line 315
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "18620377910"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "2015-12-08"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    .line 313
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 316
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 317
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    :cond_0
    return-void

    .line 318
    :cond_1
    new-instance v6, Lcom/smalife/db/entity/TrackEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/TrackEntity;-><init>()V

    .line 319
    .local v6, "bean":Lcom/smalife/db/entity/TrackEntity;
    const-string v1, "track_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setTrack_ID(J)V

    .line 320
    const-string v1, "track_date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/TrackEntity;->setTrack_date(Ljava/lang/String;)V

    .line 321
    const-string v1, "track_time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setTrack_time(J)V

    .line 322
    const-string v1, "track_lat"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setLatitude(D)V

    .line 323
    const-string v1, "track_long"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setLongitude(D)V

    .line 324
    const-string v1, "location_model"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/TrackEntity;->setLocationModel(I)V

    goto :goto_0
.end method

.method public getSleep()V
    .locals 7

    .prologue
    .line 157
    new-instance v0, Lcom/smalife/db/SmaDao;

    iget-object v4, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    const-string v4, "2015-05-20"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/smalife/db/SmaDao;->getOneDaySleepData(Ljava/lang/String;Ljava/lang/String;I)Lcom/smalife/db/entity/SleepEntity;

    move-result-object v1

    .line 159
    .local v1, "sleep":Lcom/smalife/db/entity/SleepEntity;
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/smalife/db/entity/SleepEntity;->getFallsleep_time()J

    move-result-wide v2

    .line 161
    .local v2, "fall_time":J
    const-string v4, "ljh"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fall sleep time : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v2    # "fall_time":J
    :cond_0
    return-void
.end method

.method public getTodaySportListData()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v1, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 131
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v8, "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------cursor num "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    :cond_0
    return-object v8

    .line 136
    :cond_1
    new-instance v9, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v9}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 137
    .local v9, "sport":Lcom/smalife/db/entity/SportEntity;
    const-string v1, "calorie"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 138
    const-string v1, "steps"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 139
    const-string v1, "offset"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 141
    const-string v1, "user_account"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setUserAccount(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setSprot_type(I)V

    .line 143
    const-string v1, "count_date"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "dateString":Ljava/lang/String;
    invoke-virtual {v9, v7}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 145
    const-string v1, "distance"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 146
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "countDate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/offset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offset"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/steps : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "steps"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    const-string v3, "/ User_Account\uff1b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user_account"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    const-string v3, "/ Sport_ID\uff1b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sport_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public insertUser()V
    .locals 4

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/smalife/unitTest/DaoUnitTest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 26
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user_account"

    const-string v3, "xy"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "weight"

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string v2, "sex"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    const-string v2, "client_id"

    const-string v3, "345sd0934roikeEx"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v2, Lcom/smalife/db/Sma$Users;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 32
    return-void
.end method

.method public queryTrack()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v1, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Track;->CONTENT_URI:Landroid/net/Uri;

    .line 218
    const-string v3, "user_account= ? and track_lat = ?"

    .line 219
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "wsh"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "201510201526"

    aput-object v8, v4, v5

    move-object v5, v2

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 220
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 221
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    return-void

    .line 222
    :cond_1
    new-instance v6, Lcom/smalife/db/entity/TrackEntity;

    invoke-direct {v6}, Lcom/smalife/db/entity/TrackEntity;-><init>()V

    .line 223
    .local v6, "bean":Lcom/smalife/db/entity/TrackEntity;
    const-string v1, "track_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setTrack_ID(J)V

    .line 224
    const-string v1, "track_lat"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setLatitude(D)V

    .line 225
    const-string v1, "track_long"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/smalife/db/entity/TrackEntity;->setLongitude(D)V

    .line 226
    const-string v1, "location_model"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/smalife/db/entity/TrackEntity;->setLocationModel(I)V

    .line 227
    const-string v1, "wsh"

    invoke-virtual {v6}, Lcom/smalife/db/entity/TrackEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public testDelete1()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/smalife/unitTest/DaoUnitTest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/smalife/db/Sma$Users;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 60
    .local v1, "rowAffect":I
    const-string v2, "rowAffect"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public testDelete2()V
    .locals 7

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/smalife/unitTest/DaoUnitTest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.sma.app.provider/users/1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "user_account = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "xy"

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "rowAffect":I
    const-string v2, "rowAffect"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public testQuery()V
    .locals 20

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v14

    .line 107
    .local v14, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v14}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "sleep"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "sleep_date,action_time asc "

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 108
    .local v12, "cursor":Landroid/database/Cursor;
    const-string v2, "ljh"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-------cursor num "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 110
    const/4 v2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 111
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    return-void

    .line 112
    :cond_1
    const-string v2, "user_account"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "User_Account":Ljava/lang/String;
    const-string v2, "sleep_date"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, "date":Ljava/lang/String;
    const-string v2, "sleep_type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 115
    .local v19, "type":Ljava/lang/String;
    const-string v2, "time_type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, "model":Ljava/lang/String;
    const-string v2, "action_time"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "time":Ljava/lang/String;
    const-string v2, "sleep_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 118
    .local v16, "sleep_id":J
    const-string v2, "smatest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "User_Account:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sleepData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/action_time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sleep_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public testUpdate()V
    .locals 7

    .prologue
    .line 81
    new-instance v1, Lcom/smalife/db/SmaDao;

    iget-object v5, p0, Lcom/smalife/unitTest/DaoUnitTest;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "dao":Lcom/smalife/db/SmaDao;
    new-instance v3, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v3}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    .line 83
    .local v3, "user":Lcom/smalife/db/entity/UserEntity;
    const-string v5, "ljh"

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 84
    const-string v5, "490ljiyDR934gjqweujim812"

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setClient_id(Ljava/lang/String;)V

    .line 85
    const-string v5, "\u8fc7\u9ad8\u8003"

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setNickName(Ljava/lang/String;)V

    .line 86
    const-string v2, "173"

    .line 87
    .local v2, "hight_v":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    .line 90
    :cond_0
    const-string v4, "67"

    .line 91
    .local v4, "weight_v":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    .line 94
    :cond_1
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 95
    const-string v0, "23"

    .line 96
    .local v0, "age":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setAge(Ljava/lang/Integer;)V

    .line 99
    :cond_2
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setAddress(Ljava/lang/String;)V

    .line 100
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/smalife/db/entity/UserEntity;->setHeader_url(Ljava/lang/String;)V

    .line 101
    const-string v5, "Welcome"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v6}, Lcom/smalife/db/SmaDao;->modifyUserInfo(Ljava/lang/String;Lcom/smalife/db/entity/UserEntity;I)Z

    .line 103
    return-void
.end method
