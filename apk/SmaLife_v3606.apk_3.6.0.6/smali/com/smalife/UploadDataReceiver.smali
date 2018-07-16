.class public Lcom/smalife/UploadDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadDataReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/UploadDataReceiver$MyPayloadCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

.field context:Landroid/content/Context;

.field dao:Lcom/smalife/db/SmaDao;

.field preference:Landroid/content/SharedPreferences;

.field sendManager:Lcom/smalife/ablecloud/SendMsgManager;

.field userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sync_all(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "upload all"

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/smalife/UploadDataReceiver;->uploadRate(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/smalife/UploadDataReceiver;->uploadSport(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/smalife/UploadDataReceiver;->uploadSleep(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/smalife/UploadDataReceiver;->uploadClock(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/smalife/UploadDataReceiver;->uploadSma(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/smalife/UploadDataReceiver;->uploadMac(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private uploadClock(Ljava/lang/String;)V
    .locals 13
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v10

    .line 191
    .local v10, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v10}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 192
    const-string v1, "clock_tb"

    .line 193
    const-string v3, "user_account = ? and sync = 0"

    .line 194
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 191
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 195
    .local v12, "scursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v9, "clocklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/accloud/service/ACObject;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 197
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    :cond_0
    new-instance v8, Lcom/accloud/service/ACObject;

    invoke-direct {v8}, Lcom/accloud/service/ACObject;-><init>()V

    .line 200
    .local v8, "clock":Lcom/accloud/service/ACObject;
    const-string v0, "user_account"

    invoke-virtual {v8, v0, p1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 201
    sget-object v0, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 202
    const-string v0, ""

    sput-object v0, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    .line 204
    :cond_1
    const-string v0, "mac_Address"

    sget-object v1, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 205
    const-string v0, "clock_id"

    .line 206
    const-string v1, "clock_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 205
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 207
    const-string v0, "name"

    .line 208
    const-string v1, "name"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 207
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 209
    const-string v0, "clock_time"

    .line 210
    const-string v1, "clock_time"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 212
    const-string v0, "clockOpen"

    .line 213
    const-string v1, "clockOpen"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 212
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 214
    const-string v0, "repeat"

    .line 215
    const-string v1, "repeat"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 214
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 216
    const-string v0, "year"

    .line 217
    const-string v1, "year"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 216
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 218
    const-string v0, "month"

    .line 219
    const-string v1, "month"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 218
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 221
    const-string v0, "day"

    .line 222
    const-string v1, "day"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 221
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 223
    const-string v0, "mon_day"

    .line 224
    const-string v1, "mon_day"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 223
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 225
    const-string v0, "tues_day"

    .line 226
    const-string v1, "tues_day"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 225
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 227
    const-string v0, "wes_day"

    .line 228
    const-string v1, "wes_day"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 227
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 229
    const-string v0, "thur_day"

    .line 230
    const-string v1, "thur_day"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 229
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 232
    const-string v0, "frid_day"

    .line 233
    const-string v1, "frid_day"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 232
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 234
    const-string v0, "sta_day"

    .line 235
    const-string v1, "sta_day"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 234
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 236
    const-string v0, "sun_day"

    .line 237
    const-string v1, "sun_day"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 236
    invoke-virtual {v8, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 238
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    .end local v8    # "clock":Lcom/accloud/service/ACObject;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uploadClock>>>>count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 243
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 244
    new-instance v11, Lcom/accloud/service/ACMsg;

    invoke-direct {v11}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 245
    .local v11, "msg":Lcom/accloud/service/ACMsg;
    const-string v0, "sync_all"

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 246
    const-string v0, "clock_list"

    invoke-virtual {v11, v0, v9}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 247
    const-string v0, "user_account"

    invoke-virtual {v11, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 248
    new-instance v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v9}, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;-><init>(Lcom/smalife/UploadDataReceiver;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    .line 249
    iget-object v0, p0, Lcom/smalife/UploadDataReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    iget-object v1, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    invoke-virtual {v0, v11, v1}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 251
    .end local v11    # "msg":Lcom/accloud/service/ACMsg;
    :cond_3
    return-void
.end method

.method private uploadMac(Ljava/lang/String;)V
    .locals 6
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v3, "uploadMac"

    invoke-static {v3}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v4, "bondedDeviceAddress"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "mac":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v2, ""

    .line 292
    .local v2, "watch_type":Ljava/lang/String;
    iget-object v3, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v4, "chose_xiaoq"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    const-string v2, "SM05"

    .line 297
    :goto_1
    const-string v3, "\u540c\u6b65MAC\u5730\u5740\u6570\u636e\u5230\u670d\u52a1\u5668"

    invoke-static {v3}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/accloud/service/ACMsg;

    invoke-direct {v1}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 299
    .local v1, "syncMsg":Lcom/accloud/service/ACMsg;
    const-string v3, "setMacAddress"

    invoke-virtual {v1, v3}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 300
    const-string v3, "device_mac"

    invoke-virtual {v1, v3, v0}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 301
    const-string v3, "watch_type"

    invoke-virtual {v1, v3, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 302
    const-string v3, "user_account"

    invoke-virtual {v1, v3, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 304
    new-instance v3, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;-><init>(Lcom/smalife/UploadDataReceiver;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    .line 305
    iget-object v3, p0, Lcom/smalife/UploadDataReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    iget-object v4, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    invoke-virtual {v3, v1, v4}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    goto :goto_0

    .line 295
    .end local v1    # "syncMsg":Lcom/accloud/service/ACMsg;
    :cond_1
    const-string v2, "SM0204"

    goto :goto_1
.end method

.method private uploadRate(Ljava/lang/String;)V
    .locals 10
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v1, p0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    const-string v3, "user_account = ? and sync_status = 0 "

    .line 64
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v9, "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/accloud/service/ACObject;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    :cond_0
    new-instance v8, Lcom/accloud/service/ACObject;

    invoke-direct {v8}, Lcom/accloud/service/ACObject;-><init>()V

    .line 70
    .local v8, "rate":Lcom/accloud/service/ACObject;
    const-string v1, "user_account"

    .line 71
    const-string v2, "user_account"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 70
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 72
    const-string v1, "rate_date"

    .line 73
    const-string v2, "rate_date"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 72
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 74
    const-string v1, "rate_time"

    .line 75
    const-string v2, "rate_time"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 74
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 76
    const-string v1, "rate_value"

    .line 77
    const-string v2, "rate_value"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 76
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 78
    const-string v1, "rate_status"

    .line 79
    const-string v2, "rate_status"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 78
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 80
    const-string v1, "rate_id"

    .line 81
    const-string v2, "rate_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 80
    invoke-virtual {v8, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 82
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    .end local v8    # "rate":Lcom/accloud/service/ACObject;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uploadRate>>>>count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 98
    new-instance v7, Lcom/accloud/service/ACMsg;

    invoke-direct {v7}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 99
    .local v7, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "sync_all"

    invoke-virtual {v7, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 100
    const-string v1, "rate_list"

    invoke-virtual {v7, v1, v9}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 101
    const-string v1, "user_account"

    invoke-virtual {v7, v1, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 102
    new-instance v1, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, v9}, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;-><init>(Lcom/smalife/UploadDataReceiver;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    .line 103
    iget-object v1, p0, Lcom/smalife/UploadDataReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    iget-object v2, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    invoke-virtual {v1, v7, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 105
    .end local v7    # "msg":Lcom/accloud/service/ACMsg;
    :cond_2
    return-void
.end method

.method private uploadSleep(Ljava/lang/String;)V
    .locals 14
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v8

    .line 149
    .local v8, "dbHelper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v8}, Lcom/smalife/db/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    const-string v1, "sleep"

    .line 151
    const-string v3, "user_account = ? and sync_status = 0"

    .line 152
    new-array v4, v13, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 149
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 153
    .local v10, "scursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v12, "sleeplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/accloud/service/ACObject;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    :cond_0
    new-instance v11, Lcom/accloud/service/ACObject;

    invoke-direct {v11}, Lcom/accloud/service/ACObject;-><init>()V

    .line 158
    .local v11, "sleep":Lcom/accloud/service/ACObject;
    const-string v0, "user_account"

    .line 159
    const-string v1, "user_account"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 158
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 160
    const-string v0, "sleep_id"

    .line 161
    const-string v1, "sleep_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 160
    invoke-virtual {v11, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 162
    const-string v0, "mac_Address"

    .line 163
    const-string v1, "mac_Address"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 164
    const-string v0, "action_time"

    .line 165
    const-string v1, "action_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 164
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 166
    const-string v0, "insert_time"

    .line 167
    const-string v1, "insert_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 166
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 168
    const-string v0, "sleep_date"

    .line 169
    const-string v1, "sleep_date"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 168
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 170
    const-string v0, "time_type"

    .line 171
    const-string v1, "time_type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 170
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 172
    const-string v0, "sleep_type"

    .line 173
    const-string v1, "sleep_type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 174
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    .end local v11    # "sleep":Lcom/accloud/service/ACObject;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uploadSleep>>>>count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 179
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 180
    new-instance v9, Lcom/accloud/service/ACMsg;

    invoke-direct {v9}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 181
    .local v9, "msg":Lcom/accloud/service/ACMsg;
    const-string v0, "sync_all"

    invoke-virtual {v9, v0}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 182
    const-string v0, "sleep_list"

    invoke-virtual {v9, v0, v12}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 183
    const-string v0, "user_account"

    invoke-virtual {v9, v0, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 184
    new-instance v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    invoke-direct {v0, p0, v13, v12}, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;-><init>(Lcom/smalife/UploadDataReceiver;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    .line 185
    iget-object v0, p0, Lcom/smalife/UploadDataReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    iget-object v1, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    invoke-virtual {v0, v9, v1}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 187
    .end local v9    # "msg":Lcom/accloud/service/ACMsg;
    :cond_2
    return-void
.end method

.method private uploadSma(Ljava/lang/String;)V
    .locals 14
    .param p1, "user_account"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 254
    const-string v11, "uploadSma"

    invoke-static {v11}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 255
    iget-object v11, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v12, "long_sit_time"

    const/16 v13, 0x1e

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 256
    .local v6, "sitLong":I
    iget-object v11, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v12, "long_sit_start"

    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 257
    .local v1, "currentHour":I
    iget-object v11, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v12, "long_sit_end"

    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 258
    .local v2, "currentMinute":I
    iget-object v11, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v12, "msg_notic"

    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    move v5, v9

    .line 260
    .local v5, "msg_notic":I
    :goto_0
    iget-object v11, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v12, "call_notic"

    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    move v0, v9

    .line 262
    .local v0, "call_notic":I
    :goto_1
    iget-object v11, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v12, "long_sit"

    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    move v3, v9

    .line 263
    .local v3, "long_sit":I
    :goto_2
    iget-object v11, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v12, "lost_notice"

    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    move v4, v9

    .line 265
    .local v4, "lost_notice":I
    :goto_3
    iget-object v9, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v10, "long_sit_weekDays"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "weekString":Ljava/lang/String;
    new-instance v7, Lcom/accloud/service/ACMsg;

    invoke-direct {v7}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 267
    .local v7, "syncMsg":Lcom/accloud/service/ACMsg;
    const-string v9, "sync_sma_data"

    invoke-virtual {v7, v9}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 268
    const-string v9, "user_account"

    invoke-virtual {v7, v9, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 269
    sget-object v9, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 270
    const-string v9, ""

    sput-object v9, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    .line 272
    :cond_0
    const-string v9, "mac_address"

    sget-object v10, Lcom/smalife/ble/CmdKeyValue$BLE;->MacAddress:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 273
    const-string v9, "lost_open"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 274
    const-string v9, "msg_notic"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 275
    const-string v9, "tel_notic"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 276
    const-string v9, "long_sit_start"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 277
    const-string v9, "long_sit_end"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 278
    const-string v9, "weeks"

    invoke-virtual {v7, v9, v8}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 279
    const-string v9, "long_min"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 280
    const-string v9, "long_sit_open"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 281
    new-instance v9, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;-><init>(Lcom/smalife/UploadDataReceiver;ILjava/util/ArrayList;)V

    iput-object v9, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    .line 282
    iget-object v9, p0, Lcom/smalife/UploadDataReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    iget-object v10, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    invoke-virtual {v9, v7, v10}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 283
    return-void

    .end local v0    # "call_notic":I
    .end local v3    # "long_sit":I
    .end local v4    # "lost_notice":I
    .end local v5    # "msg_notic":I
    .end local v7    # "syncMsg":Lcom/accloud/service/ACMsg;
    .end local v8    # "weekString":Ljava/lang/String;
    :cond_1
    move v5, v10

    .line 259
    goto/16 :goto_0

    .restart local v5    # "msg_notic":I
    :cond_2
    move v0, v10

    .line 261
    goto/16 :goto_1

    .restart local v0    # "call_notic":I
    :cond_3
    move v3, v10

    .line 262
    goto/16 :goto_2

    .restart local v3    # "long_sit":I
    :cond_4
    move v4, v10

    .line 264
    goto/16 :goto_3
.end method

.method private uploadSport(Ljava/lang/String;)V
    .locals 12
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 108
    iget-object v1, p0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    .line 110
    const-string v3, "user_account = ? and sync_status = 0 "

    .line 111
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v5, v2

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v9, "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/accloud/service/ACObject;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 116
    :cond_0
    new-instance v10, Lcom/accloud/service/ACObject;

    invoke-direct {v10}, Lcom/accloud/service/ACObject;-><init>()V

    .line 117
    .local v10, "sport":Lcom/accloud/service/ACObject;
    const-string v1, "calorie"

    .line 118
    const-string v2, "calorie"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 117
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 119
    const-string v1, "steps"

    .line 120
    const-string v2, "steps"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 119
    invoke-virtual {v10, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 121
    const-string v1, "sport_id"

    .line 122
    const-string v2, "sport_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 121
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 123
    const-string v1, "user_account"

    .line 124
    const-string v2, "user_account"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 123
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 126
    const-string v1, "count_date"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 125
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "dateString":Ljava/lang/String;
    const-string v1, "count_date"

    invoke-virtual {v10, v1, v7}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 128
    const-string v1, "offset"

    .line 129
    const-string v2, "offset"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    invoke-virtual {v10, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 130
    const-string v1, "distance"

    .line 131
    const-string v2, "distance"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 130
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 132
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    .end local v7    # "dateString":Ljava/lang/String;
    .end local v10    # "sport":Lcom/accloud/service/ACObject;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uploadSport>>>>count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 138
    new-instance v8, Lcom/accloud/service/ACMsg;

    invoke-direct {v8}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 139
    .local v8, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "sync_all"

    invoke-virtual {v8, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 140
    const-string v1, "sport_list"

    invoke-virtual {v8, v1, v9}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 141
    const-string v1, "user_account"

    invoke-virtual {v8, v1, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 142
    new-instance v1, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    invoke-direct {v1, p0, v11, v9}, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;-><init>(Lcom/smalife/UploadDataReceiver;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    .line 143
    iget-object v1, p0, Lcom/smalife/UploadDataReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    iget-object v2, p0, Lcom/smalife/UploadDataReceiver;->callback:Lcom/smalife/UploadDataReceiver$MyPayloadCallback;

    invoke-virtual {v1, v8, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 145
    .end local v8    # "msg":Lcom/accloud/service/ACMsg;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurDate()I
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 520
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 521
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 522
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 523
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 524
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 525
    .local v1, "day":I
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 526
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 527
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 528
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    .line 43
    const-string v0, "sma"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    .line 44
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p1}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/UploadDataReceiver;->dao:Lcom/smalife/db/SmaDao;

    .line 45
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/UploadDataReceiver;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    .line 46
    const-string v0, "userAccount"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/UploadDataReceiver;->userAccount:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/smalife/UploadDataReceiver;->userAccount:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/smalife/UploadDataReceiver;->sync_all(Ljava/lang/String;)V

    .line 48
    return-void
.end method
