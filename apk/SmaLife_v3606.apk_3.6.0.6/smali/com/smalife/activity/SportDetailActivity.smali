.class public Lcom/smalife/activity/SportDetailActivity;
.super Lcom/smalife/BaseActivity;
.source "SportDetailActivity.java"


# instance fields
.field private aim_num:Landroid/widget/TextView;

.field private aim_total:I

.field private back_btn:Landroid/widget/ImageButton;

.field private carlor_num:F

.field private carlories:Landroid/widget/TextView;

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation
.end field

.field private dao:Lcom/smalife/db/SmaDao;

.field private data_type:I

.field dayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation
.end field

.field private dis_num:F

.field private distance:Landroid/widget/TextView;

.field private final draw_msg:I

.field private end_date:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private linechat:Lcom/smalife/utils/LineChartView;

.field private mApplication:Lcom/smalife/MyApplication;

.field private mSteps:Landroid/widget/TextView;

.field pointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation
.end field

.field private pointliList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/utils/SportPoint;",
            ">;"
        }
    .end annotation
.end field

.field screenHeight:I

.field screenWidth:I

.field splist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation
.end field

.field private start_date:Ljava/lang/String;

.field stepComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation
.end field

.field private step_num:F

.field private tenDay_btn:Landroid/widget/Button;

.field private todayString:Ljava/lang/String;

.field private today_btn:Landroid/widget/Button;

