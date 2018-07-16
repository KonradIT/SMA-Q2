.class public Lcom/smalife/NotificationService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationService.java"


# static fields
.field private static final NOTIFICATION_CONTENT_TYPE:I = 0xa

.field private static final NOTIFICATION_TITLE_TYPE:I = 0x9

.field private static final SMS:[Ljava/lang/String;


# instance fields
.field private mReceiveTime:J

.field private message:Ljava/lang/String;

.field preferences:Landroid/content/SharedPreferences;

.field private smsID:Ljava/lang/String;

.field private tittle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 46
    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sonyericsson.conversations"

    aput-object v2, v0, v1

    .line 45
    sput-object v0, Lcom/smalife/NotificationService;->SMS:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/NotificationService;->tittle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/NotificationService;->message:Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smalife/NotificationService;->mReceiveTime:J

    .line 33
    return-void
.end method

.method private getNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 232
    const-string v8, ""

    .line 233
    .local v8, "name":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 234
    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 236
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/smalife/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "data1 = \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 240
    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 236
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 254
    :goto_0
    return-object v4

    .line 246
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 247
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 250
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 251
    .local v9, "nameFieldColumnIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 252
    goto :goto_0

    .end local v9    # "nameFieldColumnIndex":I
    :cond_1
    move-object v4, v8

    .line 254
    goto :goto_0
.end method


# virtual methods
.method public getNotificationText(Landroid/app/Notification;)[Ljava/lang/String;
    .locals 29
    .param p1, "notification"    # Landroid/app/Notification;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 259
    const/16 v20, 0x0

    .line 260
    .local v20, "textArray":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 261
    .local v17, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v17, :cond_1

    .line 262
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .end local v20    # "textArray":[Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, ""

    aput-object v25, v20, v24

    const/16 v24, 0x1

    const-string v25, ""

    aput-object v25, v20, v24

    .line 330
    .restart local v20    # "textArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v9, v0, [Ljava/lang/String;

    .line 331
    .local v9, "bigTextArray":[Ljava/lang/String;
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x13

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_10

    .line 332
    const-string v4, "android.title"

    .line 333
    .local v4, "EXTRA_TITLE":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ".big"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "EXTRA_TITLE_BIG":Ljava/lang/String;
    const-string v3, "android.bigText"

    .line 335
    .local v3, "EXTRA_BIG_TEXT":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v24, v0

    .line 336
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 337
    .local v13, "mBigTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v24, v0

    .line 338
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 339
    .local v12, "mBigText":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 340
    const/16 v24, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v24

    .line 347
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 348
    const/16 v24, 0x1

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v24

    .line 366
    .end local v3    # "EXTRA_BIG_TEXT":Ljava/lang/String;
    .end local v4    # "EXTRA_TITLE":Ljava/lang/String;
    .end local v5    # "EXTRA_TITLE_BIG":Ljava/lang/String;
    .end local v9    # "bigTextArray":[Ljava/lang/String;
    .end local v12    # "mBigText":Ljava/lang/CharSequence;
    .end local v13    # "mBigTitle":Ljava/lang/CharSequence;
    :goto_2
    return-object v9

    .line 264
    :cond_1
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v19, "text":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_0
    const-class v24, Landroid/widget/RemoteViews;

    .line 267
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    .line 266
    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 268
    .local v18, "remoteViewsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v16

    .line 270
    .local v16, "outerFields":[Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 271
    .local v7, "actionField":Ljava/lang/reflect/Field;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    .line 277
    :goto_4
    if-nez v7, :cond_4

    .line 278
    const/4 v9, 0x0

    goto :goto_2

    .line 271
    :cond_2
    aget-object v15, v16, v24

    .line 272
    .local v15, "outerField":Ljava/lang/reflect/Field;
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v26

    const-string v27, "mActions"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 273
    move-object v7, v15

    .line 274
    goto :goto_4

    .line 271
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 280
    .end local v15    # "outerField":Ljava/lang/reflect/Field;
    :cond_4
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 282
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 281
    check-cast v8, Ljava/util/ArrayList;

    .line 283
    .local v8, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v23, 0x0

    .line 284
    .local v23, "viewId":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    if-nez v24, :cond_6

    .line 323
    .end local v7    # "actionField":Ljava/lang/reflect/Field;
    .end local v8    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v16    # "outerFields":[Ljava/lang/reflect/Field;
    .end local v18    # "remoteViewsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "viewId":I
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "textArray":[Ljava/lang/String;
    check-cast v20, [Ljava/lang/String;

    .line 324
    .restart local v20    # "textArray":[Ljava/lang/String;
    if-nez v20, :cond_0

    .line 325
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .end local v20    # "textArray":[Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, ""

    aput-object v25, v20, v24

    const/16 v24, 0x1

    const-string v25, ""

    aput-object v25, v20, v24

    .restart local v20    # "textArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 284
    .restart local v7    # "actionField":Ljava/lang/reflect/Field;
    .restart local v8    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v16    # "outerFields":[Ljava/lang/reflect/Field;
    .restart local v18    # "remoteViewsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "viewId":I
    :cond_6
    :try_start_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 288
    .local v6, "action":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 291
    .local v11, "innerFields":[Ljava/lang/reflect/Field;
    const/16 v22, 0x0

    .line 292
    .local v22, "value":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 293
    .local v21, "type":Ljava/lang/Integer;
    array-length v0, v11

    move/from16 v26, v0

    const/16 v24, 0x0

    .end local v22    # "value":Ljava/lang/Object;
    :goto_6
    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    .line 309
    if-eqz v21, :cond_5

    .line 310
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v26, 0x9

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v26, 0xa

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 311
    :cond_7
    if-eqz v22, :cond_5

    .line 312
    add-int/lit8 v23, v23, 0x1

    .line 313
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    goto :goto_5

    .line 293
    :cond_8
    aget-object v10, v11, v24

    .line 294
    .local v10, "field":Ljava/lang/reflect/Field;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 295
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 296
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 293
    :cond_9
    :goto_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 297
    :cond_a
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "type"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 298
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 299
    goto :goto_7

    :cond_b
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "methodName"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 300
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 301
    .local v14, "method":Ljava/lang/String;
    const-string v27, "setProgress"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v27

    if-eqz v27, :cond_9

    .line 302
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 341
    .end local v6    # "action":Ljava/lang/Object;
    .end local v7    # "actionField":Ljava/lang/reflect/Field;
    .end local v8    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "innerFields":[Ljava/lang/reflect/Field;
    .end local v14    # "method":Ljava/lang/String;
    .end local v16    # "outerFields":[Ljava/lang/reflect/Field;
    .end local v18    # "remoteViewsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "text":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v21    # "type":Ljava/lang/Integer;
    .end local v23    # "viewId":I
    .restart local v3    # "EXTRA_BIG_TEXT":Ljava/lang/String;
    .restart local v4    # "EXTRA_TITLE":Ljava/lang/String;
    .restart local v5    # "EXTRA_TITLE_BIG":Ljava/lang/String;
    .restart local v9    # "bigTextArray":[Ljava/lang/String;
    .restart local v12    # "mBigText":Ljava/lang/CharSequence;
    .restart local v13    # "mBigTitle":Ljava/lang/CharSequence;
    :cond_c
    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_d

    .line 342
    const/16 v24, 0x0

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 343
    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-object v25, v20, v25

    aput-object v25, v9, v24

    goto/16 :goto_1

    .line 345
    :cond_d
    const/16 v24, 0x0

    const-string v25, ""

    aput-object v25, v9, v24

    goto/16 :goto_1

    .line 349
    :cond_e
    if-eqz v20, :cond_f

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 350
    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 351
    const/16 v24, 0x1

    const/16 v25, 0x1

    aget-object v25, v20, v25

    aput-object v25, v9, v24

    goto/16 :goto_2

    .line 353
    :cond_f
    const/16 v24, 0x1

    const-string v25, ""

    aput-object v25, v9, v24

    goto/16 :goto_2

    .line 357
    .end local v3    # "EXTRA_BIG_TEXT":Ljava/lang/String;
    .end local v4    # "EXTRA_TITLE":Ljava/lang/String;
    .end local v5    # "EXTRA_TITLE_BIG":Ljava/lang/String;
    .end local v12    # "mBigText":Ljava/lang/CharSequence;
    .end local v13    # "mBigTitle":Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v9, v20

    goto/16 :goto_2

    .line 320
    .end local v9    # "bigTextArray":[Ljava/lang/String;
    .restart local v19    # "text":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v24

    goto/16 :goto_5
.end method

.method public getProgramNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 170
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 174
    .local v1, "name":Ljava/lang/String;
    const/16 v3, 0x80

    .line 173
    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 174
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "targetValue"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 61
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onNotificationPosted "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 66
    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v4, "sma"

    invoke-virtual {p0, v4, v6}, Lcom/smalife/NotificationService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/smalife/NotificationService;->preferences:Landroid/content/SharedPreferences;

    .line 71
    iget-object v4, p0, Lcom/smalife/NotificationService;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {p0, p0, v1}, Lcom/smalife/NotificationService;->getProgramNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/smalife/NotificationService;->tittle:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, v0}, Lcom/smalife/NotificationService;->getNotificationText(Landroid/app/Notification;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/smalife/NotificationService;->message:Ljava/lang/String;

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    .local v2, "now":J
    iget-wide v4, p0, Lcom/smalife/NotificationService;->mReceiveTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 77
    iput-wide v2, p0, Lcom/smalife/NotificationService;->mReceiveTime:J

    .line 78
    invoke-virtual {p0}, Lcom/smalife/NotificationService;->sendMessage()V

    goto :goto_0

    .line 80
    .end local v2    # "now":J
    :cond_2
    sget-object v4, Lcom/smalife/NotificationService;->SMS:[Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/smalife/NotificationService;->isContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/smalife/NotificationService;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "msg_notic"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/smalife/NotificationService;->getNotificationText(Landroid/app/Notification;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/smalife/NotificationService;->message:Ljava/lang/String;

    .line 84
    const-string v4, ""

    iput-object v4, p0, Lcom/smalife/NotificationService;->tittle:Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    .restart local v2    # "now":J
    iget-wide v4, p0, Lcom/smalife/NotificationService;->mReceiveTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 87
    iput-wide v2, p0, Lcom/smalife/NotificationService;->mReceiveTime:J

    .line 88
    invoke-virtual {p0}, Lcom/smalife/NotificationService;->sendMessage()V

    goto :goto_0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 184
    return-void
.end method

.method public sendMessage()V
    .locals 14

    .prologue
    const/16 v13, 0xc8

    const/16 v12, 0x10

    .line 99
    new-array v9, v12, [B

    .line 100
    .local v9, "tittle_cmd":[B
    const/4 v6, 0x0

    .line 101
    .local v6, "message_cmd":[B
    const/4 v7, 0x0

    .line 102
    .local v7, "t_cmd":[B
    const/4 v3, 0x0

    .line 104
    .local v3, "m_cmd":[B
    :try_start_0
    iget-object v10, p0, Lcom/smalife/NotificationService;->tittle:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 105
    iget-object v10, p0, Lcom/smalife/NotificationService;->message:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 110
    :goto_0
    if-eqz v7, :cond_0

    array-length v10, v7

    if-lez v10, :cond_0

    .line 111
    array-length v10, v7

    if-gt v10, v12, :cond_4

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v7

    if-lt v2, v10, :cond_3

    .line 121
    .end local v2    # "i":I
    :cond_0
    if-eqz v3, :cond_2

    array-length v10, v3

    if-lez v10, :cond_2

    .line 122
    array-length v10, v3

    if-le v10, v13, :cond_6

    .line 123
    new-array v6, v13, [B

    .line 124
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-lt v2, v13, :cond_5

    .line 137
    :cond_1
    array-length v8, v9

    .line 138
    .local v8, "t_length":I
    array-length v4, v6

    .line 140
    .local v4, "m_length":I
    add-int v10, v8, v4

    new-array v0, v10, [B

    .line 142
    .local v0, "cmd":[B
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v8, :cond_7

    .line 145
    const/4 v2, 0x0

    :goto_4
    if-lt v2, v4, :cond_8

    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "NotificationService >>>> sendMessage = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/smalife/NotificationService;->tittle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/smalife/NotificationService;->message:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 149
    new-instance v5, Landroid/content/Intent;

    const-string v10, "AskAction"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v5, "messageIntent":Landroid/content/Intent;
    const-string v10, "action_key"

    .line 151
    const/16 v11, 0x33

    .line 150
    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v10, "message_btyes"

    invoke-virtual {v5, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v5}, Lcom/smalife/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    .end local v0    # "cmd":[B
    .end local v2    # "i":I
    .end local v4    # "m_length":I
    .end local v5    # "messageIntent":Landroid/content/Intent;
    .end local v8    # "t_length":I
    :cond_2
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    :cond_3
    aget-byte v10, v7, v2

    aput-byte v10, v9, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v12, :cond_0

    .line 117
    aget-byte v10, v7, v2

    aput-byte v10, v9, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 125
    :cond_5
    aget-byte v10, v3, v2

    aput-byte v10, v6, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 128
    .end local v2    # "i":I
    :cond_6
    array-length v10, v3

    new-array v6, v10, [B

    .line 129
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    array-length v10, v3

    if-ge v2, v10, :cond_1

    .line 130
    aget-byte v10, v3, v2

    aput-byte v10, v6, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 143
    .restart local v0    # "cmd":[B
    .restart local v4    # "m_length":I
    .restart local v8    # "t_length":I
    :cond_7
    aget-byte v10, v9, v2

    aput-byte v10, v0, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 146
    :cond_8
    add-int/lit8 v10, v2, 0x10

    aget-byte v11, v6, v2

    aput-byte v11, v0, v10

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public showSms()V
    .locals 11

    .prologue
    .line 191
    const/4 v8, 0x0

    .line 193
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/smalife/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 195
    const-string v5, "_id desc"

    .line 193
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 196
    if-eqz v8, :cond_1

    .line 197
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 224
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_2
    :goto_1
    return-void

    .line 198
    :cond_3
    :try_start_1
    const-string v0, "body"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "msgbody":Ljava/lang/String;
    const-string v0, "address"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "address":Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "ID":Ljava/lang/String;
    iget-object v0, p0, Lcom/smalife/NotificationService;->smsID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iput-object v6, p0, Lcom/smalife/NotificationService;->smsID:Ljava/lang/String;

    .line 206
    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    .line 209
    invoke-direct {p0, v7}, Lcom/smalife/NotificationService;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "nameByNumber":Ljava/lang/String;
    if-eqz v10, :cond_4

    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 213
    move-object v7, v10

    .line 215
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/NotificationService;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    .end local v6    # "ID":Ljava/lang/String;
    .end local v7    # "address":Ljava/lang/String;
    .end local v9    # "msgbody":Ljava/lang/String;
    .end local v10    # "nameByNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    if-eqz v8, :cond_2

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    if-eqz v8, :cond_5

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_5
    throw v0
.end method
