.class public Lcom/smalife/activity/HeartDetailActivity;
.super Landroid/app/Activity;
.source "HeartDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/HeartDetailActivity$DataType;,
        Lcom/smalife/activity/HeartDetailActivity$ListEntity;,
        Lcom/smalife/activity/HeartDetailActivity$MyAdapter;,
        Lcom/smalife/activity/HeartDetailActivity$MyMarkView;,
        Lcom/smalife/activity/HeartDetailActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$smalife$activity$HeartDetailActivity$DataType:[I


# instance fields
.field private adapter:Lcom/smalife/activity/HeartDetailActivity$MyAdapter;

.field private application:Lcom/smalife/MyApplication;

.field private avgRate:I

.field private back_btn:Landroid/widget/ImageButton;

.field private dao:Lcom/smalife/db/SmaDao;

.field private heart_type:Landroid/widget/TextView;

.field private listDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/activity/HeartDetailActivity$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private listview:Landroid/widget/ListView;

.field private mCurDate:Ljava/lang/String;

.field private mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private maxRate:I

.field private minRate:I

.field private month_btn:Landroid/widget/Button;

.field private rateLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/db/entity/RateEntity;",
            ">;"
        }
    .end annotation
.end field

.field private today_btn:Landroid/widget/Button;

.field private userAccount:Ljava/lang/String;

.field private week_btn:Landroid/widget/Button;