.field private week_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 34
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->pointList:Ljava/util/ArrayList;

    .line 219
    iput v1, p0, Lcom/smalife/activity/SportDetailActivity;->draw_msg:I

    .line 220
    iput v1, p0, Lcom/smalife/activity/SportDetailActivity;->data_type:I

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->pointliList:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Lcom/smalife/activity/SportDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SportDetailActivity$1;-><init>(Lcom/smalife/activity/SportDetailActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->handler:Landroid/os/Handler;

    .line 415
    new-instance v0, Lcom/smalife/activity/SportDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SportDetailActivity$2;-><init>(Lcom/smalife/activity/SportDetailActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->comparator:Ljava/util/Comparator;

    .line 427
    new-instance v0, Lcom/smalife/activity/SportDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SportDetailActivity$3;-><init>(Lcom/smalife/activity/SportDetailActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->stepComparator:Ljava/util/Comparator;

    .line 439
    new-instance v0, Lcom/smalife/activity/SportDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SportDetailActivity$4;-><init>(Lcom/smalife/activity/SportDetailActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->dayComparator:Ljava/util/Comparator;

    .line 34
    return-void
.end method

.method private TestData(I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v2, "splist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SportEntity;>;"
    if-nez p1, :cond_e

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x60

    if-lt v1, v4, :cond_1

    .line 368
    .end local v1    # "i":I
    :cond_0
    return-object v2

    .line 277
    .restart local v1    # "i":I
    :cond_1
    new-instance v3, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v3}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 278
    .local v3, "sport":Lcom/smalife/db/entity/SportEntity;
    if-gt v1, v9, :cond_3

    .line 280
    invoke-virtual {v3, v8}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 329
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Lcom/smalife/db/entity/SportEntity;->setOffSet(I)V

    .line 330
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_3
    if-gt v1, v10, :cond_4

    if-gt v1, v9, :cond_2

    .line 283
    :cond_4
    if-gt v1, v11, :cond_5

    if-le v1, v10, :cond_5

    .line 284
    mul-int/lit8 v4, v1, 0x50

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    goto :goto_1

    .line 286
    :cond_5
    if-gt v1, v12, :cond_6

    if-le v1, v11, :cond_6

    .line 288
    invoke-virtual {v3, v8}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    goto :goto_1

    .line 289
    :cond_6
    const/16 v4, 0x28

    if-gt v1, v4, :cond_7

    if-le v1, v12, :cond_7

    .line 291
    invoke-virtual {v3, v8}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    goto :goto_1

    .line 292
    :cond_7
    const/16 v4, 0x30

    if-gt v1, v4, :cond_8

    const/16 v4, 0x28

    if-le v1, v4, :cond_8

    .line 293
    mul-int/lit8 v4, v1, 0x32

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    goto :goto_1

    .line 295
    :cond_8
    const/16 v4, 0x38

    if-gt v1, v4, :cond_9

    const/16 v4, 0x30

    if-le v1, v4, :cond_9

    .line 297
    invoke-virtual {v3, v8}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    goto :goto_1

    .line 298
    :cond_9
    const/16 v4, 0x40

    if-gt v1, v4, :cond_a

    const/16 v4, 0x38

    if-gt v1, v4, :cond_2

    .line 300
    :cond_a
    const/16 v4, 0x48

    if-gt v1, v4, :cond_b

    const/16 v4, 0x40

    if-le v1, v4, :cond_b

    .line 301
    mul-int/lit8 v4, v1, 0x1e

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    goto :goto_1

    .line 302
    :cond_b
    const/16 v4, 0x50

    if-gt v1, v4, :cond_c

    const/16 v4, 0x48

    if-le v1, v4, :cond_c

    .line 303
    mul-int/lit8 v4, v1, 0x19

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    goto/16 :goto_1

    .line 305
    :cond_c
    const/16 v4, 0x58

    if-gt v1, v4, :cond_d

    const/16 v4, 0x50

    if-gt v1, v4, :cond_2

    .line 307
    :cond_d
    const/16 v4, 0x60

    if-gt v1, v4, :cond_2

    const/16 v4, 0x58

    if-le v1, v4, :cond_2

    .line 308
    mul-int/lit8 v4, v1, 0xf

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    goto/16 :goto_1

    .line 332
    .end local v1    # "i":I
    .end local v3    # "sport":Lcom/smalife/db/entity/SportEntity;
    :cond_e
    const/4 v4, 0x1

    if-ne p1, v4, :cond_f

    .line 334
    const/4 v1, 0x7

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 335
    new-instance v3, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v3}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 336
    .restart local v3    # "sport":Lcom/smalife/db/entity/SportEntity;
    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 338
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0xcd

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 339
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 341
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "sport":Lcom/smalife/db/entity/SportEntity;
    :cond_f
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 342
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 344
    const/4 v1, 0x3

    .restart local v1    # "i":I
    :goto_3
    if-gez v1, :cond_10

    .line 352
    const/4 v1, 0x6

    :goto_4
    const/4 v4, 0x5

    if-gt v1, v4, :cond_11

    .line 360
    const/16 v1, 0x9

    :goto_5
    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    .line 361
    new-instance v3, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v3}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 362
    .restart local v3    # "sport":Lcom/smalife/db/entity/SportEntity;
    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0    # "dateString":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 364
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x69

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 365
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 345
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sport":Lcom/smalife/db/entity/SportEntity;
    :cond_10
    new-instance v3, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v3}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 346
    .restart local v3    # "sport":Lcom/smalife/db/entity/SportEntity;
    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0    # "dateString":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 348
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0xcd

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 349
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 353
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sport":Lcom/smalife/db/entity/SportEntity;
    :cond_11
    new-instance v3, Lcom/smalife/db/entity/SportEntity;

    invoke-direct {v3}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 354
    .restart local v3    # "sport":Lcom/smalife/db/entity/SportEntity;
    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0    # "dateString":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/smalife/db/entity/SportEntity;->setCountDate(Ljava/lang/String;)V

    .line 356
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x9b

    int-to-double v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/SportEntity;->setSteps(I)V

    .line 357
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v1, v1, -0x1

    goto :goto_4
.end method

.method static synthetic access$0(Lcom/smalife/activity/SportDetailActivity;)Lcom/smalife/utils/LineChartView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->linechat:Lcom/smalife/utils/LineChartView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/SportDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->pointliList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/smalife/activity/SportDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->mSteps:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/smalife/activity/SportDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->carlories:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/SportDetailActivity;)I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/smalife/activity/SportDetailActivity;->data_type:I

    return v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/SportDetailActivity;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/smalife/activity/SportDetailActivity;->carlor_num:F

    return v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/SportDetailActivity;F)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/smalife/activity/SportDetailActivity;->carlor_num:F

    return-void
