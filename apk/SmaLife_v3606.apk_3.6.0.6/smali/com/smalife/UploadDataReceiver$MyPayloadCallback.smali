.class Lcom/smalife/UploadDataReceiver$MyPayloadCallback;
.super Ljava/lang/Object;
.source "UploadDataReceiver.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/UploadDataReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPayloadCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# instance fields
.field sync:I

.field final synthetic this$0:Lcom/smalife/UploadDataReceiver;

.field uplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/accloud/service/ACObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/smalife/UploadDataReceiver;ILjava/util/ArrayList;)V
    .locals 0
    .param p2, "sync_type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/accloud/service/ACObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p3, "mlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/accloud/service/ACObject;>;"
    iput-object p1, p0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p2, p0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->sync:I

    .line 316
    iput-object p3, p0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    .line 317
    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 5
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 321
    iget v2, p0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->sync:I

    packed-switch v2, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    iget-object v2, v2, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    const-string v3, "hasLogin"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    iget-object v2, v2, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v1

    .line 342
    .local v1, "helper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v1}, Lcom/smalife/db/DataBaseHelper;->close()V

    .line 343
    iget-object v2, p0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    iget-object v2, v2, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/smalife/db/DataBaseHelper;->deleteDB(Landroid/content/Context;)Z

    move-result v0

    .line 344
    .local v0, "deleteDatabase":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UploadDatacReceiver>>>>\u9000\u51fa\u767b\u5f55 \u5220\u9664\u6570\u636e\u5e93---------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 346
    .end local v0    # "deleteDatabase":Z
    .end local v1    # "helper":Lcom/smalife/db/DataBaseHelper;
    :cond_0
    return-void

    .line 323
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync_sport>>>>errorCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    const-string v3, "    ,errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync_sleep>>>>errorCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 328
    const-string v3, "    ,errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync_clock>>>>errorCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 332
    const-string v3, "    ,errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync_rate>>>>errorCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 336
    const-string v3, "    ,errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 26
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->sync:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    const-string v20, "uploadSport>>>>success"

    invoke-static/range {v20 .. v20}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 355
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 356
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v17, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/accloud/service/ACObject;

    .line 358
    .local v16, "sport":Lcom/accloud/service/ACObject;
    const-string v21, "user_account"

    .line 359
    const-string v22, "user_account"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 358
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v21, "mac_Address"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 362
    .local v9, "macAddress":Ljava/lang/String;
    const-string v21, "mac_Address"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v21, "count_date"

    .line 364
    const-string v22, "count_date"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 363
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v21, "distance"

    .line 366
    const-string v22, "distance"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getFloat(Ljava/lang/String;)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    .line 365
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 367
    const-string v21, "offset"

    .line 368
    const-string v22, "offset"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 367
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v21, "calorie"

    .line 370
    const-string v22, "calorie"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getFloat(Ljava/lang/String;)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    .line 369
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 371
    const-string v21, "steps"

    .line 372
    const-string v22, "steps"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 371
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v21, "sync_status"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v21, "sport_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 375
    .local v18, "sport_id":J
    const-string v21, "sport_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    sget-object v21, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    .line 379
    const-string v22, "user_account= ? and mac_Address = ? and sport_id = ? "

    .line 382
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->userAccount:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v9, v23, v24

    const/16 v24, 0x2

    .line 383
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 376
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 388
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "macAddress":Ljava/lang/String;
    .end local v16    # "sport":Lcom/accloud/service/ACObject;
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "sport_id":J
    :pswitch_1
    const-string v20, "uploadSleep>>>>success"

    invoke-static/range {v20 .. v20}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 391
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 392
    .restart local v6    # "contentResolver":Landroid/content/ContentResolver;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .restart local v17    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/accloud/service/ACObject;

    .line 394
    .local v11, "sleep":Lcom/accloud/service/ACObject;
    const-string v21, "user_account"

    .line 395
    const-string v22, "user_account"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 394
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v21, "mac_Address"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 398
    .restart local v9    # "macAddress":Ljava/lang/String;
    const-string v21, "mac_Address"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v21, "sleep_date"

    .line 400
    const-string v22, "sleep_date"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 399
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v21, "action_time"

    .line 402
    const-string v22, "action_time"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 401
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    const-string v21, "sleep_type"

    .line 404
    const-string v22, "sleep_type"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 403
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string v21, "time_type"

    .line 406
    const-string v22, "time_type"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 405
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v21, "insert_time"

    .line 408
    const-string v22, "insert_time"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 407
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v21, "sync_status"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const-string v21, "sleep_id"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 411
    .local v14, "sleep_id":J
    const-string v21, "sleep_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    sget-object v21, Lcom/smalife/db/Sma$Sleep;->CONTENT_URI:Landroid/net/Uri;

    .line 415
    const-string v22, "user_account= ? and mac_Address = ? and sleep_id = ? "

    .line 418
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->userAccount:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v9, v23, v24

    const/16 v24, 0x2

    .line 419
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 412
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 424
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "macAddress":Ljava/lang/String;
    .end local v11    # "sleep":Lcom/accloud/service/ACObject;
    .end local v14    # "sleep_id":J
    .end local v17    # "values":Landroid/content/ContentValues;
    :pswitch_2
    const-string v20, "uploadClock>>>>success"

    invoke-static/range {v20 .. v20}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 427
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 428
    .restart local v6    # "contentResolver":Landroid/content/ContentResolver;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .restart local v17    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/accloud/service/ACObject;

    .line 430
    .local v4, "clock":Lcom/accloud/service/ACObject;
    const-string v21, "user_account"

    .line 431
    const-string v22, "user_account"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 430
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v21, "mac_Address"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 434
    .restart local v9    # "macAddress":Ljava/lang/String;
    const-string v21, "mac_Address"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v21, "clock_id"

    .line 436
    const-string v22, "clock_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 435
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v21, "clockOpen"

    .line 438
    const-string v22, "clockOpen"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 437
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string v21, "name"

    .line 440
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 439
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v21, "clock_time"

    .line 442
    const-string v22, "clock_time"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 441
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v21, "sync"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    const-string v21, "mon_day"

    .line 445
    const-string v22, "mon_day"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 444
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v21, "tues_day"

    .line 447
    const-string v22, "tues_day"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 446
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    const-string v21, "wes_day"

    .line 449
    const-string v22, "wes_day"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 448
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    const-string v21, "thur_day"

    .line 451
    const-string v22, "thur_day"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 450
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v21, "frid_day"

    .line 453
    const-string v22, "frid_day"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 452
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v21, "sta_day"

    .line 455
    const-string v22, "sta_day"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 454
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v21, "sun_day"

    .line 457
    const-string v22, "sun_day"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 456
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v21, "repeat"

    .line 459
    const-string v22, "repeat"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 458
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v21, "year"

    const-string v22, "year"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v21, "month"

    .line 462
    const-string v22, "month"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 461
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    const-string v21, "day"

    const-string v22, "day"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v21, "clock_id"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 466
    .local v5, "clock_id":I
    sget-object v21, Lcom/smalife/db/Sma$Clock;->CONTENT_URI:Landroid/net/Uri;

    .line 468
    const-string v22, "user_account= ? and mac_Address = ? and clock_id = ? "

    .line 471
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->userAccount:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v9, v23, v24

    const/16 v24, 0x2

    .line 472
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 465
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 477
    .end local v4    # "clock":Lcom/accloud/service/ACObject;
    .end local v5    # "clock_id":I
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "macAddress":Ljava/lang/String;
    .end local v17    # "values":Landroid/content/ContentValues;
    :pswitch_3
    const-string v20, "UploadDataReceiver>>>>\u624b\u8868\u8bbe\u5907\u540c\u6b65\u5b8c\u6210---------"

    invoke-static/range {v20 .. v20}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "hasLogin"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_1

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/smalife/db/DataBaseHelper;->getDataHelperInstance(Landroid/content/Context;)Lcom/smalife/db/DataBaseHelper;

    move-result-object v8

    .line 481
    .local v8, "helper":Lcom/smalife/db/DataBaseHelper;
    invoke-virtual {v8}, Lcom/smalife/db/DataBaseHelper;->close()V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/smalife/db/DataBaseHelper;->deleteDB(Landroid/content/Context;)Z

    move-result v7

    .line 483
    .local v7, "deleteDatabase":Z
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SmaSyncReceiver>>>>\u9000\u51fa\u767b\u5f55 \u5220\u9664\u6570\u636e\u5e93---------"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 483
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 486
    .end local v7    # "deleteDatabase":Z
    .end local v8    # "helper":Lcom/smalife/db/DataBaseHelper;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->preference:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "sync_day"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smalife/UploadDataReceiver;->getCurDate()I

    move-result v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 489
    :pswitch_4
    const-string v20, "uploadRate>>>>success"

    invoke-static/range {v20 .. v20}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 491
    .restart local v6    # "contentResolver":Landroid/content/ContentResolver;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 492
    .restart local v17    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->uplist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/accloud/service/ACObject;

    .line 493
    .local v10, "rate":Lcom/accloud/service/ACObject;
    const-string v21, "user_account"

    .line 494
    const-string v22, "user_account"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 493
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v21, "rate_id"

    const-string v22, "rate_id"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    const-string v21, "rate_date"

    .line 497
    const-string v22, "rate_date"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 496
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v21, "rate_time"

    .line 499
    const-string v22, "rate_time"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/accloud/service/ACObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 498
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v21, "rate_value"

    .line 501
    const-string v22, "rate_value"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 500
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v21, "rate_status"

    .line 503
    const-string v22, "rate_status"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/accloud/service/ACObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 502
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v21, "sync_status"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v21, "rate_id"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/accloud/service/ACObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 506
    .local v12, "rate_id":J
    sget-object v21, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 507
    const-string v22, "user_account= ? and rate_id = ? "

    .line 508
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->this$0:Lcom/smalife/UploadDataReceiver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/smalife/UploadDataReceiver;->userAccount:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 506
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/UploadDataReceiver$MyPayloadCallback;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
