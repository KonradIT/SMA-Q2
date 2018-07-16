.class public Lcom/smalife/activity/LongSitActivity;
.super Lcom/smalife/BaseActivity;
.source "LongSitActivity.java"

# interfaces
.implements Lcom/smalife/utils/WeekDialog$WeekSelectListener;
.implements Lcom/smalife/wheelview/OnItemSelectedListener;


# instance fields
.field private TEhour:B

.field private TShour:B

.field private back_btn:Landroid/widget/ImageButton;

.field end:I

.field private endWV:Lcom/smalife/wheelview/WheelView;

.field private field:Lcom/smalife/adapter/TimeField;

.field private handler:Landroid/os/Handler;

.field hourData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isOpen:I

.field private longEntity:Lcom/smalife/db/entity/LongSitEntity;

.field private longOpenbtn:Landroid/widget/ImageButton;

.field private long_time_v:Landroid/widget/TextView;

.field private longsit_layout:Landroid/widget/LinearLayout;

.field private mWeeks:[I

.field minData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final select_day:I

.field start:I

.field private startWV:Lcom/smalife/wheelview/WheelView;

.field private final steps:B

.field private steps_layout:Landroid/widget/LinearLayout;

.field private submit:Landroid/widget/ImageButton;

.field private final time:B

.field tlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/adapter/TimeField;",
            ">;"
        }
    .end annotation
.end field