.end method

.method static synthetic access$5(Lcom/smalife/activity/SportDetailActivity;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/smalife/activity/SportDetailActivity;->step_num:F

    return v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/SportDetailActivity;F)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/smalife/activity/SportDetailActivity;->step_num:F

    return-void
.end method

.method static synthetic access$7(Lcom/smalife/activity/SportDetailActivity;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/smalife/activity/SportDetailActivity;->dis_num:F

    return v0
.end method

.method static synthetic access$8(Lcom/smalife/activity/SportDetailActivity;F)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/smalife/activity/SportDetailActivity;->dis_num:F

    return-void
.end method

.method static synthetic access$9(Lcom/smalife/activity/SportDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->distance:Landroid/widget/TextView;

    return-object v0
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 6
    .param p1, "index_day"    # I

    .prologue
    const/4 v5, 0x5

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 91
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 92
    .local v1, "day":I
    sub-int v4, v1, p1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 94
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getPeriodData(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "day_type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/SportEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smalife/activity/SportDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->end_date:Ljava/lang/String;

    .line 210
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 211
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/smalife/activity/SportDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->start_date:Ljava/lang/String;

    .line 215
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 216
    iget-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->start_date:Ljava/lang/String;

    iget-object v2, p0, Lcom/smalife/activity/SportDetailActivity;->end_date:Ljava/lang/String;

    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/smalife/db/SmaDao;->getPeriodData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 215
    return-object v0

    .line 212
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 213
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/smalife/activity/SportDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->start_date:Ljava/lang/String;

    goto :goto_0
.end method

.method private getTodayData()V
    .locals 3

    .prologue
    .line 102
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->initSelectItem(I)V

    .line 103
    invoke-virtual {p0}, Lcom/smalife/activity/SportDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "date":Ljava/lang/String;
    iget-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v2, p0, Lcom/smalife/activity/SportDetailActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/smalife/db/SmaDao;->getTodaySportListData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    .line 105
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->parseSport(I)V

    .line 107
    return-void
.end method

.method private initSelectItem(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->today_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 400
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->week_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 401
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->tenDay_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 402
    packed-switch p1, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 404
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->today_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->week_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 410
    :pswitch_2
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->tenDay_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 65
    const v1, 0x7f0e01fd

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/smalife/utils/LineChartView;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->linechat:Lcom/smalife/utils/LineChartView;

    .line 66
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/smalife/activity/SportDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/smalife/activity/SportDetailActivity;->screenWidth:I

    .line 69
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/smalife/activity/SportDetailActivity;->screenHeight:I

    .line 70
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->back_btn:Landroid/widget/ImageButton;

    .line 71
    iget-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f0e01f8

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->distance:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f0e0175

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->mSteps:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0e01f9

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->carlories:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0e01fe

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->aim_num:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0e01fa

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->today_btn:Landroid/widget/Button;

    .line 78
    const v1, 0x7f0e01fb

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->week_btn:Landroid/widget/Button;

    .line 79
    const v1, 0x7f0e01fc

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->tenDay_btn:Landroid/widget/Button;

    .line 81
    iget-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->today_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->week_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->tenDay_btn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method private parseSport(I)V
    .locals 22
    .param p1, "sportType"    # I

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->pointliList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 111
    const/16 v16, 0x10

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->comparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    const/16 v16, 0xc

    move/from16 v0, v16

    new-array v13, v0, [I

    .line 114
    .local v13, "points":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_2

    .line 126
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_4

    .line 132
    const/16 v16, 0x10

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/activity/SportDetailActivity;->data_type:I

    .line 202
    .end local v10    # "i":I
    .end local v13    # "points":[I
    :cond_1
    :goto_2
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/activity/SportDetailActivity;->carlor_num:F

    .line 203
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/activity/SportDetailActivity;->step_num:F

    .line 204
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/activity/SportDetailActivity;->dis_num:F

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->handler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x10

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void

    .line 114
    .restart local v13    # "points":[I
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smalife/db/entity/SportEntity;

    .line 115
    .local v14, "s":Lcom/smalife/db/entity/SportEntity;
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getOffSet()I

    move-result v11

    .line 117
    .local v11, "offset":I
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v15

    .line 118
    .local v15, "steps":I
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_3

    .line 119
    div-int/lit8 v17, v11, 0x8

    aget v18, v13, v17

    add-int v18, v18, v15

    aput v18, v13, v17

    goto :goto_0

    .line 121
    :cond_3
    div-int/lit8 v17, v11, 0x8

    aget v17, v13, v17

    if-nez v17, :cond_0

    .line 122
    div-int/lit8 v17, v11, 0x8

    aput v15, v13, v17

    goto :goto_0

    .line 127
    .end local v11    # "offset":I
    .end local v14    # "s":Lcom/smalife/db/entity/SportEntity;
    .end local v15    # "steps":I
    .restart local v10    # "i":I
    :cond_4
    new-instance v12, Lcom/smalife/utils/SportPoint;

    invoke-direct {v12}, Lcom/smalife/utils/SportPoint;-><init>()V

    .line 128
    .local v12, "point":Lcom/smalife/utils/SportPoint;
    add-int/lit8 v16, v10, 0x1

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/smalife/utils/SportPoint;->setAction_time(I)V

    .line 129
    aget v16, v13, v10

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/smalife/utils/SportPoint;->setSteps(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->pointliList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 133
    .end local v10    # "i":I
    .end local v12    # "point":Lcom/smalife/utils/SportPoint;
    .end local v13    # "points":[I
    :cond_5
    const/16 v16, 0x20

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->dayComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v13, v0, [I

    .line 136
    .restart local v13    # "points":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_7

    .line 157
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_9

    .line 163
    const/16 v16, 0x20

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/activity/SportDetailActivity;->data_type:I

    goto/16 :goto_2

    .line 136
    .end local v10    # "i":I
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smalife/db/entity/SportEntity;

    .line 137
    .restart local v14    # "s":Lcom/smalife/db/entity/SportEntity;
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "countDate":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd"

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    .line 138
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 141
    .local v6, "df":Ljava/text/DateFormat;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->todayString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 142
    .local v3, "d1":Ljava/util/Date;
    invoke-virtual {v6, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 143
    .local v4, "d2":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v8, v18, v20

    .line 144
    .local v8, "diff":J
    const-wide/32 v18, 0x5265c00

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 145
    .local v5, "days":I
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v15

    .line 146
    .restart local v15    # "steps":I
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_8

    .line 147
    rsub-int/lit8 v17, v5, 0x6

    aget v18, v13, v17

    add-int v18, v18, v15

    aput v18, v13, v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 153
    .end local v3    # "d1":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    .end local v5    # "days":I
    .end local v8    # "diff":J
    .end local v15    # "steps":I
    :catch_0
    move-exception v7

    .line 154
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 149
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "d1":Ljava/util/Date;
    .restart local v4    # "d2":Ljava/util/Date;
    .restart local v5    # "days":I
    .restart local v8    # "diff":J
    .restart local v15    # "steps":I
    :cond_8
    rsub-int/lit8 v17, v5, 0x6

    :try_start_1
    aget v17, v13, v17

    if-nez v17, :cond_6

    .line 150
    rsub-int/lit8 v17, v5, 0x6

    aput v15, v13, v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 158
    .end local v2    # "countDate":Ljava/lang/String;
    .end local v3    # "d1":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    .end local v5    # "days":I
    .end local v6    # "df":Ljava/text/DateFormat;
    .end local v8    # "diff":J
    .end local v14    # "s":Lcom/smalife/db/entity/SportEntity;
    .end local v15    # "steps":I
    .restart local v10    # "i":I
    :cond_9
    new-instance v12, Lcom/smalife/utils/SportPoint;

    invoke-direct {v12}, Lcom/smalife/utils/SportPoint;-><init>()V

    .line 159
    .restart local v12    # "point":Lcom/smalife/utils/SportPoint;
    invoke-virtual {v12, v10}, Lcom/smalife/utils/SportPoint;->setDay_key(I)V

    .line 160
    aget v16, v13, v10

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/smalife/utils/SportPoint;->setSteps(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->pointliList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 164
    .end local v10    # "i":I
    .end local v12    # "point":Lcom/smalife/utils/SportPoint;
    .end local v13    # "points":[I
    :cond_a
    const/16 v16, 0x30

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->dayComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    const/16 v16, 0x1e

    move/from16 v0, v16

    new-array v13, v0, [I

    .line 168
    .restart local v13    # "points":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_c

    .line 192
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_e

    .line 199
    const/16 v16, 0x30

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smalife/activity/SportDetailActivity;->data_type:I

    goto/16 :goto_2

    .line 168
    .end local v10    # "i":I
    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smalife/db/entity/SportEntity;

    .line 169
    .restart local v14    # "s":Lcom/smalife/db/entity/SportEntity;
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2    # "countDate":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd"

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    .line 170
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 173
    .restart local v6    # "df":Ljava/text/DateFormat;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->todayString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 174
    .restart local v3    # "d1":Ljava/util/Date;
    invoke-virtual {v6, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 175
    .restart local v4    # "d2":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v8, v18, v20

    .line 176
    .restart local v8    # "diff":J
    const-wide/32 v18, 0x5265c00

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 178
    .restart local v5    # "days":I
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v15

    .line 179
    .restart local v15    # "steps":I
    if-ltz v5, :cond_b

    const/16 v17, 0x1d

    move/from16 v0, v17

    if-gt v5, v0, :cond_b

    .line 180
    invoke-virtual {v14}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_d

    .line 181
    rsub-int/lit8 v17, v5, 0x1d

    aget v18, v13, v17

    add-int v18, v18, v15

    aput v18, v13, v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 188
    .end local v3    # "d1":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    .end local v5    # "days":I
    .end local v8    # "diff":J
    .end local v15    # "steps":I
    :catch_1
    move-exception v7

    .line 189
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 183
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "d1":Ljava/util/Date;
    .restart local v4    # "d2":Ljava/util/Date;
    .restart local v5    # "days":I
    .restart local v8    # "diff":J
    .restart local v15    # "steps":I
    :cond_d
    rsub-int/lit8 v17, v5, 0x1d

    :try_start_3
    aget v17, v13, v17

    if-nez v17, :cond_b

    .line 184
    rsub-int/lit8 v17, v5, 0x1d

    aput v15, v13, v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 194
    .end local v2    # "countDate":Ljava/lang/String;
    .end local v3    # "d1":Ljava/util/Date;
    .end local v4    # "d2":Ljava/util/Date;
    .end local v5    # "days":I
    .end local v6    # "df":Ljava/text/DateFormat;
    .end local v8    # "diff":J
    .end local v14    # "s":Lcom/smalife/db/entity/SportEntity;
    .end local v15    # "steps":I
    .restart local v10    # "i":I
    :cond_e
    new-instance v12, Lcom/smalife/utils/SportPoint;

    invoke-direct {v12}, Lcom/smalife/utils/SportPoint;-><init>()V

    .line 195
    .restart local v12    # "point":Lcom/smalife/utils/SportPoint;
    invoke-virtual {v12, v10}, Lcom/smalife/utils/SportPoint;->setDay_key(I)V

    .line 196
    aget v16, v13, v10

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/smalife/utils/SportPoint;->setSteps(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SportDetailActivity;->pointliList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6
.end method


# virtual methods
.method public countDistanceAndCalories(Lcom/smalife/db/entity/SportEntity;)Lcom/smalife/db/entity/SportEntity;
    .locals 10
    .param p1, "se"    # Lcom/smalife/db/entity/SportEntity;

    .prologue
    const-wide v8, 0x3fe199999999999aL    # 0.55

    const-wide v6, 0x3fdd70a3d70a3d71L    # 0.46

    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, "mdistance":F
    const/4 v0, 0x0

    .line 464
    .local v0, "mcalories":F
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v4, p0, Lcom/smalife/activity/SportDetailActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/SmaDao;->getUserInfo(Ljava/lang/String;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v2

    .line 465
    .local v2, "user":Lcom/smalife/db/entity/UserEntity;
    if-eqz v2, :cond_0

    .line 466
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 467
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v3

    if-nez v3, :cond_1

    .line 468
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v4, v3

    mul-double/2addr v4, v8

    .line 469
    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    int-to-double v6, v3

    .line 468
    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 483
    :goto_0
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2d

    div-int/lit16 v3, v3, 0x2710

    int-to-float v1, v3

    .line 485
    :cond_0
    invoke-virtual {p1, v0}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 486
    invoke-virtual {p1, v1}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 487
    return-object p1

    .line 472
    :cond_1
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 471
    invoke-static {v3}, Lcom/smalife/utils/UnitUtils;->convertToKg(F)D

    move-result-wide v4

    mul-double/2addr v4, v8

    .line 472
    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    int-to-double v6, v3

    .line 471
    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 474
    goto :goto_0

    .line 475
    :cond_2
    iget-object v3, p0, Lcom/smalife/activity/SportDetailActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v3

    if-nez v3, :cond_3

    .line 476
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v4, v3

    mul-double/2addr v4, v6

    .line 477
    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    int-to-double v6, v3

    .line 476
    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 478
    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 479
    invoke-static {v3}, Lcom/smalife/utils/UnitUtils;->convertToKg(F)D

    move-result-wide v4

    mul-double/2addr v4, v6

    .line 480
    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    int-to-double v6, v3

    .line 479
    mul-double/2addr v4, v6

    double-to-float v0, v4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 373
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 374
    iget-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 396
    :goto_0
    return-void

    .line 377
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/SportDetailActivity;->finish()V

    goto :goto_0

    .line 380
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/smalife/activity/SportDetailActivity;->initSelectItem(I)V

    .line 381
    invoke-direct {p0, v2}, Lcom/smalife/activity/SportDetailActivity;->getPeriodData(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    .line 383
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/smalife/activity/SportDetailActivity;->parseSport(I)V

    goto :goto_0

    .line 386
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->initSelectItem(I)V

    .line 387
    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->getPeriodData(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportDetailActivity;->splist:Ljava/util/ArrayList;

    .line 389
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/smalife/activity/SportDetailActivity;->parseSport(I)V

    goto :goto_0

    .line 392
    :sswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smalife/activity/SportDetailActivity;->initSelectItem(I)V

    .line 393
    invoke-direct {p0}, Lcom/smalife/activity/SportDetailActivity;->getTodayData()V

    goto :goto_0

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e01fa -> :sswitch_3
        0x7f0e01fb -> :sswitch_2
        0x7f0e01fc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f03005f

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/smalife/activity/SportDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/smalife/MyApplication;

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->mApplication:Lcom/smalife/MyApplication;

    .line 54
    invoke-direct {p0}, Lcom/smalife/activity/SportDetailActivity;->initUI()V

    .line 55
    new-instance v1, Lcom/smalife/db/SmaDao;

    invoke-direct {v1, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 57
    invoke-direct {p0}, Lcom/smalife/activity/SportDetailActivity;->getTodayData()V

    .line 58
    invoke-virtual {p0}, Lcom/smalife/activity/SportDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aim_num"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smalife/activity/SportDetailActivity;->aim_total:I

    .line 60
    iget-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->aim_num:Landroid/widget/TextView;

    iget v2, p0, Lcom/smalife/activity/SportDetailActivity;->aim_total:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/smalife/activity/SportDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/SportDetailActivity;->todayString:Ljava/lang/String;

    .line 62
    return-void
.end method
