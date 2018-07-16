.class public Lcom/smalife/activity/SleepActivity;
.super Lcom/smalife/BaseActivity;
.source "SleepActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/SleepActivity$PersonObserver;
    }
.end annotation


# instance fields
.field private cleartime:Landroid/widget/TextView;

.field private dao:Lcom/smalife/db/SmaDao;

.field private day_index:I

.field private deepsleep:Landroid/widget/TextView;

.field private df:Ljava/text/DecimalFormat;

.field private dt:Ljava/util/Date;

.field private fallsleep:Landroid/widget/TextView;

.field private left_btn:Landroid/widget/ImageButton;

.field private mObserver:Lcom/smalife/activity/SleepActivity$PersonObserver;

.field private right_btn:Landroid/widget/ImageButton;

.field private sleep:Lcom/smalife/db/entity/SleepEntity;

.field private sleep_day:Landroid/widget/TextView;

.field private sleep_detail_layout:Landroid/widget/LinearLayout;

.field private sleep_quality:Landroid/widget/TextView;

.field private tintsleep:Landroid/widget/TextView;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    .line 41
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SleepActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    return v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/SleepActivity;I)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/smalife/activity/SleepActivity;->getCurSleepData(I)V

    return-void
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 5
    .param p1, "index_day"    # I

    .prologue
    const/4 v4, 0x5

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 91
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 92
    .local v1, "day":I
    add-int v3, v1, p1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/SleepActivity;->dt:Ljava/util/Date;

    .line 94
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    .local v2, "ft":Ljava/text/DateFormat;
    iget-object v3, p0, Lcom/smalife/activity/SleepActivity;->dt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCurSleepData(I)V
    .locals 44
    .param p1, "index"    # I

    .prologue
    .line 154
    invoke-direct/range {p0 .. p1}, Lcom/smalife/activity/SleepActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "dt":Ljava/lang/String;
    const-string v36, "-"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 156
    .local v26, "t":I
    add-int/lit8 v36, v26, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 157
    .local v27, "tempString":Ljava/lang/String;
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/smalife/activity/SleepActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_day:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0900e6

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    const-string v36, "SM07"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->application:Lcom/smalife/MyApplication;

    move-object/from16 v37, v0

    .line 164
    invoke-virtual/range {v37 .. v37}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v37

    .line 163
    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    .line 164
    if-eqz v36, :cond_13

    .line 165
    add-int/lit8 v36, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/smalife/activity/SleepActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v20

    .line 166
    .local v20, "pre":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/smalife/activity/SleepActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v32

    .line 167
    .local v32, "today":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->dao:Lcom/smalife/db/SmaDao;

    move-object/from16 v36, v0

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->userAccount:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 167
    move-object/from16 v0, v36

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/smalife/db/SmaDao;->getOneDaySleepList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 169
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    if-nez v17, :cond_1

    .line 361
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    .end local v20    # "pre":Ljava/lang/String;
    .end local v32    # "today":Ljava/lang/String;
    :goto_1
    return-void

    .line 160
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_day:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    .restart local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    .restart local v20    # "pre":Ljava/lang/String;
    .restart local v32    # "today":Ljava/lang/String;
    :cond_1
    const/16 v16, 0x0

    .line 174
    .local v16, "isHaveFallSleep":Z
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v15, v36, -0x1

    .local v15, "i":I
    :goto_2
    if-gez v15, :cond_3

    .line 186
    const/4 v5, 0x0

    .line 190
    .local v5, "deep":I
    const/16 v29, 0x0

    .line 194
    .local v29, "tint":I
    const/4 v4, 0x0

    .line 195
    .local v4, "clear":I
    const/4 v15, 0x0

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    if-lt v15, v0, :cond_6

    .line 222
    add-int v36, v5, v29

    add-int v33, v36, v4

    .line 223
    .local v33, "total":I
    if-lez v33, :cond_c

    .line 224
    rem-int/lit8 v18, v33, 0x3c

    .line 225
    .local v18, "min":I
    div-int/lit8 v36, v33, 0x3c

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v14, v0

    .line 226
    .local v14, "hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->fallsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    int-to-long v0, v14

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 226
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .end local v14    # "hour":I
    .end local v18    # "min":I
    :goto_4
    div-int/lit8 v33, v33, 0x3c

    .line 234
    if-lez v5, :cond_10

    .line 235
    div-int/lit8 v36, v5, 0x3c

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v14, v0

    .line 236
    .restart local v14    # "hour":I
    new-instance v36, Ljava/lang/StringBuilder;

    const-string v37, "total = "

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ",deep = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 237
    rem-int/lit8 v18, v5, 0x3c

    .line 238
    .restart local v18    # "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->deepsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    int-to-long v0, v14

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 238
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const/16 v36, 0x9

    move/from16 v0, v33

    move/from16 v1, v36

    if-lt v0, v1, :cond_d

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 243
    const v38, 0x7f0900ec

    .line 242
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .end local v14    # "hour":I
    .end local v18    # "min":I
    :cond_2
    :goto_5
    if-lez v29, :cond_11

    .line 264
    div-int/lit8 v36, v29, 0x3c

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v14, v0

    .line 265
    .restart local v14    # "hour":I
    rem-int/lit8 v18, v29, 0x3c

    .line 266
    .restart local v18    # "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->tintsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    int-to-long v0, v14

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 266
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .end local v14    # "hour":I
    .end local v18    # "min":I
    :goto_6
    if-lez v4, :cond_12

    .line 274
    div-int/lit8 v36, v4, 0x3c

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v14, v0

    .line 275
    .restart local v14    # "hour":I
    rem-int/lit8 v18, v4, 0x3c

    .line 276
    .restart local v18    # "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->cleartime:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    int-to-long v0, v14

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 276
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 175
    .end local v4    # "clear":I
    .end local v5    # "deep":I
    .end local v14    # "hour":I
    .end local v18    # "min":I
    .end local v29    # "tint":I
    .end local v33    # "total":I
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/smalife/db/entity/SleepEntity;

    .line 176
    .local v21, "se":Lcom/smalife/db/entity/SleepEntity;
    if-eqz v16, :cond_4

    .line 177
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/smalife/db/entity/SleepEntity;->getSleep_type()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v21 .. v21}, Lcom/smalife/db/entity/SleepEntity;->getSleep_model()I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 180
    const/16 v16, 0x1

    .line 174
    :cond_5
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_2

    .line 196
    .end local v21    # "se":Lcom/smalife/db/entity/SleepEntity;
    .restart local v4    # "clear":I
    .restart local v5    # "deep":I
    .restart local v29    # "tint":I
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual/range {v36 .. v36}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 197
    .local v25, "start":I
    add-int/lit8 v36, v15, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual/range {v36 .. v36}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 198
    .local v11, "end":I
    const/16 v36, 0x258

    move/from16 v0, v25

    move/from16 v1, v36

    if-gt v0, v1, :cond_7

    .line 199
    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x5a0

    move/from16 v25, v0

    .line 201
    :cond_7
    const/16 v36, 0x258

    move/from16 v0, v36

    if-gt v11, v0, :cond_8

    .line 202
    add-int/lit16 v11, v11, 0x5a0

    .line 205
    :cond_8
    const/16 v28, 0x0

    .line 206
    .local v28, "time":I
    move/from16 v0, v25

    if-le v11, v0, :cond_9

    .line 207
    sub-int v28, v11, v25

    .line 210
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual/range {v36 .. v36}, Lcom/smalife/db/entity/SleepEntity;->getSleep_model()I

    move-result v19

    .line 211
    .local v19, "mode":I
    const/16 v36, 0x1

    move/from16 v0, v19

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 212
    add-int v5, v5, v28

    .line 195
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 213
    :cond_a
    const/16 v36, 0x2

    move/from16 v0, v19

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    .line 214
    add-int v29, v29, v28

    .line 215
    goto :goto_7

    .line 216
    :cond_b
    add-int v4, v4, v28

    goto :goto_7

    .line 229
    .end local v11    # "end":I
    .end local v19    # "mode":I
    .end local v25    # "start":I
    .end local v28    # "time":I
    .restart local v33    # "total":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->fallsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 230
    const-string v40, "00"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "00"

    aput-object v40, v38, v39

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 244
    .restart local v14    # "hour":I
    .restart local v18    # "min":I
    :cond_d
    const/16 v36, 0x6

    move/from16 v0, v33

    move/from16 v1, v36

    if-lt v0, v1, :cond_f

    .line 245
    const/16 v36, 0x4

    move/from16 v0, v36

    if-lt v14, v0, :cond_e

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 247
    const v38, 0x7f0900eb

    .line 246
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 248
    :cond_e
    const/16 v36, 0x3

    move/from16 v0, v36

    if-lt v14, v0, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 250
    const v38, 0x7f0900e8

    .line 249
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 253
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 254
    const v38, 0x7f0900e9

    .line 253
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 257
    .end local v14    # "hour":I
    .end local v18    # "min":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 258
    const v38, 0x7f0900e9

    .line 257
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->deepsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 260
    const-string v40, "00"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "00"

    aput-object v40, v38, v39

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 269
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->tintsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 270
    const-string v40, "00"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "00"

    aput-object v40, v38, v39

    .line 269
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 279
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->cleartime:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 280
    const-string v40, "00"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "00"

    aput-object v40, v38, v39

    .line 279
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 283
    .end local v4    # "clear":I
    .end local v5    # "deep":I
    .end local v15    # "i":I
    .end local v16    # "isHaveFallSleep":Z
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    .end local v20    # "pre":Ljava/lang/String;
    .end local v29    # "tint":I
    .end local v32    # "today":Ljava/lang/String;
    .end local v33    # "total":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->dao:Lcom/smalife/db/SmaDao;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->userAccount:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smalife/activity/SleepActivity;->day_index:I

    move/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v10, v1, v2}, Lcom/smalife/db/SmaDao;->getOneDaySleepData(Ljava/lang/String;Ljava/lang/String;I)Lcom/smalife/db/entity/SleepEntity;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/smalife/db/entity/SleepEntity;->getDeep_time()J

    move-result-wide v8

    .line 286
    .local v8, "deep_long":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/smalife/db/entity/SleepEntity;->getTint_time()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    .line 287
    .local v30, "tint_long":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/smalife/db/entity/SleepEntity;->getClear_time()J

    move-result-wide v6

    .line 288
    .local v6, "clear_time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/smalife/db/entity/SleepEntity;->getFallsleep_time()J

    move-result-wide v12

    .line 289
    .local v12, "fall_time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/smalife/db/entity/SleepEntity;->getWeakup_time()J

    move-result-wide v34

    .line 291
    .local v34, "wake_time":J
    const-wide/16 v36, 0x0

    cmp-long v36, v8, v36

    if-gtz v36, :cond_14

    const-wide/16 v36, 0x0

    cmp-long v36, v34, v36

    if-lez v36, :cond_14

    .line 292
    sub-long v36, v34, v12

    sub-long v8, v36, v30

    .line 295
    :cond_14
    sub-long v22, v34, v12

    .line 296
    .local v22, "sleep_long":J
    const-wide/16 v36, 0x0

    cmp-long v36, v22, v36

    if-gtz v36, :cond_16

    .line 297
    const-wide/16 v30, 0x0

    .line 298
    const-wide/16 v8, 0x0

    .line 299
    const-wide/16 v30, 0x0

    .line 304
    :goto_8
    const-wide/16 v36, 0x0

    cmp-long v36, v8, v36

    if-lez v36, :cond_1a

    .line 305
    const-wide/16 v36, 0x3c

    div-long v36, v8, v36

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v14, v0

    .line 306
    .restart local v14    # "hour":I
    const-wide/16 v36, 0x3c

    rem-long v36, v8, v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v18, v0

    .line 307
    .restart local v18    # "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->deepsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    int-to-long v0, v14

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 307
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const-wide/16 v36, 0x3c

    div-long v36, v22, v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v24, v0

    .line 311
    .local v24, "sleep_status":I
    const/16 v36, 0x9

    move/from16 v0, v24

    move/from16 v1, v36

    if-le v0, v1, :cond_17

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 313
    const v38, 0x7f0900ec

    .line 312
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .end local v14    # "hour":I
    .end local v18    # "min":I
    .end local v24    # "sleep_status":I
    :cond_15
    :goto_9
    const-wide/16 v36, 0x0

    cmp-long v36, v30, v36

    if-lez v36, :cond_1b

    .line 332
    const-wide/16 v36, 0x3c

    div-long v36, v30, v36

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v14, v0

    .line 333
    .restart local v14    # "hour":I
    const-wide/16 v36, 0x3c

    rem-long v36, v30, v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v18, v0

    .line 334
    .restart local v18    # "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->tintsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    int-to-long v0, v14

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .end local v14    # "hour":I
    .end local v18    # "min":I
    :goto_a
    const-wide/16 v36, 0x0

    cmp-long v36, v6, v36

    if-lez v36, :cond_1c

    .line 342
    const-wide/16 v36, 0x3c

    div-long v36, v6, v36

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v14, v0

    .line 343
    .restart local v14    # "hour":I
    const-wide/16 v36, 0x3c

    rem-long v36, v6, v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v18, v0

    .line 344
    .restart local v18    # "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->cleartime:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    int-to-long v0, v14

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 344
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .end local v14    # "hour":I
    .end local v18    # "min":I
    :goto_b
    const-wide/16 v36, 0x0

    cmp-long v36, v22, v36

    if-lez v36, :cond_1d

    .line 352
    const-wide/16 v36, 0x3c

    rem-long v36, v22, v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v18, v0

    .line 353
    .restart local v18    # "min":I
    const-wide/16 v36, 0x3c

    div-long v36, v22, v36

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v14, v0

    .line 354
    .restart local v14    # "hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->fallsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    int-to-long v0, v14

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->df:Ljava/text/DecimalFormat;

    move-object/from16 v40, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 301
    .end local v14    # "hour":I
    .end local v18    # "min":I
    :cond_16
    sub-long v36, v22, v30

    sub-long v8, v36, v6

    goto/16 :goto_8

    .line 314
    .restart local v14    # "hour":I
    .restart local v18    # "min":I
    .restart local v24    # "sleep_status":I
    :cond_17
    const/16 v36, 0x6

    move/from16 v0, v24

    move/from16 v1, v36

    if-le v0, v1, :cond_19

    .line 315
    const/16 v36, 0x4

    move/from16 v0, v36

    if-le v14, v0, :cond_18

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 317
    const v38, 0x7f0900ea

    .line 316
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 318
    :cond_18
    const/16 v36, 0x3

    move/from16 v0, v36

    if-le v14, v0, :cond_15

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 320
    const v38, 0x7f0900e8

    .line 319
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 323
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 324
    const v38, 0x7f0900e9

    .line 323
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 327
    .end local v14    # "hour":I
    .end local v18    # "min":I
    .end local v24    # "sleep_status":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->deepsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 328
    const-string v40, "00"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "00"

    aput-object v40, v38, v39

    .line 327
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 337
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->tintsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 338
    const-string v40, "00"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "00"

    aput-object v40, v38, v39

    .line 337
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 347
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->cleartime:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 348
    const-string v40, "00"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "00"

    aput-object v40, v38, v39

    .line 347
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 357
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->fallsleep:Landroid/widget/TextView;

    move-object/from16 v36, v0

    const v37, 0x7f0900d7

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 358
    const-string v40, "00"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "00"

    aput-object v40, v38, v39

    .line 357
    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/smalife/activity/SleepActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 60
    new-instance v0, Lcom/smalife/activity/SleepActivity$PersonObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/smalife/activity/SleepActivity$PersonObserver;-><init>(Lcom/smalife/activity/SleepActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->mObserver:Lcom/smalife/activity/SleepActivity$PersonObserver;

    .line 61
    invoke-virtual {p0}, Lcom/smalife/activity/SleepActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smalife/db/Sma$Sleep;->CONTENT_URI:Landroid/net/Uri;

    .line 62
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/smalife/activity/SleepActivity;->mObserver:Lcom/smalife/activity/SleepActivity$PersonObserver;

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    return-void
.end method

.method private initComplete()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smalife/activity/SleepActivity;->getCurSleepData(I)V

    .line 84
    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smalife/activity/SleepActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->userAccount:Ljava/lang/String;

    .line 67
    const v0, 0x7f0e01d3

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->fallsleep:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0e01cd

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->deepsleep:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0e01cf

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->tintsleep:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0e01d5

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->cleartime:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0e01d4

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->sleep_quality:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0e01d0

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->sleep_day:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->left_btn:Landroid/widget/ImageButton;

    .line 75
    iget-object v0, p0, Lcom/smalife/activity/SleepActivity;->left_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->right_btn:Landroid/widget/ImageButton;

    .line 77
    iget-object v0, p0, Lcom/smalife/activity/SleepActivity;->right_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f0e01d1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/SleepActivity;->sleep_detail_layout:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/smalife/activity/SleepActivity;->sleep_detail_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 368
    :sswitch_0
    invoke-super {p0}, Lcom/smalife/BaseActivity;->share()V

    goto :goto_0

    .line 372
    :sswitch_1
    iget v2, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    .line 375
    iget v2, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    .line 376
    iget v2, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    invoke-direct {p0, v2}, Lcom/smalife/activity/SleepActivity;->getCurSleepData(I)V

    goto :goto_0

    .line 379
    :sswitch_2
    iget v2, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    if-eqz v2, :cond_0

    .line 382
    iget v2, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    .line 383
    iget v2, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    invoke-direct {p0, v2}, Lcom/smalife/activity/SleepActivity;->getCurSleepData(I)V

    goto :goto_0

    .line 386
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/smalife/activity/SleepDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "SM05"

    iget-object v3, p0, Lcom/smalife/activity/SleepActivity;->application:Lcom/smalife/MyApplication;

    .line 388
    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 388
    if-eqz v2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/smalife/activity/SleepActivity;->dao:Lcom/smalife/db/SmaDao;

    invoke-virtual {v2}, Lcom/smalife/db/SmaDao;->getSlist()Ljava/util/ArrayList;

    move-result-object v1

    .line 390
    .local v1, "sleepList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/SleepStatusObject;>;"
    const-string v2, "sleep_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 391
    const-string v2, "sleep_data"

    iget-object v3, p0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 395
    .end local v1    # "sleepList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/SleepStatusObject;>;"
    :goto_1
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :cond_1
    const-string v2, "index"

    iget v3, p0, Lcom/smalife/activity/SleepActivity;->day_index:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x7f0e000e -> :sswitch_0
        0x7f0e00a1 -> :sswitch_1
        0x7f0e00a3 -> :sswitch_2
        0x7f0e01d1 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/smalife/activity/SleepActivity;->init()V

    .line 48
    invoke-direct {p0}, Lcom/smalife/activity/SleepActivity;->initUI()V

    .line 49
    invoke-direct {p0}, Lcom/smalife/activity/SleepActivity;->initComplete()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 55
    invoke-virtual {p0}, Lcom/smalife/activity/SleepActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/SleepActivity;->mObserver:Lcom/smalife/activity/SleepActivity$PersonObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 18

    .prologue
    .line 100
    invoke-super/range {p0 .. p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 101
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/smalife/activity/SleepActivity;->isResume:Z

    if-nez v15, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    if-eqz v15, :cond_0

    .line 105
    const-string v15, "SM05"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smalife/activity/SleepActivity;->application:Lcom/smalife/MyApplication;

    move-object/from16 v16, v0

    .line 106
    invoke-virtual/range {v16 .. v16}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v16

    .line 105
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 106
    if-eqz v15, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v15}, Lcom/smalife/db/entity/SleepEntity;->getWeakup_time()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v14, v0

    .line 108
    .local v14, "wakeup_time":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v15}, Lcom/smalife/db/entity/SleepEntity;->getFallsleep_time()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v5, v0

    .line 109
    .local v5, "fall_time":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v15}, Lcom/smalife/db/entity/SleepEntity;->getDeep_time()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v4, v0

    .line 110
    .local v4, "deep_time":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v15}, Lcom/smalife/db/entity/SleepEntity;->getTint_time()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v9, v0

    .line 111
    .local v9, "tint_time":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v15}, Lcom/smalife/db/entity/SleepEntity;->getClear_time()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v2, v0

    .line 112
    .local v2, "clear_time":I
    sub-int v11, v14, v5

    .line 113
    .local v11, "total_time":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smalife/activity/SleepActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v15}, Lcom/smalife/db/entity/SleepEntity;->getUp_number()I

    move-result v13

    .line 114
    .local v13, "up_number":I
    if-gtz v11, :cond_2

    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v9, 0x0

    .line 118
    const/4 v13, 0x0

    .line 123
    :goto_1
    const/4 v15, 0x7

    new-array v7, v15, [B

    .line 124
    .local v7, "set_sleep":[B
    invoke-static {v11}, Lcom/smalife/ble/ToolKit;->intToBytes2(I)[B

    move-result-object v10

    .line 125
    .local v10, "total":[B
    const/4 v15, 0x0

    new-array v3, v15, [B

    .line 126
    .local v3, "deep":[B
    if-gtz v4, :cond_3

    .line 127
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/smalife/ble/ToolKit;->intToBytes2(I)[B

    move-result-object v3

    .line 131
    :goto_2
    invoke-static {v9}, Lcom/smalife/ble/ToolKit;->intToBytes2(I)[B

    move-result-object v8

    .line 132
    .local v8, "tint":[B
    invoke-static {v13}, Lcom/smalife/ble/ToolKit;->intToBytes2(I)[B

    move-result-object v12

    .line 133
    .local v12, "up":[B
    const/4 v15, 0x0

    const/16 v16, 0x2

    aget-byte v16, v10, v16

    aput-byte v16, v7, v15

    .line 134
    const/4 v15, 0x1

    const/16 v16, 0x3

    aget-byte v16, v10, v16

    aput-byte v16, v7, v15

    .line 135
    const/4 v15, 0x2

    const/16 v16, 0x2

    aget-byte v16, v3, v16

    aput-byte v16, v7, v15

    .line 136
    const/4 v15, 0x3

    const/16 v16, 0x3

    aget-byte v16, v3, v16

    aput-byte v16, v7, v15

    .line 137
    const/4 v15, 0x4

    const/16 v16, 0x2

    aget-byte v16, v8, v16

    aput-byte v16, v7, v15

    .line 138
    const/4 v15, 0x5

    const/16 v16, 0x3

    aget-byte v16, v8, v16

    aput-byte v16, v7, v15

    .line 139
    const/4 v15, 0x6

    const/16 v16, 0x3

    aget-byte v16, v12, v16

    aput-byte v16, v7, v15

    .line 141
    new-instance v6, Landroid/content/Intent;

    .line 142
    const-string v15, "AskAction"

    .line 141
    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v6, "messageIntent":Landroid/content/Intent;
    const-string v15, "action_key"

    .line 144
    const/16 v16, 0x34

    .line 143
    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v15, "sleep_btyes"

    invoke-virtual {v6, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 146
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/smalife/activity/SleepActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 120
    .end local v3    # "deep":[B
    .end local v6    # "messageIntent":Landroid/content/Intent;
    .end local v7    # "set_sleep":[B
    .end local v8    # "tint":[B
    .end local v10    # "total":[B
    .end local v12    # "up":[B
    :cond_2
    sub-int v15, v11, v9

    sub-int v4, v15, v2

    goto :goto_1

    .line 129
    .restart local v3    # "deep":[B
    .restart local v7    # "set_sleep":[B
    .restart local v10    # "total":[B
    :cond_3
    invoke-static {v4}, Lcom/smalife/ble/ToolKit;->intToBytes2(I)[B

    move-result-object v3

    goto :goto_2
.end method
