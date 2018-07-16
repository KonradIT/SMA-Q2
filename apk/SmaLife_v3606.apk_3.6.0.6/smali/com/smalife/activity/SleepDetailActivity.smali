.class public Lcom/smalife/activity/SleepDetailActivity;
.super Landroid/app/Activity;
.source "SleepDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageButton;

.field private chart:Lcom/smalife/utils/BarChartPanel;

.field private cleartime:Landroid/widget/TextView;

.field content_layout:Landroid/widget/LinearLayout;

.field private dao:Lcom/smalife/db/SmaDao;

.field private deepsleep:Landroid/widget/TextView;

.field private df:Ljava/text/DecimalFormat;

.field private fallsleep:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private sleep:Lcom/smalife/db/entity/SleepEntity;

.field private sleeptime:Landroid/widget/TextView;

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

.field private tintsleep:Landroid/widget/TextView;

.field private final update_msg:I

.field private wakeup:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/16 v0, 0x10

    iput v0, p0, Lcom/smalife/activity/SleepDetailActivity;->update_msg:I

    .line 41
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    .line 244
    new-instance v0, Lcom/smalife/activity/SleepDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SleepDetailActivity$1;-><init>(Lcom/smalife/activity/SleepDetailActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/db/entity/SleepEntity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->deepsleep:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/SleepDetailActivity;)Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->tintsleep:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->cleartime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->sleeptime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->fallsleep:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/smalife/activity/SleepDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->wakeup:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/smalife/activity/SleepDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/smalife/activity/SleepDetailActivity;)Lcom/smalife/utils/BarChartPanel;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->chart:Lcom/smalife/utils/BarChartPanel;

    return-object v0
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 6
    .param p1, "index_day"    # I

    .prologue
    const/4 v5, 0x5

    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 237
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 238
    .local v1, "day":I
    add-int v4, v1, p1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 239
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 240
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 241
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0e011e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->content_layout:Landroid/widget/LinearLayout;

    .line 56
    const v0, 0x7f0e01ca

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->fallsleep:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0e01cc

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->wakeup:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0e01cd

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->deepsleep:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0e01cf

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->tintsleep:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0e01ce

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->cleartime:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e01cb

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->sleeptime:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->back_btn:Landroid/widget/ImageButton;

    .line 63
    iget-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0e01c9

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/utils/BarChartPanel;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->chart:Lcom/smalife/utils/BarChartPanel;

    .line 65
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 349
    :pswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/SleepDetailActivity;->finish()V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x7f0e0006
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SleepDetailActivity;->setContentView(I)V

    .line 49
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 50
    invoke-virtual {p0}, Lcom/smalife/activity/SleepDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/SleepDetailActivity;->application:Lcom/smalife/MyApplication;

    .line 51
    invoke-direct {p0}, Lcom/smalife/activity/SleepDetailActivity;->initUI()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 36

    .prologue
    .line 69
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 70
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v31

    .line 71
    .local v31, "userAccount":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/smalife/activity/SleepDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 72
    .local v17, "intent":Landroid/content/Intent;
    const-string v4, "SM05"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/activity/SleepDetailActivity;->application:Lcom/smalife/MyApplication;

    .line 73
    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 76
    const-string v4, "sleep_status"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    .line 75
    check-cast v24, Ljava/util/ArrayList;

    .line 77
    .local v24, "serializableExtra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/SleepStatusObject;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    .line 78
    const-string v4, "sleep_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/SleepEntity;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    .line 79
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->sleep:Lcom/smalife/db/entity/SleepEntity;

    if-eqz v4, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->handler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    .end local v24    # "serializableExtra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/entity/SleepStatusObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v4, "index"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 84
    .local v16, "index":I
    add-int/lit8 v4, v16, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/smalife/activity/SleepDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v22

    .line 85
    .local v22, "pre":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smalife/activity/SleepDetailActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v29

    .line 86
    .local v29, "today":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->dao:Lcom/smalife/db/SmaDao;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Lcom/smalife/db/SmaDao;->getOneDaySleepList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 88
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/SleepEntity;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 91
    const/16 v18, 0x0

    .line 93
    .local v18, "isHaveFallSleep":Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v15, v4, -0x1

    .local v15, "i":I
    :goto_1
    if-gez v15, :cond_6

    .line 105
    const/4 v11, 0x0

    .line 109
    .local v11, "deep":I
    const/16 v28, 0x0

    .line 113
    .local v28, "tint":I
    const/4 v10, 0x0

    .line 115
    .local v10, "clear":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    .line 116
    const/4 v15, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v15, v4, :cond_9

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/entity/SleepStatusObject;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/entity/SleepStatusObject;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/smalife/entity/SleepStatusObject;->setAction_long(I)V

    .line 150
    new-instance v25, Lcom/smalife/entity/SleepStatusObject;

    invoke-direct/range {v25 .. v25}, Lcom/smalife/entity/SleepStatusObject;-><init>()V

    .line 151
    .local v25, "so":Lcom/smalife/entity/SleepStatusObject;
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v4}, Lcom/smalife/entity/SleepStatusObject;->getAction_time()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/smalife/entity/SleepStatusObject;->setAction_time(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/entity/SleepStatusObject;

    invoke-virtual {v4}, Lcom/smalife/entity/SleepStatusObject;->getAction_long()I

    move-result v4

    add-int/lit8 v4, v4, -0xf

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/smalife/entity/SleepStatusObject;->setAction_long(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 157
    .end local v25    # "so":Lcom/smalife/entity/SleepStatusObject;
    :cond_2
    add-int v4, v11, v28

    add-int v30, v4, v10

    .line 158
    .local v30, "total":I
    if-lez v30, :cond_f

    .line 159
    rem-int/lit8 v20, v30, 0x3c

    .line 160
    .local v20, "min":I
    div-int/lit8 v4, v30, 0x3c

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v14, v4

    .line 161
    .local v14, "hour":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->sleeptime:Landroid/widget/TextView;

    const v5, 0x7f0900d7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 162
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    int-to-long v0, v14

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .end local v14    # "hour":I
    .end local v20    # "min":I
    :goto_3
    div-int/lit8 v30, v30, 0x3c

    .line 169
    if-lez v11, :cond_10

    .line 170
    div-int/lit8 v4, v11, 0x3c

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v14, v4

    .line 171
    .restart local v14    # "hour":I
    rem-int/lit8 v20, v11, 0x3c

    .line 172
    .restart local v20    # "min":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->deepsleep:Landroid/widget/TextView;

    const v5, 0x7f0900d7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 173
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    int-to-long v0, v14

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v14    # "hour":I
    .end local v20    # "min":I
    :goto_4
    if-lez v28, :cond_11

    .line 180
    div-int/lit8 v4, v28, 0x3c

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v14, v4

    .line 181
    .restart local v14    # "hour":I
    rem-int/lit8 v20, v28, 0x3c

    .line 182
    .restart local v20    # "min":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->tintsleep:Landroid/widget/TextView;

    const v5, 0x7f0900d7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 183
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    int-to-long v0, v14

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 182
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .end local v14    # "hour":I
    .end local v20    # "min":I
    :goto_5
    if-lez v10, :cond_12

    .line 190
    div-int/lit8 v4, v10, 0x3c

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v14, v4

    .line 191
    .restart local v14    # "hour":I
    rem-int/lit8 v20, v10, 0x3c

    .line 192
    .restart local v20    # "min":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->cleartime:Landroid/widget/TextView;

    const v5, 0x7f0900d7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 193
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    int-to-long v0, v14

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smalife/activity/SleepDetailActivity;->df:Ljava/text/DecimalFormat;

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 192
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .end local v14    # "hour":I
    .end local v20    # "min":I
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 200
    .local v13, "fall_time":I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/SleepEntity;

    .line 201
    invoke-virtual {v4}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 203
    .local v32, "wakeup_time":I
    if-ltz v13, :cond_3

    .line 204
    rem-int/lit8 v20, v13, 0x3c

    .line 205
    .restart local v20    # "min":I
    div-int/lit8 v4, v13, 0x3c

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v14, v4

    .line 206
    .restart local v14    # "hour":I
    const/16 v4, 0xa

    move/from16 v0, v20

    if-ge v0, v4, :cond_13

    if-ltz v20, :cond_13

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->fallsleep:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .end local v14    # "hour":I
    .end local v20    # "min":I
    :cond_3
    :goto_7
    if-ltz v32, :cond_5

    .line 214
    rem-int/lit8 v20, v32, 0x3c

    .line 215
    .restart local v20    # "min":I
    const/16 v4, 0x258

    move/from16 v0, v32

    if-le v0, v4, :cond_4

    .line 216
    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x5a0

    move/from16 v32, v0

    .line 218
    :cond_4
    div-int/lit8 v4, v32, 0x3c

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v14, v4

    .line 219
    .restart local v14    # "hour":I
    const/16 v4, 0xa

    move/from16 v0, v20

    if-ge v0, v4, :cond_14

    if-ltz v20, :cond_14

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->wakeup:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .end local v14    # "hour":I
    .end local v20    # "min":I
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->chart:Lcom/smalife/utils/BarChartPanel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    int-to-long v6, v13

    move/from16 v0, v32

    add-int/lit16 v8, v0, 0x5a0

    int-to-long v8, v8

    invoke-virtual/range {v4 .. v9}, Lcom/smalife/utils/BarChartPanel;->updateSeries(Ljava/util/ArrayList;JJ)V

    goto/16 :goto_0

    .line 94
    .end local v10    # "clear":I
    .end local v11    # "deep":I
    .end local v13    # "fall_time":I
    .end local v28    # "tint":I
    .end local v30    # "total":I
    .end local v32    # "wakeup_time":I
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/smalife/db/entity/SleepEntity;

    .line 95
    .local v23, "se":Lcom/smalife/db/entity/SleepEntity;
    if-eqz v18, :cond_7

    .line 96
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/smalife/db/entity/SleepEntity;->getSleep_type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    invoke-virtual/range {v23 .. v23}, Lcom/smalife/db/entity/SleepEntity;->getSleep_model()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 99
    const/16 v18, 0x1

    .line 93
    :cond_8
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_1

    .line 117
    .end local v23    # "se":Lcom/smalife/db/entity/SleepEntity;
    .restart local v10    # "clear":I
    .restart local v11    # "deep":I
    .restart local v28    # "tint":I
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 118
    .local v26, "start":I
    add-int/lit8 v4, v15, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/SleepEntity;->getActionTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 119
    .local v12, "end":I
    const/16 v4, 0x258

    move/from16 v0, v26

    if-gt v0, v4, :cond_a

    .line 120
    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x5a0

    move/from16 v26, v0

    .line 122
    :cond_a
    const/16 v4, 0x258

    if-gt v12, v4, :cond_b

    .line 123
    add-int/lit16 v12, v12, 0x5a0

    .line 126
    :cond_b
    const/16 v27, 0x0

    .line 127
    .local v27, "time":I
    move/from16 v0, v26

    if-le v12, v0, :cond_c

    .line 128
    sub-int v27, v12, v26

    .line 131
    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smalife/db/entity/SleepEntity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/SleepEntity;->getSleep_model()I

    move-result v21

    .line 132
    .local v21, "mode":I
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_d

    .line 133
    add-int v11, v11, v27

    .line 140
    :goto_9
    new-instance v25, Lcom/smalife/entity/SleepStatusObject;

    invoke-direct/range {v25 .. v25}, Lcom/smalife/entity/SleepStatusObject;-><init>()V

    .line 141
    .restart local v25    # "so":Lcom/smalife/entity/SleepStatusObject;
    invoke-virtual/range {v25 .. v26}, Lcom/smalife/entity/SleepStatusObject;->setAction_time(I)V

    .line 142
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smalife/entity/SleepStatusObject;->setAction_long(I)V

    .line 143
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/smalife/entity/SleepStatusObject;->setAction_type(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->slist:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 134
    .end local v25    # "so":Lcom/smalife/entity/SleepStatusObject;
    :cond_d
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_e

    .line 135
    add-int v28, v28, v27

    .line 136
    goto :goto_9

    .line 137
    :cond_e
    add-int v10, v10, v27

    goto :goto_9

    .line 164
    .end local v12    # "end":I
    .end local v21    # "mode":I
    .end local v26    # "start":I
    .end local v27    # "time":I
    .restart local v30    # "total":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->sleeptime:Landroid/widget/TextView;

    const v5, 0x7f0900d7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 165
    const-string v8, "00"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "00"

    aput-object v8, v6, v7

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 175
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->deepsleep:Landroid/widget/TextView;

    const v5, 0x7f0900d7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 176
    const-string v8, "00"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "00"

    aput-object v8, v6, v7

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 185
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->tintsleep:Landroid/widget/TextView;

    const v5, 0x7f0900d7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 186
    const-string v8, "00"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "00"

    aput-object v8, v6, v7

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 195
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->cleartime:Landroid/widget/TextView;

    const v5, 0x7f0900d7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 196
    const-string v8, "00"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "00"

    aput-object v8, v6, v7

    .line 195
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/smalife/activity/SleepDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 209
    .restart local v13    # "fall_time":I
    .restart local v14    # "hour":I
    .restart local v20    # "min":I
    .restart local v32    # "wakeup_time":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->fallsleep:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 222
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smalife/activity/SleepDetailActivity;->wakeup:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method
