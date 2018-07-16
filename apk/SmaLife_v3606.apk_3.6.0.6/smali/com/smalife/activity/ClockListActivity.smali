.class public Lcom/smalife/activity/ClockListActivity;
.super Landroid/app/Activity;
.source "ClockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/smalife/adapter/ClockAdapter;

.field private add_btn:Landroid/widget/ImageView;

.field application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageView;

.field private clist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/ClockEntity;",
            ">;"
        }
    .end annotation
.end field

.field private clistview:Landroid/widget/ListView;

.field private clockObserver:Landroid/database/ContentObserver;

.field private context:Landroid/content/Context;

.field private dao:Lcom/smalife/db/SmaDao;

.field private itemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private longListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private no_click:Landroid/widget/TextView;

.field private submit_btn:Landroid/widget/Button;

.field private userAccount:Ljava/lang/String;

.field private weekArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/smalife/activity/ClockListActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/smalife/activity/ClockListActivity$1;-><init>(Lcom/smalife/activity/ClockListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clockObserver:Landroid/database/ContentObserver;

    .line 117
    new-instance v0, Lcom/smalife/activity/ClockListActivity$2;

    invoke-direct {v0, p0}, Lcom/smalife/activity/ClockListActivity$2;-><init>(Lcom/smalife/activity/ClockListActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 131
    new-instance v0, Lcom/smalife/activity/ClockListActivity$3;

    invoke-direct {v0, p0}, Lcom/smalife/activity/ClockListActivity$3;-><init>(Lcom/smalife/activity/ClockListActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->longListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/ClockListActivity;)Lcom/smalife/db/SmaDao;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->dao:Lcom/smalife/db/SmaDao;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/ClockListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/ClockListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/activity/ClockListActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/ClockListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->no_click:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/ClockListActivity;)Lcom/smalife/adapter/ClockAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->adapter:Lcom/smalife/adapter/ClockAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/ClockListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/smalife/activity/ClockListActivity;->initClocks(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7(Lcom/smalife/activity/ClockListActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getBytesByClockList(Ljava/util/ArrayList;)[B
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/ClockEntity;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/ClockEntity;>;"
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v8, v0, [B

    .line 338
    .local v8, "extra":[B
    if-eqz p0, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_2

    .line 339
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v21, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_3

    .line 358
    const/4 v12, 0x0

    .line 359
    .local v12, "id":B
    const/16 v23, 0x7

    move/from16 v0, v23

    if-le v12, v0, :cond_1

    .line 360
    const/4 v12, 0x0

    .line 361
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v4, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_6

    .line 391
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v8, v0, [B

    .line 392
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_9

    .line 396
    .end local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v12    # "id":B
    .end local v13    # "j":I
    .end local v21    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    :cond_2
    return-object v8

    .line 340
    .restart local v21    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smalife/entity/ClockEntity;

    .line 341
    .local v3, "c":Lcom/smalife/entity/ClockEntity;
    invoke-virtual {v3}, Lcom/smalife/entity/ClockEntity;->getOpenOrClose()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 342
    new-instance v9, Lcom/smalife/adapter/TimeField;

    invoke-direct {v9}, Lcom/smalife/adapter/TimeField;-><init>()V

    .line 343
    .local v9, "field":Lcom/smalife/adapter/TimeField;
    invoke-virtual {v3}, Lcom/smalife/entity/ClockEntity;->getYear()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/smalife/adapter/TimeField;->setYear(B)V

    .line 344
    invoke-virtual {v3}, Lcom/smalife/entity/ClockEntity;->getMonth()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/smalife/adapter/TimeField;->setMonth(B)V

    .line 345
    invoke-virtual {v3}, Lcom/smalife/entity/ClockEntity;->getDay()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/smalife/adapter/TimeField;->setDay(B)V

    .line 346
    invoke-virtual {v3}, Lcom/smalife/entity/ClockEntity;->getRepeat()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/smalife/adapter/TimeField;->setRepeat(I)V

    .line 347
    invoke-virtual {v3}, Lcom/smalife/entity/ClockEntity;->getClockName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/smalife/adapter/TimeField;->tag:Ljava/lang/String;

    .line 348
    invoke-virtual {v3}, Lcom/smalife/entity/ClockEntity;->getClock_time()Ljava/lang/String;

    move-result-object v20

    .line 349
    .local v20, "timeString":Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    if-eqz v20, :cond_5

    .line 350
    :cond_4
    const-string v24, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 351
    .local v18, "t":[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v24, v18, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/smalife/adapter/TimeField;->setHour(B)V

    .line 352
    const/16 v24, 0x1

    aget-object v24, v18, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/smalife/adapter/TimeField;->setMintue(B)V

    .line 354
    .end local v18    # "t":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 362
    .end local v3    # "c":Lcom/smalife/entity/ClockEntity;
    .end local v9    # "field":Lcom/smalife/adapter/TimeField;
    .end local v20    # "timeString":Ljava/lang/String;
    .restart local v4    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v12    # "id":B
    :cond_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/smalife/adapter/TimeField;

    .line 363
    .local v19, "time":Lcom/smalife/adapter/TimeField;
    const/16 v23, 0x17

    move/from16 v0, v23

    new-array v5, v0, [B

    .line 364
    .local v5, "cmd_bytes":[B
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smalife/adapter/TimeField;->repeat:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 365
    .local v17, "repeat":B
    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/smalife/adapter/TimeField;->year:B

    move/from16 v22, v0

    .line 366
    .local v22, "year":B
    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/smalife/adapter/TimeField;->month:B

    move/from16 v16, v0

    .line 367
    .local v16, "month":B
    move-object/from16 v0, v19

    iget-byte v6, v0, Lcom/smalife/adapter/TimeField;->day:B

    .line 368
    .local v6, "day":B
    move-object/from16 v0, v19

    iget-byte v10, v0, Lcom/smalife/adapter/TimeField;->hour:B

    .line 369
    .local v10, "hour":B
    move-object/from16 v0, v19

    iget-byte v15, v0, Lcom/smalife/adapter/TimeField;->mintue:B

    .line 370
    .local v15, "min":B
    const/16 v23, 0x4

    aput-byte v17, v5, v23

    .line 371
    const/16 v23, 0x3

    shl-int/lit8 v25, v12, 0x3

    shl-int/lit8 v26, v15, 0x6

    or-int v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v5, v23

    .line 372
    const/16 v23, 0x2

    shl-int/lit8 v25, v10, 0x4

    shr-int/lit8 v26, v15, 0x2

    or-int v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v5, v23

    .line 373
    const/16 v23, 0x1

    shl-int/lit8 v25, v6, 0x1

    shl-int/lit8 v26, v16, 0x6

    or-int v25, v25, v26

    shr-int/lit8 v26, v10, 0x4

    or-int v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v5, v23

    .line 374
    const/16 v23, 0x0

    shl-int/lit8 v25, v22, 0x2

    shr-int/lit8 v26, v16, 0x2

    or-int v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v5, v23

    .line 377
    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/smalife/adapter/TimeField;->tag:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v25, "utf-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 378
    .local v2, "b":[B
    const/4 v11, 0x0

    .local v11, "i":I
    array-length v14, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v14, "l":I
    :goto_3
    if-lt v11, v14, :cond_7

    .line 385
    .end local v2    # "b":[B
    .end local v11    # "i":I
    .end local v14    # "l":I
    :goto_4
    array-length v0, v5

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_5
    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    .line 388
    add-int/lit8 v23, v12, 0x1

    move/from16 v0, v23

    int-to-byte v12, v0

    goto/16 :goto_1

    .line 379
    .restart local v2    # "b":[B
    .restart local v11    # "i":I
    .restart local v14    # "l":I
    :cond_7
    add-int/lit8 v23, v11, 0x5

    :try_start_1
    aget-byte v25, v2, v11

    aput-byte v25, v5, v23
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 381
    .end local v2    # "b":[B
    .end local v11    # "i":I
    .end local v14    # "l":I
    :catch_0
    move-exception v7

    .line 383
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 385
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_8
    aget-byte v3, v5, v23

    .line 386
    .local v3, "c":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 393
    .end local v3    # "c":B
    .end local v5    # "cmd_bytes":[B
    .end local v6    # "day":B
    .end local v10    # "hour":B
    .end local v15    # "min":B
    .end local v16    # "month":B
    .end local v17    # "repeat":B
    .end local v19    # "time":Lcom/smalife/adapter/TimeField;
    .end local v22    # "year":B
    .restart local v13    # "j":I
    :cond_9
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Byte;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Byte;->byteValue()B

    move-result v23

    aput-byte v23, v8, v13

    .line 392
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method private initClocks(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/ClockEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "clock_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/ClockEntity;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 297
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 298
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v6, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 316
    invoke-virtual {p0, v6}, Lcom/smalife/activity/ClockListActivity;->clockSetting(Ljava/util/List;)V

    .line 317
    iget-object v7, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setSelected(Z)V

    .line 318
    iget-object v7, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    iget-object v7, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 320
    const-wide/16 v8, 0xc8

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 321
    iget-object v7, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    iget-object v7, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setSelected(Z)V

    .line 323
    iget-object v7, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 334
    .end local v6    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    :goto_1
    return-void

    .line 299
    .restart local v6    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smalife/entity/ClockEntity;

    .line 300
    .local v1, "c":Lcom/smalife/entity/ClockEntity;
    invoke-virtual {v1}, Lcom/smalife/entity/ClockEntity;->getOpenOrClose()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 301
    new-instance v3, Lcom/smalife/adapter/TimeField;

    invoke-direct {v3}, Lcom/smalife/adapter/TimeField;-><init>()V

    .line 302
    .local v3, "field":Lcom/smalife/adapter/TimeField;
    invoke-virtual {v1}, Lcom/smalife/entity/ClockEntity;->getYear()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Lcom/smalife/adapter/TimeField;->setYear(B)V

    .line 303
    invoke-virtual {v1}, Lcom/smalife/entity/ClockEntity;->getMonth()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Lcom/smalife/adapter/TimeField;->setMonth(B)V

    .line 304
    invoke-virtual {v1}, Lcom/smalife/entity/ClockEntity;->getDay()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Lcom/smalife/adapter/TimeField;->setDay(B)V

    .line 305
    invoke-virtual {v1}, Lcom/smalife/entity/ClockEntity;->getRepeat()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Lcom/smalife/adapter/TimeField;->setRepeat(I)V

    .line 306
    invoke-virtual {v1}, Lcom/smalife/entity/ClockEntity;->getClockName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/smalife/adapter/TimeField;->tag:Ljava/lang/String;

    .line 307
    invoke-virtual {v1}, Lcom/smalife/entity/ClockEntity;->getClock_time()Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "timeString":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_3

    .line 309
    :cond_2
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "t":[Ljava/lang/String;
    aget-object v8, v4, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Lcom/smalife/adapter/TimeField;->setHour(B)V

    .line 311
    aget-object v8, v4, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Lcom/smalife/adapter/TimeField;->setMintue(B)V

    .line 313
    .end local v4    # "t":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 326
    .end local v1    # "c":Lcom/smalife/entity/ClockEntity;
    .end local v3    # "field":Lcom/smalife/adapter/TimeField;
    .end local v5    # "timeString":Ljava/lang/String;
    .end local v6    # "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/adapter/TimeField;>;"
    :cond_4
    const/4 v7, 0x2

    .line 327
    const/16 v8, 0x2c

    new-array v9, v10, [B

    .line 325
    invoke-static {v7, v8, v9}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v2

    .line 328
    .local v2, "cmd":[B
    new-instance v0, Landroid/content/Intent;

    const-string v7, "AskAction"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "askIntent":Landroid/content/Intent;
    const-string v7, "action_key"

    .line 330
    const/16 v8, 0x13

    .line 329
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v7, "clock_btyes"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockListActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private initUI()V
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/smalife/activity/ClockListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smalife/db/Sma$Clock;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/smalife/activity/ClockListActivity;->clockObserver:Landroid/database/ContentObserver;

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->back_btn:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->add_btn:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->back_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->add_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0e0072

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clistview:Landroid/widget/ListView;

    .line 106
    invoke-virtual {p0}, Lcom/smalife/activity/ClockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    const v1, 0x7f0b0020

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->weekArray:[Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/smalife/adapter/ClockAdapter;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/smalife/activity/ClockListActivity;->weekArray:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/smalife/adapter/ClockAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->adapter:Lcom/smalife/adapter/ClockAdapter;

    .line 109
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clistview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity;->adapter:Lcom/smalife/adapter/ClockAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clistview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clistview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity;->longListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 112
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->no_click:Landroid/widget/TextView;

    .line 115
    return-void
.end method


# virtual methods
.method public clockSetting(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/adapter/TimeField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "tlist":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/adapter/TimeField;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/ClockListActivity;->application:Lcom/smalife/MyApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v13

    .line 209
    .local v13, "isXiaoQ":Z
    if-eqz p1, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_9

    .line 211
    const/4 v12, 0x0

    .line 212
    .local v12, "id":B
    const/16 v21, 0x7

    move/from16 v0, v21

    if-le v12, v0, :cond_0

    .line 213
    const/4 v12, 0x0

    .line 214
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v5, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_2

    .line 250
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_1

    .line 251
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 252
    .local v7, "cmd_bytes":[B
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v14, v0, :cond_7

    .line 256
    if-eqz v13, :cond_8

    .line 258
    const/16 v21, 0x2

    .line 259
    const/16 v22, 0x2c

    .line 257
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v6

    .line 265
    .local v6, "cmd":[B
    :goto_2
    new-instance v2, Landroid/content/Intent;

    .line 266
    const-string v21, "AskAction"

    .line 265
    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, "askIntent":Landroid/content/Intent;
    const-string v21, "action_key"

    .line 268
    const/16 v22, 0x13

    .line 267
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v21, "clock_btyes"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smalife/activity/ClockListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    .end local v2    # "askIntent":Landroid/content/Intent;
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v6    # "cmd":[B
    .end local v7    # "cmd_bytes":[B
    .end local v12    # "id":B
    .end local v14    # "j":I
    :cond_1
    :goto_3
    return-void

    .line 215
    .restart local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v12    # "id":B
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/smalife/adapter/TimeField;

    .line 217
    .local v19, "time":Lcom/smalife/adapter/TimeField;
    if-eqz v13, :cond_4

    .line 218
    const/16 v21, 0x17

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 222
    .restart local v7    # "cmd_bytes":[B
    :goto_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smalife/adapter/TimeField;->repeat:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 223
    .local v18, "repeat":B
    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/smalife/adapter/TimeField;->year:B

    move/from16 v20, v0

    .line 224
    .local v20, "year":B
    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/smalife/adapter/TimeField;->month:B

    move/from16 v17, v0

    .line 225
    .local v17, "month":B
    move-object/from16 v0, v19

    iget-byte v8, v0, Lcom/smalife/adapter/TimeField;->day:B

    .line 226
    .local v8, "day":B
    move-object/from16 v0, v19

    iget-byte v10, v0, Lcom/smalife/adapter/TimeField;->hour:B

    .line 227
    .local v10, "hour":B
    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/smalife/adapter/TimeField;->mintue:B

    move/from16 v16, v0

    .line 228
    .local v16, "min":B
    const/16 v21, 0x4

    aput-byte v18, v7, v21

    .line 229
    const/16 v21, 0x3

    shl-int/lit8 v23, v12, 0x3

    shl-int/lit8 v24, v16, 0x6

    or-int v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v21

    .line 230
    const/16 v21, 0x2

    shl-int/lit8 v23, v10, 0x4

    shr-int/lit8 v24, v16, 0x2

    or-int v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v21

    .line 231
    const/16 v21, 0x1

    shl-int/lit8 v23, v8, 0x1

    shl-int/lit8 v24, v17, 0x6

    or-int v23, v23, v24

    shr-int/lit8 v24, v10, 0x4

    or-int v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v21

    .line 232
    const/16 v21, 0x0

    shl-int/lit8 v23, v20, 0x2

    shr-int/lit8 v24, v17, 0x2

    or-int v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v21

    .line 234
    if-eqz v13, :cond_3

    .line 236
    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/smalife/adapter/TimeField;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v23, "utf-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 237
    .local v3, "b":[B
    const/4 v11, 0x0

    .local v11, "i":I
    array-length v15, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v15, "l":I
    :goto_5
    if-lt v11, v15, :cond_5

    .line 245
    .end local v3    # "b":[B
    .end local v11    # "i":I
    .end local v15    # "l":I
    :cond_3
    :goto_6
    array-length v0, v7

    move/from16 v23, v0

    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 248
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    int-to-byte v12, v0

    goto/16 :goto_0

    .line 220
    .end local v7    # "cmd_bytes":[B
    .end local v8    # "day":B
    .end local v10    # "hour":B
    .end local v16    # "min":B
    .end local v17    # "month":B
    .end local v18    # "repeat":B
    .end local v20    # "year":B
    :cond_4
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v7, v0, [B

    .restart local v7    # "cmd_bytes":[B
    goto/16 :goto_4

    .line 238
    .restart local v3    # "b":[B
    .restart local v8    # "day":B
    .restart local v10    # "hour":B
    .restart local v11    # "i":I
    .restart local v15    # "l":I
    .restart local v16    # "min":B
    .restart local v17    # "month":B
    .restart local v18    # "repeat":B
    .restart local v20    # "year":B
    :cond_5
    add-int/lit8 v21, v11, 0x5

    :try_start_1
    aget-byte v23, v3, v11

    aput-byte v23, v7, v21
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 240
    .end local v3    # "b":[B
    .end local v11    # "i":I
    .end local v15    # "l":I
    :catch_0
    move-exception v9

    .line 241
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6

    .line 245
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    aget-byte v4, v7, v21

    .line 246
    .local v4, "c":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 253
    .end local v4    # "c":B
    .end local v8    # "day":B
    .end local v10    # "hour":B
    .end local v16    # "min":B
    .end local v17    # "month":B
    .end local v18    # "repeat":B
    .end local v19    # "time":Lcom/smalife/adapter/TimeField;
    .end local v20    # "year":B
    .restart local v14    # "j":I
    :cond_7
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Byte;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Byte;->byteValue()B

    move-result v21

    aput-byte v21, v7, v14

    .line 252
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 262
    :cond_8
    const/16 v21, 0x2

    .line 263
    const/16 v22, 0x2

    .line 261
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v6

    .restart local v6    # "cmd":[B
    goto/16 :goto_2

    .line 274
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v6    # "cmd":[B
    .end local v7    # "cmd_bytes":[B
    .end local v12    # "id":B
    .end local v14    # "j":I
    :cond_9
    if-eqz v13, :cond_a

    .line 276
    const/16 v21, 0x2

    .line 277
    const/16 v22, 0x2c

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 275
    invoke-static/range {v21 .. v23}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v6

    .line 283
    .restart local v6    # "cmd":[B
    :goto_8
    new-instance v2, Landroid/content/Intent;

    const-string v21, "AskAction"

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .restart local v2    # "askIntent":Landroid/content/Intent;
    const-string v21, "action_key"

    .line 285
    const/16 v22, 0x13

    .line 284
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v21, "clock_btyes"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 287
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smalife/activity/ClockListActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 280
    .end local v2    # "askIntent":Landroid/content/Intent;
    .end local v6    # "cmd":[B
    :cond_a
    const/16 v21, 0x2

    .line 281
    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 279
    invoke-static/range {v21 .. v23}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v6

    .restart local v6    # "cmd":[B
    goto :goto_8
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 181
    :sswitch_0
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 182
    new-instance v0, Landroid/content/Intent;

    .line 183
    const-class v1, Lcom/smalife/activity/ClockSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    :sswitch_1
    invoke-virtual {p0}, Lcom/smalife/activity/ClockListActivity;->finish()V

    goto :goto_0

    .line 191
    :sswitch_2
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v0, v0, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/smalife/activity/ClockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    const/4 v1, 0x0

    .line 192
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smalife/db/SmaDao;->queryClockList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_1
        0x7f0e002c -> :sswitch_2
        0x7f0e0071 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockListActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/smalife/activity/ClockListActivity;->initUI()V

    .line 81
    invoke-virtual {p0}, Lcom/smalife/activity/ClockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->application:Lcom/smalife/MyApplication;

    .line 82
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->userAccount:Ljava/lang/String;

    .line 83
    iput-object p0, p0, Lcom/smalife/activity/ClockListActivity;->context:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->no_click:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 87
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smalife/db/SmaDao;->queryClockList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    .line 88
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->no_click:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->adapter:Lcom/smalife/adapter/ClockAdapter;

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/smalife/adapter/ClockAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 95
    iget-object v0, p0, Lcom/smalife/activity/ClockListActivity;->submit_btn:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    invoke-virtual {p0}, Lcom/smalife/activity/ClockListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/ClockListActivity;->clockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    return-void
.end method