# direct methods
.method static synthetic $SWITCH_TABLE$com$smalife$activity$HeartDetailActivity$DataType()[I
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/smalife/activity/HeartDetailActivity;->$SWITCH_TABLE$com$smalife$activity$HeartDetailActivity$DataType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/smalife/activity/HeartDetailActivity$DataType;->values()[Lcom/smalife/activity/HeartDetailActivity$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/smalife/activity/HeartDetailActivity$DataType;->DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-virtual {v1}, Lcom/smalife/activity/HeartDetailActivity$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/smalife/activity/HeartDetailActivity$DataType;->MONTH:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-virtual {v1}, Lcom/smalife/activity/HeartDetailActivity$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/smalife/activity/HeartDetailActivity$DataType;->WEEK:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-virtual {v1}, Lcom/smalife/activity/HeartDetailActivity$DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/smalife/activity/HeartDetailActivity;->$SWITCH_TABLE$com$smalife$activity$HeartDetailActivity$DataType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput v0, p0, Lcom/smalife/activity/HeartDetailActivity;->avgRate:I

    .line 55
    iput v0, p0, Lcom/smalife/activity/HeartDetailActivity;->maxRate:I

    .line 56
    iput v0, p0, Lcom/smalife/activity/HeartDetailActivity;->minRate:I

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/HeartDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getAvgRateForDay(Ljava/lang/String;)V
    .locals 8
    .param p1, "dt"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 286
    iput v7, p0, Lcom/smalife/activity/HeartDetailActivity;->avgRate:I

    .line 287
    iput v7, p0, Lcom/smalife/activity/HeartDetailActivity;->maxRate:I

    .line 288
    iput v7, p0, Lcom/smalife/activity/HeartDetailActivity;->minRate:I

    .line 289
    iget-object v5, p0, Lcom/smalife/activity/HeartDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v6, p0, Lcom/smalife/activity/HeartDetailActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lcom/smalife/db/SmaDao;->getOneDayRateLists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 291
    .local v2, "rateLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/RateEntity;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 292
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smalife/db/entity/RateEntity;

    invoke-virtual {v5}, Lcom/smalife/db/entity/RateEntity;->getRate_value()I

    move-result v5

    iput v5, p0, Lcom/smalife/activity/HeartDetailActivity;->minRate:I

    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "total":I
    const/4 v1, 0x0

    .line 295
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 308
    if-eqz v1, :cond_0

    .line 309
    div-int v5, v3, v1

    iput v5, p0, Lcom/smalife/activity/HeartDetailActivity;->avgRate:I

    .line 313
    .end local v0    # "i":I
    .end local v1    # "num":I
    .end local v3    # "total":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "avgrate = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/smalife/activity/HeartDetailActivity;->avgRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", maxRate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/smalife/activity/HeartDetailActivity;->maxRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", minRate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 314
    iget v6, p0, Lcom/smalife/activity/HeartDetailActivity;->minRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 313
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 315
    return-void

    .line 296
    .restart local v0    # "i":I
    .restart local v1    # "num":I
    .restart local v3    # "total":I
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smalife/db/entity/RateEntity;

    invoke-virtual {v5}, Lcom/smalife/db/entity/RateEntity;->getRate_value()I

    move-result v4

    .line 297
    .local v4, "value":I
    iget v5, p0, Lcom/smalife/activity/HeartDetailActivity;->maxRate:I

    if-le v4, v5, :cond_2

    .line 298
    iput v4, p0, Lcom/smalife/activity/HeartDetailActivity;->maxRate:I

    .line 300
    :cond_2
    iget v5, p0, Lcom/smalife/activity/HeartDetailActivity;->minRate:I

    if-ge v4, v5, :cond_3

    .line 301
    iput v4, p0, Lcom/smalife/activity/HeartDetailActivity;->minRate:I

    .line 303
    :cond_3
    if-lez v4, :cond_4

    .line 304
    add-int/2addr v3, v4

    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 295
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 6
    .param p1, "index_day"    # I

    .prologue
    const/4 v5, 0x5

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 239
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 240
    .local v1, "day":I
    sub-int v4, v1, p1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 241
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 242
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 243
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getCurHeartData(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/smalife/activity/HeartDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "dt":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "date = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v2, p0, Lcom/smalife/activity/HeartDetailActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/smalife/db/SmaDao;->getOneDayRateLists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    .line 278
    return-void
.end method

.method private getDaYXValues()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v3, "xValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 328
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 339
    .end local v2    # "i":I
    :cond_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    return-object v3

    .line 329
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/RateEntity;

    .line 330
    invoke-virtual {v4}, Lcom/smalife/db/entity/RateEntity;->getRate_Id()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    .line 329
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/smalife/activity/HeartDetailActivity;->getHHMM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "hhmm":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v0, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    .end local v0    # "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;-><init>(Lcom/smalife/activity/HeartDetailActivity;Lcom/smalife/activity/HeartDetailActivity$ListEntity;)V

    .line 334
    .restart local v0    # "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    invoke-virtual {v0, v1}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setName(Ljava/lang/String;)V

    .line 335
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/RateEntity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/RateEntity;->getRate_value()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setValue(I)V

    .line 336
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDaYYValues()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v2, "lineDataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v3, "yValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 353
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt v0, v4, :cond_1

    .line 357
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 358
    .local v1, "lineDataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    const/high16 v4, 0x3fe00000    # 1.75f

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 359
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleSize(F)V

    .line 360
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 361
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 362
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 363
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 364
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawVerticalHighlightIndicator(Z)V

    .line 365
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextColor(I)V

    .line 366
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    return-object v2

    .line 354
    .end local v1    # "lineDataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    .restart local v0    # "i":I
    :cond_1
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/RateEntity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/RateEntity;->getRate_value()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v5, v4, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getHHMM(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "rateId"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xa

    .line 247
    const-string v2, ""

    .line 249
    .local v2, "hhmm":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 249
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 251
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 253
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v4

    if-ge v4, v6, :cond_0

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_1
    return-object v2

    .line 256
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 262
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 264
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method private getLineData(ILcom/smalife/activity/HeartDetailActivity$DataType;)Lcom/github/mikephil/charting/data/LineData;
    .locals 6
    .param p1, "count"    # I
    .param p2, "type"    # Lcom/smalife/activity/HeartDetailActivity$DataType;

    .prologue
    const v5, 0x7f0901da

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "lineDataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v2, "xValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/smalife/activity/HeartDetailActivity;->$SWITCH_TABLE$com$smalife$activity$HeartDetailActivity$DataType()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/smalife/activity/HeartDetailActivity$DataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 213
    :goto_0
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0, v2, v1}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 214
    .local v0, "lineData":Lcom/github/mikephil/charting/data/LineData;
    return-object v0

    .line 191
    .end local v0    # "lineData":Lcom/github/mikephil/charting/data/LineData;
    :pswitch_0
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->userAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/smalife/activity/HeartDetailActivity;->mCurDate:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/smalife/db/SmaDao;->getOneDayRateLists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->rateLists:Ljava/util/ArrayList;

    .line 192
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailActivity;->getDaYXValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 193
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailActivity;->getDaYYValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 194
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->adapter:Lcom/smalife/activity/HeartDetailActivity$MyAdapter;

    invoke-virtual {v3}, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->notifyDataSetChanged()V

    .line 195
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->heart_type:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 196
    const v5, 0x7f0901d9

    .line 195
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailActivity;->getWeekXValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 200
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailActivity;->getWeekYValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 201
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->adapter:Lcom/smalife/activity/HeartDetailActivity$MyAdapter;

    invoke-virtual {v3}, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->notifyDataSetChanged()V

    .line 202
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->heart_type:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailActivity;->getMonthXValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 206
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailActivity;->getMonthYValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 207
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->adapter:Lcom/smalife/activity/HeartDetailActivity$MyAdapter;

    invoke-virtual {v3}, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;->notifyDataSetChanged()V

    .line 208
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->heart_type:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMonthXValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v2, "xValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x1f

    if-lt v1, v3, :cond_0

    .line 456
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    return-object v2

    .line 433
    :cond_0
    new-instance v0, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    .end local v0    # "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;-><init>(Lcom/smalife/activity/HeartDetailActivity;Lcom/smalife/activity/HeartDetailActivity$ListEntity;)V

    .line 434
    .restart local v0    # "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sparse-switch v1, :sswitch_data_0

    .line 431
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setName(Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 441
    :sswitch_1
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setName(Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 445
    :sswitch_2
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setName(Ljava/lang/String;)V

    .line 446
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    :sswitch_3
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setName(Ljava/lang/String;)V

    .line 450
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xf -> :sswitch_1
        0x16 -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method private getMonthYValues()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 466
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v3, "lineDataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    const/4 v4, 0x0

    .line 468
    .local v4, "total":I
    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x1f

    if-lt v1, v6, :cond_0

    .line 509
    return-object v3

    .line 470
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v5, "yValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    add-int/lit8 v6, v1, -0x1

    invoke-direct {p0, v6}, Lcom/smalife/activity/HeartDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/smalife/activity/HeartDetailActivity;->getAvgRateForDay(Ljava/lang/String;)V

    .line 473
    new-instance v6, Lcom/github/mikephil/charting/data/Entry;

    iget v7, p0, Lcom/smalife/activity/HeartDetailActivity;->minRate:I

    int-to-float v7, v7

    invoke-direct {v6, v7, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v6, Lcom/github/mikephil/charting/data/Entry;

    iget v7, p0, Lcom/smalife/activity/HeartDetailActivity;->maxRate:I

    int-to-float v7, v7

    invoke-direct {v6, v7, v1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget v6, p0, Lcom/smalife/activity/HeartDetailActivity;->avgRate:I

    add-int/2addr v4, v6

    .line 477
    iget v6, p0, Lcom/smalife/activity/HeartDetailActivity;->avgRate:I

    if-eqz v6, :cond_1

    .line 478
    add-int/lit8 v0, v0, 0x1

    .line 481
    :cond_1
    new-instance v2, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v6, ""

    invoke-direct {v2, v5, v6}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 483
    .local v2, "lineDataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 484
    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleSize(F)V

    .line 485
    const/16 v6, 0xfa

    const/16 v7, 0x82

    const/16 v9, 0xa6

    invoke-static {v6, v7, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 486
    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 487
    invoke-virtual {v2, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 488
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 489
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawVerticalHighlightIndicator(Z)V

    .line 490
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextColor(I)V

    .line 491
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sparse-switch v1, :sswitch_data_0

    .line 469
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :sswitch_0
    iget-object v6, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    if-eqz v0, :cond_2

    div-int v7, v4, v0

    :goto_2
    invoke-virtual {v6, v7}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setValue(I)V

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_2

    .line 497
    :sswitch_1
    iget-object v6, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    if-eqz v0, :cond_3

    div-int v7, v4, v0

    :goto_3
    invoke-virtual {v6, v7}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setValue(I)V

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_3

    .line 500
    :sswitch_2
    iget-object v6, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    if-eqz v0, :cond_4

    div-int v7, v4, v0

    :goto_4
    invoke-virtual {v6, v7}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setValue(I)V

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_4

    .line 503
    :sswitch_3
    iget-object v6, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    if-eqz v0, :cond_5

    div-int v7, v4, v0

    :goto_5
    invoke-virtual {v6, v7}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setValue(I)V

    goto :goto_1

    :cond_5
    move v7, v8

    goto :goto_5

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xf -> :sswitch_1
        0x16 -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method private getWeekXValues()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v3, "xValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x7

    if-lt v2, v4, :cond_0

    .line 389
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    return-object v3

    .line 381
    :cond_0
    invoke-direct {p0, v2}, Lcom/smalife/activity/HeartDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "date":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->getAvgRateForDay(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v1, Lcom/smalife/activity/HeartDetailActivity$ListEntity;

    .end local v1    # "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;-><init>(Lcom/smalife/activity/HeartDetailActivity;Lcom/smalife/activity/HeartDetailActivity$ListEntity;)V

    .line 385
    .restart local v1    # "entity":Lcom/smalife/activity/HeartDetailActivity$ListEntity;
    invoke-virtual {v1, v0}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setName(Ljava/lang/String;)V

    .line 386
    iget v4, p0, Lcom/smalife/activity/HeartDetailActivity;->avgRate:I

    invoke-virtual {v1, v4}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->setValue(I)V

    .line 387
    iget-object v4, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getWeekYValues()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v2, "lineDataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-gtz v0, :cond_0

    .line 418
    return-object v2

    .line 401
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v3, "yValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    add-int/lit8 v4, v0, -0x1

    invoke-direct {p0, v4}, Lcom/smalife/activity/HeartDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/smalife/activity/HeartDetailActivity;->getAvgRateForDay(Ljava/lang/String;)V

    .line 404
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    iget v5, p0, Lcom/smalife/activity/HeartDetailActivity;->minRate:I

    int-to-float v5, v5

    invoke-direct {v4, v5, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    iget v5, p0, Lcom/smalife/activity/HeartDetailActivity;->maxRate:I

    int-to-float v5, v5

    invoke-direct {v4, v5, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 408
    .local v1, "lineDataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 409
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleSize(F)V

    .line 410
    const/16 v4, 0xfa

    const/16 v5, 0x82

    const/16 v6, 0xa6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 411
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 412
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 413
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 414
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawVerticalHighlightIndicator(Z)V

    .line 415
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextColor(I)V

    .line 416
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private initSelectItem(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->today_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 219
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->week_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 220
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->month_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->today_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->week_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->month_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showChart(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/data/LineData;Lcom/smalife/activity/HeartDetailActivity$DataType;)V
    .locals 11
    .param p1, "lineChart"    # Lcom/github/mikephil/charting/charts/LineChart;
    .param p2, "lineData"    # Lcom/github/mikephil/charting/data/LineData;
    .param p3, "type"    # Lcom/smalife/activity/HeartDetailActivity$DataType;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawBorders(Z)V

    .line 127
    const-string v5, ""

    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 130
    const v6, 0x7f090205

    .line 129
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setNoDataTextDescription(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 132
    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/charts/LineChart;->setGridBackgroundColor(I)V

    .line 133
    invoke-virtual {p1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 134
    invoke-virtual {p1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 135
    invoke-virtual {p1, v8}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 136
    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 139
    sget-object v5, Lcom/smalife/activity/HeartDetailActivity$DataType;->DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

    if-ne p3, v5, :cond_0

    .line 140
    new-instance v2, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;

    invoke-direct {v2, p0, p0}, Lcom/smalife/activity/HeartDetailActivity$MyMarkView;-><init>(Lcom/smalife/activity/HeartDetailActivity;Landroid/content/Context;)V

    .line 141
    .local v2, "mv":Lcom/smalife/activity/HeartDetailActivity$MyMarkView;
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V

    .line 142
    const/16 v5, 0x7d0

    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/LineChart;->animateX(I)V

    .line 147
    .end local v2    # "mv":Lcom/smalife/activity/HeartDetailActivity$MyMarkView;
    :goto_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    .line 150
    .local v1, "mLegend":Lcom/github/mikephil/charting/components/Legend;
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 151
    invoke-virtual {p1, v7}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleYEnabled(Z)V

    .line 152
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 153
    .local v3, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setGridColor(I)V

    .line 154
    invoke-virtual {v3, v10}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 155
    sget-object v5, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 157
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    .line 158
    .local v4, "yAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v4, v10}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 159
    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 164
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 165
    .local v0, "axisRight":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 166
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 167
    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/components/YAxis;->setGridLineWidth(F)V

    .line 168
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 169
    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 170
    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 171
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 173
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 174
    return-void

    .line 144
    .end local v0    # "axisRight":Lcom/github/mikephil/charting/components/YAxis;
    .end local v1    # "mLegend":Lcom/github/mikephil/charting/components/Legend;
    .end local v3    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    .end local v4    # "yAxis":Lcom/github/mikephil/charting/components/YAxis;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V

    .line 145
    const/16 v5, 0x5dc

    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/LineChart;->animateY(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x32

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 98
    :sswitch_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/smalife/activity/HeartDetailActivity;->initSelectItem(I)V

    .line 99
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    .line 100
    sget-object v3, Lcom/smalife/activity/HeartDetailActivity$DataType;->DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-direct {p0, v4, v3}, Lcom/smalife/activity/HeartDetailActivity;->getLineData(ILcom/smalife/activity/HeartDetailActivity$DataType;)Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 101
    .local v0, "mLineData1":Lcom/github/mikephil/charting/data/LineData;
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    sget-object v4, Lcom/smalife/activity/HeartDetailActivity$DataType;->DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-direct {p0, v3, v0, v4}, Lcom/smalife/activity/HeartDetailActivity;->showChart(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/data/LineData;Lcom/smalife/activity/HeartDetailActivity$DataType;)V

    goto :goto_0

    .line 104
    .end local v0    # "mLineData1":Lcom/github/mikephil/charting/data/LineData;
    :sswitch_1
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/smalife/activity/HeartDetailActivity;->initSelectItem(I)V

    .line 105
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    .line 106
    sget-object v3, Lcom/smalife/activity/HeartDetailActivity$DataType;->WEEK:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-direct {p0, v4, v3}, Lcom/smalife/activity/HeartDetailActivity;->getLineData(ILcom/smalife/activity/HeartDetailActivity$DataType;)Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    .line 107
    .local v1, "mLineData2":Lcom/github/mikephil/charting/data/LineData;
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    sget-object v4, Lcom/smalife/activity/HeartDetailActivity$DataType;->WEEK:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-direct {p0, v3, v1, v4}, Lcom/smalife/activity/HeartDetailActivity;->showChart(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/data/LineData;Lcom/smalife/activity/HeartDetailActivity$DataType;)V

    goto :goto_0

    .line 110
    .end local v1    # "mLineData2":Lcom/github/mikephil/charting/data/LineData;
    :sswitch_2
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/smalife/activity/HeartDetailActivity;->initSelectItem(I)V

    .line 111
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    .line 112
    sget-object v3, Lcom/smalife/activity/HeartDetailActivity$DataType;->MONTH:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-direct {p0, v4, v3}, Lcom/smalife/activity/HeartDetailActivity;->getLineData(ILcom/smalife/activity/HeartDetailActivity$DataType;)Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    .line 113
    .local v2, "mLineData3":Lcom/github/mikephil/charting/data/LineData;
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailActivity;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    sget-object v4, Lcom/smalife/activity/HeartDetailActivity$DataType;->MONTH:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-direct {p0, v3, v2, v4}, Lcom/smalife/activity/HeartDetailActivity;->showChart(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/data/LineData;Lcom/smalife/activity/HeartDetailActivity$DataType;)V

    goto :goto_0

    .line 116
    .end local v2    # "mLineData3":Lcom/github/mikephil/charting/data/LineData;
    :sswitch_3
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->finish()V

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_3
        0x7f0e0095 -> :sswitch_0
        0x7f0e0096 -> :sswitch_1
        0x7f0e0097 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->mCurDate:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->application:Lcom/smalife/MyApplication;

    .line 66
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 67
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->userAccount:Ljava/lang/String;

    .line 69
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 70
    const v0, 0x7f0e0095

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->today_btn:Landroid/widget/Button;

    .line 71
    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->week_btn:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0e0097

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->month_btn:Landroid/widget/Button;

    .line 73
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->listview:Landroid/widget/ListView;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->listDatas:Ljava/util/ArrayList;

    .line 75
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->heart_type:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->back_btn:Landroid/widget/ImageButton;

    .line 77
    new-instance v0, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;

    invoke-direct {v0, p0}, Lcom/smalife/activity/HeartDetailActivity$MyAdapter;-><init>(Lcom/smalife/activity/HeartDetailActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->adapter:Lcom/smalife/activity/HeartDetailActivity$MyAdapter;

    .line 79
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smalife/activity/HeartDetailActivity;->adapter:Lcom/smalife/activity/HeartDetailActivity$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->today_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->week_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->month_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/smalife/activity/HeartDetailActivity;->initSelectItem(I)V

    .line 90
    const/16 v1, 0x32

    sget-object v2, Lcom/smalife/activity/HeartDetailActivity$DataType;->DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-direct {p0, v1, v2}, Lcom/smalife/activity/HeartDetailActivity;->getLineData(ILcom/smalife/activity/HeartDetailActivity$DataType;)Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 91
    .local v0, "mLineData":Lcom/github/mikephil/charting/data/LineData;
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailActivity;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    sget-object v2, Lcom/smalife/activity/HeartDetailActivity$DataType;->DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-direct {p0, v1, v0, v2}, Lcom/smalife/activity/HeartDetailActivity;->showChart(Lcom/github/mikephil/charting/charts/LineChart;Lcom/github/mikephil/charting/data/LineData;Lcom/smalife/activity/HeartDetailActivity$DataType;)V

    .line 92
    return-void
.end method