.field private weekArray:[Ljava/lang/String;

.field private weekDays:[I

.field private weekDialog:Lcom/smalife/utils/WeekDialog;

.field private week_layout:Landroid/widget/LinearLayout;

.field private weeks_v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 35
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/smalife/db/entity/LongSitEntity;

    invoke-direct {v0}, Lcom/smalife/db/entity/LongSitEntity;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    .line 45
    new-instance v0, Lcom/smalife/adapter/TimeField;

    invoke-direct {v0}, Lcom/smalife/adapter/TimeField;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LongSitActivity;->field:Lcom/smalife/adapter/TimeField;

    .line 48
    iput-byte v1, p0, Lcom/smalife/activity/LongSitActivity;->steps:B

    .line 49
    iput-byte v1, p0, Lcom/smalife/activity/LongSitActivity;->time:B

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LongSitActivity;->tlist:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/activity/LongSitActivity;->isOpen:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LongSitActivity;->hourData:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LongSitActivity;->minData:Ljava/util/List;

    .line 284
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    .line 301
    const/16 v0, 0x10

    iput v0, p0, Lcom/smalife/activity/LongSitActivity;->select_day:I

    .line 302
    new-instance v0, Lcom/smalife/activity/LongSitActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/LongSitActivity$1;-><init>(Lcom/smalife/activity/LongSitActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/LongSitActivity;->handler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/LongSitActivity;)[I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/LongSitActivity;[I)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/smalife/activity/LongSitActivity;->initDays([I)V

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/activity/LongSitActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/LongSitActivity;->longsit_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/LongSitActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/activity/LongSitActivity;->long_time_v:Landroid/widget/TextView;

    return-object v0
.end method

.method private initData()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 103
    const/16 v7, 0x8

    new-array v6, v7, [I

    .line 104
    .local v6, "weeks":[I
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getLongSitWeekDays()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "weekString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "weekString = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 106
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "weekStrs":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-lez v7, :cond_0

    .line 109
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v7, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v7, :cond_1

    .line 115
    :goto_1
    invoke-virtual {p0, v6}, Lcom/smalife/activity/LongSitActivity;->getTimeField([I)[I

    .line 116
    new-instance v7, Lcom/smalife/utils/WeekDialog;

    iget-object v8, p0, Lcom/smalife/activity/LongSitActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/smalife/utils/WeekDialog;-><init>(Landroid/content/Context;[I)V

    iput-object v7, p0, Lcom/smalife/activity/LongSitActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    .line 117
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    invoke-virtual {v7, p0}, Lcom/smalife/utils/WeekDialog;->setWeekListener(Lcom/smalife/utils/WeekDialog$WeekSelectListener;)V

    .line 118
    invoke-direct {p0, v6}, Lcom/smalife/activity/LongSitActivity;->initDays([I)V

    .line 120
    .end local v3    # "i":I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "weekString = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 121
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->long_time_v:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v9}, Lcom/smalife/MyApplication;->getLongSitTime()B

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getLongSitStart()B

    move-result v1

    .line 123
    .local v1, "currentStart":B
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getLongSitEnd()B

    move-result v0

    .line 125
    .local v0, "currentEnd":B
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "start = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , end = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 126
    if-lez v1, :cond_2

    .line 127
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    add-int/lit8 v8, v1, -0x8

    invoke-virtual {v7, v8}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 128
    add-int/lit8 v7, v1, -0x8

    iput v7, p0, Lcom/smalife/activity/LongSitActivity;->start:I

    .line 133
    :goto_2
    if-lez v0, :cond_3

    .line 134
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    add-int/lit8 v8, v0, -0x9

    invoke-virtual {v7, v8}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 135
    add-int/lit8 v7, v0, -0x9

    iput v7, p0, Lcom/smalife/activity/LongSitActivity;->end:I

    .line 140
    :goto_3
    return-void

    .line 110
    .end local v0    # "currentEnd":B
    .end local v1    # "currentStart":B
    .restart local v3    # "i":I
    :cond_1
    :try_start_1
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 130
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "i":I
    .restart local v0    # "currentEnd":B
    .restart local v1    # "currentStart":B
    :cond_2
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v7, v10}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 131
    iput v10, p0, Lcom/smalife/activity/LongSitActivity;->start:I

    goto :goto_2

    .line 137
    :cond_3
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v7, v10}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 138
    iput v10, p0, Lcom/smalife/activity/LongSitActivity;->end:I

    goto :goto_3
.end method

.method private initDays([I)V
    .locals 12
    .param p1, "weeks"    # [I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 320
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 322
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 323
    .local v1, "index":I
    array-length v5, p1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 354
    iget-object v3, p0, Lcom/smalife/activity/LongSitActivity;->weeks_v:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "index":I
    :cond_0
    return-void

    .line 323
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v1    # "index":I
    :cond_1
    aget v2, p1, v3

    .line 324
    .local v2, "week":I
    if-ne v2, v8, :cond_2

    .line 325
    if-nez v1, :cond_3

    .line 326
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_3
    if-ne v1, v8, :cond_4

    .line 328
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 331
    :cond_4
    if-ne v1, v9, :cond_5

    .line 332
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 335
    :cond_5
    if-ne v1, v10, :cond_6

    .line 336
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 339
    :cond_6
    if-ne v1, v11, :cond_7

    .line 340
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 343
    :cond_7
    const/4 v6, 0x5

    if-ne v1, v6, :cond_8

    .line 344
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekArray:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 347
    :cond_8
    const/4 v6, 0x6

    if-ne v1, v6, :cond_2

    .line 348
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekArray:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private initUI()V
    .locals 7

    .prologue
    const v6, 0x7f0e00fd

    const v5, 0x7f0e00fc

    const/16 v4, 0xa

    .line 68
    const v1, 0x7f0e0062

    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->week_layout:Landroid/widget/LinearLayout;

    .line 69
    const v1, 0x7f0e011a

    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->longsit_layout:Landroid/widget/LinearLayout;

    .line 70
    const v1, 0x7f0e011b

    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->steps_layout:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->longsit_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->week_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->steps_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0e0100

    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->long_time_v:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0e0063

    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->weeks_v:Landroid/widget/TextView;

    .line 76
    new-instance v1, Lcom/smalife/utils/WeekDialog;

    iget-object v2, p0, Lcom/smalife/activity/LongSitActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/smalife/activity/LongSitActivity;->mWeeks:[I

    invoke-direct {v1, v2, v3}, Lcom/smalife/utils/WeekDialog;-><init>(Landroid/content/Context;[I)V

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    .line 77
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    invoke-virtual {v1, p0}, Lcom/smalife/utils/WeekDialog;->setWeekListener(Lcom/smalife/utils/WeekDialog$WeekSelectListener;)V

    .line 79
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 82
    const/16 v0, 0x9

    :goto_1
    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    .line 85
    invoke-virtual {p0, v5}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/smalife/wheelview/WheelView;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    .line 86
    invoke-virtual {p0, v6}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/smalife/wheelview/WheelView;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    .line 87
    iget-object v2, p0, Lcom/smalife/activity/LongSitActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    new-instance v3, Lcom/smalife/wheelview/ArrayWheelAdapter;

    .line 88
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->hourData:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smalife/activity/LongSitActivity;->hourData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    .line 87
    invoke-virtual {v2, v3, v5}, Lcom/smalife/wheelview/WheelView;->setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V

    .line 89
    iget-object v2, p0, Lcom/smalife/activity/LongSitActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    new-instance v3, Lcom/smalife/wheelview/ArrayWheelAdapter;

    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->minData:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    .line 90
    iget-object v4, p0, Lcom/smalife/activity/LongSitActivity;->minData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    .line 89
    invoke-virtual {v2, v3, v6}, Lcom/smalife/wheelview/WheelView;->setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V

    .line 91
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->startWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v1, p0}, Lcom/smalife/wheelview/WheelView;->setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V

    .line 92
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->endWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v1, p0}, Lcom/smalife/wheelview/WheelView;->setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V

    .line 94
    const v1, 0x7f0e002c

    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->submit:Landroid/widget/ImageButton;

    .line 95
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->submit:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f0e0006

    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->back_btn:Landroid/widget/ImageButton;

    .line 97
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0e011d

    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/smalife/activity/LongSitActivity;->longOpenbtn:Landroid/widget/ImageButton;

    .line 99
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->longOpenbtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/LongSitActivity;->hourData:Ljava/util/List;

    if-ge v0, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":00"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/smalife/activity/LongSitActivity;->minData:Ljava/util/List;

    if-ge v0, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":59"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 83
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":59"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private longSitOpenOrClose(ZLcom/smalife/db/entity/LongSitEntity;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "entity"    # Lcom/smalife/db/entity/LongSitEntity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AskAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "askIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 361
    iput v3, p0, Lcom/smalife/activity/LongSitActivity;->isOpen:I

    .line 362
    invoke-virtual {p2, v3}, Lcom/smalife/db/entity/LongSitEntity;->setOpen(B)V

    .line 367
    :goto_0
    const-string v1, "action_key"

    .line 368
    const/16 v2, 0x25

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string v1, "long_sit"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lcom/smalife/activity/LongSitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    return-void

    .line 364
    :cond_0
    iput v2, p0, Lcom/smalife/activity/LongSitActivity;->isOpen:I

    .line 365
    invoke-virtual {p2, v2}, Lcom/smalife/db/entity/LongSitEntity;->setOpen(B)V

    goto :goto_0
.end method


# virtual methods
.method public cancelSetting()V
    .locals 6

    .prologue
    .line 380
    const/16 v4, 0x8

    new-array v3, v4, [I

    .line 381
    .local v3, "weeks":[I
    iget-object v4, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getLongSitWeekDays()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "weekString":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "weekStrs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    .line 387
    invoke-virtual {p0, v3}, Lcom/smalife/activity/LongSitActivity;->getTimeField([I)[I

    .line 388
    new-instance v4, Lcom/smalife/utils/WeekDialog;

    iget-object v5, p0, Lcom/smalife/activity/LongSitActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/smalife/utils/WeekDialog;-><init>(Landroid/content/Context;[I)V

    iput-object v4, p0, Lcom/smalife/activity/LongSitActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    .line 389
    iget-object v4, p0, Lcom/smalife/activity/LongSitActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    invoke-virtual {v4, p0}, Lcom/smalife/utils/WeekDialog;->setWeekListener(Lcom/smalife/utils/WeekDialog$WeekSelectListener;)V

    .line 391
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 385
    .restart local v0    # "i":I
    :cond_1
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dismissListener()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/smalife/activity/LongSitActivity;->week_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 376
    return-void
.end method

.method public getTimeField([I)[I
    .locals 8
    .param p1, "days"    # [I

    .prologue
    .line 288
    iput-object p1, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    .line 289
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->field:Lcom/smalife/adapter/TimeField;

    const/4 v2, 0x0

    iput v2, v1, Lcom/smalife/adapter/TimeField;->repeat:I

    .line 290
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 297
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    return-object p1

    .line 292
    .restart local v0    # "i":I
    :cond_1
    aget v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 293
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->field:Lcom/smalife/adapter/TimeField;

    iget v2, v1, Lcom/smalife/adapter/TimeField;->repeat:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Lcom/smalife/adapter/TimeField;->repeat:I

    .line 291
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v11, 0x1e

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 282
    :goto_0
    :sswitch_0
    return-void

    .line 164
    :sswitch_1
    invoke-virtual {p0}, Lcom/smalife/activity/LongSitActivity;->finish()V

    goto :goto_0

    .line 167
    :sswitch_2
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->week_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 168
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    invoke-virtual {v6}, Lcom/smalife/utils/WeekDialog;->show()V

    goto :goto_0

    .line 171
    :sswitch_3
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longsit_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 172
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 173
    .local v2, "et":Landroid/widget/EditText;
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 174
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smalife/activity/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090136

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 178
    invoke-virtual {p0}, Lcom/smalife/activity/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 179
    const v9, 0x7f090141

    .line 178
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 179
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 176
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 180
    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 182
    invoke-virtual {p0}, Lcom/smalife/activity/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900cc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 183
    new-instance v8, Lcom/smalife/activity/LongSitActivity$2;

    invoke-direct {v8, p0}, Lcom/smalife/activity/LongSitActivity$2;-><init>(Lcom/smalife/activity/LongSitActivity;)V

    .line 181
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 192
    invoke-virtual {p0}, Lcom/smalife/activity/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900cd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 193
    new-instance v8, Lcom/smalife/activity/LongSitActivity$3;

    invoke-direct {v8, p0, v2}, Lcom/smalife/activity/LongSitActivity$3;-><init>(Lcom/smalife/activity/LongSitActivity;Landroid/widget/EditText;)V

    .line 191
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 202
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 203
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 208
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "et":Landroid/widget/EditText;
    :sswitch_4
    iget v6, p0, Lcom/smalife/activity/LongSitActivity;->isOpen:I

    if-nez v6, :cond_0

    .line 209
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->field:Lcom/smalife/adapter/TimeField;

    iget v6, v6, Lcom/smalife/adapter/TimeField;->repeat:I

    if-gtz v6, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/smalife/activity/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 213
    const v7, 0x7f0900f1

    .line 212
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    const/16 v7, 0x32

    .line 210
    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 213
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 218
    :cond_0
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->minData:Ljava/util/List;

    iget v7, p0, Lcom/smalife/activity/LongSitActivity;->end:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 219
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->hourData:Ljava/util/List;

    iget v8, p0, Lcom/smalife/activity/LongSitActivity;->start:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gt v7, v6, :cond_1

    .line 221
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->context:Landroid/content/Context;

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smalife/activity/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 223
    const v9, 0x7f090140

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->hourData:Ljava/util/List;

    iget v9, p0, Lcom/smalife/activity/LongSitActivity;->start:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-static {v7, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 225
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 230
    :cond_1
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v6, v6, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v6, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/smalife/activity/LongSitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 233
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 237
    :cond_2
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->hourData:Ljava/util/List;

    .line 238
    iget v8, p0, Lcom/smalife/activity/LongSitActivity;->start:I

    .line 237
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 238
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v7, v6}, Lcom/smalife/MyApplication;->editLongSitStart(B)V

    .line 239
    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->minData:Ljava/util/List;

    iget v8, p0, Lcom/smalife/activity/LongSitActivity;->end:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 240
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    .line 239
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v7, v6}, Lcom/smalife/MyApplication;->editLongSitEnd(B)V

    .line 242
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    invoke-virtual {v6, v7}, Lcom/smalife/db/entity/LongSitEntity;->setDays([I)V

    .line 243
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getLongSitStart()B

    move-result v7

    invoke-virtual {v6, v7}, Lcom/smalife/db/entity/LongSitEntity;->setStart(B)V

    .line 244
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getLongSitEnd()B

    move-result v7

    invoke-virtual {v6, v7}, Lcom/smalife/db/entity/LongSitEntity;->setEnd(B)V

    .line 245
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    invoke-virtual {v6, v11}, Lcom/smalife/db/entity/LongSitEntity;->setSteps(I)V

    .line 246
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->field:Lcom/smalife/adapter/TimeField;

    invoke-virtual {v7}, Lcom/smalife/adapter/TimeField;->getRepeat()I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lcom/smalife/db/entity/LongSitEntity;->setReapte(B)V

    .line 248
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .local v0, "bufr":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    array-length v6, v6

    if-lez v6, :cond_3

    .line 250
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    array-length v6, v6

    if-lt v3, v6, :cond_5

    .line 258
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "weeks":Ljava/lang/String;
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v5}, Lcom/smalife/MyApplication;->editLongSitWeekDays(Ljava/lang/String;)V

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "weeks = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 261
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v11}, Lcom/smalife/MyApplication;->editLongSitSteps(B)V

    .line 262
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->field:Lcom/smalife/adapter/TimeField;

    invoke-virtual {v7}, Lcom/smalife/adapter/TimeField;->getRepeat()I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lcom/smalife/MyApplication;->editLongSitReapte(B)V

    .line 263
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->long_time_v:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "t":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v4, :cond_7

    .line 265
    :cond_4
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    invoke-virtual {v6, v11}, Lcom/smalife/db/entity/LongSitEntity;->setSit(B)V

    .line 266
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v11}, Lcom/smalife/MyApplication;->editLongSitTime(B)V

    .line 271
    :goto_2
    iget v6, p0, Lcom/smalife/activity/LongSitActivity;->isOpen:I

    if-nez v6, :cond_8

    .line 272
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    invoke-direct {p0, v10, v6}, Lcom/smalife/activity/LongSitActivity;->longSitOpenOrClose(ZLcom/smalife/db/entity/LongSitEntity;)V

    .line 273
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longOpenbtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 274
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v10}, Lcom/smalife/MyApplication;->editLongSitEnable(Z)V

    goto/16 :goto_0

    .line 251
    .end local v4    # "t":Ljava/lang/String;
    .end local v5    # "weeks":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_6

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 254
    :cond_6
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->weekDays:[I

    aget v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 268
    .end local v3    # "i":I
    .restart local v4    # "t":Ljava/lang/String;
    .restart local v5    # "weeks":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lcom/smalife/db/entity/LongSitEntity;->setSit(B)V

    .line 269
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lcom/smalife/MyApplication;->editLongSitTime(B)V

    goto :goto_2

    .line 276
    :cond_8
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longEntity:Lcom/smalife/db/entity/LongSitEntity;

    invoke-direct {p0, v9, v6}, Lcom/smalife/activity/LongSitActivity;->longSitOpenOrClose(ZLcom/smalife/db/entity/LongSitEntity;)V

    .line 277
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->longOpenbtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 278
    iget-object v6, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v9}, Lcom/smalife/MyApplication;->editLongSitEnable(Z)V

    goto/16 :goto_0

    .line 162
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_1
        0x7f0e0062 -> :sswitch_2
        0x7f0e011a -> :sswitch_3
        0x7f0e011b -> :sswitch_0
        0x7f0e011d -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LongSitActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LongSitActivity;->setContentView(I)V

    .line 62
    iget-object v0, p0, Lcom/smalife/activity/LongSitActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/LongSitActivity;->weekArray:[Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/smalife/activity/LongSitActivity;->initUI()V

    .line 64
    invoke-direct {p0}, Lcom/smalife/activity/LongSitActivity;->initData()V

    .line 65
    return-void
.end method

.method public onItemSelected(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "id"    # I

    .prologue
    .line 397
    packed-switch p2, :pswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iput p1, p0, Lcom/smalife/activity/LongSitActivity;->start:I

    goto :goto_0

    .line 402
    :pswitch_1
    iput p1, p0, Lcom/smalife/activity/LongSitActivity;->end:I

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x7f0e00fc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 145
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v0

    .line 147
    .local v0, "hasBond":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Landroid/content/Intent;

    .line 149
    const-class v4, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/smalife/activity/LongSitActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getLongSitEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/smalife/activity/LongSitActivity;->isOpen:I

    .line 152
    iget v1, p0, Lcom/smalife/activity/LongSitActivity;->isOpen:I

    if-nez v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->longOpenbtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 158
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 151
    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity;->longOpenbtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1
.end method
