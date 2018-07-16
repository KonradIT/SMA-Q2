.class public Lcom/smalife/activity/ClockSettingActivity;
.super Lcom/smalife/BaseActivity;
.source "ClockSettingActivity.java"

# interfaces
.implements Lcom/smalife/utils/WeekDialog$WeekSelectListener;
.implements Lcom/smalife/wheelview/OnItemSelectedListener;


# instance fields
.field private TMinute:B

.field private Thour:B

.field private back_btn:Landroid/widget/ImageButton;

.field private cancelWeeks:[I

.field private clockEntity:Lcom/smalife/entity/ClockEntity;

.field private currentHour:B

.field private currentMinute:B

.field private dao:Lcom/smalife/db/SmaDao;

.field private day:B

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

.field private hourWV:Lcom/smalife/wheelview/WheelView;

.field isModify:Z

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

.field private minuteWV:Lcom/smalife/wheelview/WheelView;

.field private month:B

.field private name_layout:Landroid/widget/LinearLayout;

.field private name_v:Landroid/widget/TextView;

.field private final select_day:I

.field private submit:Landroid/widget/ImageButton;

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

.field private userAccount:Ljava/lang/String;

.field private weekArray:[Ljava/lang/String;

.field private weekDays:[I

.field private weekDialog:Lcom/smalife/utils/WeekDialog;

.field private weekDialogisChecked:Z

.field private week_layout:Landroid/widget/LinearLayout;

.field private weeks_v:Landroid/widget/TextView;

.field private year:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->hourData:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->minData:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/smalife/adapter/TimeField;

    invoke-direct {v0}, Lcom/smalife/adapter/TimeField;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->tlist:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->cancelWeeks:[I

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/activity/ClockSettingActivity;->isModify:Z

    .line 437
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    .line 454
    const/16 v0, 0x10

    iput v0, p0, Lcom/smalife/activity/ClockSettingActivity;->select_day:I

    .line 455
    new-instance v0, Lcom/smalife/activity/ClockSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/ClockSettingActivity$1;-><init>(Lcom/smalife/activity/ClockSettingActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->handler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/ClockSettingActivity;)[I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/ClockSettingActivity;[I)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/smalife/activity/ClockSettingActivity;->initDays([I)V

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/activity/ClockSettingActivity;)Lcom/smalife/db/SmaDao;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->dao:Lcom/smalife/db/SmaDao;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/ClockSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/ClockSettingActivity;)Lcom/smalife/entity/ClockEntity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/ClockSettingActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->name_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/ClockSettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->name_v:Landroid/widget/TextView;

    return-object v0
.end method

.method private getCurrentTime()V
    .locals 7

    .prologue
    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    .local v0, "c":Ljava/util/Calendar;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    int-to-byte v5, v6

    .line 79
    .local v5, "year":B
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-byte v4, v6

    .line 80
    .local v4, "month":B
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v1, v6

    .line 81
    .local v1, "day":B
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v2, v6

    .line 82
    .local v2, "hour":B
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v3, v6

    .line 83
    .local v3, "mintue":B
    iput-byte v2, p0, Lcom/smalife/activity/ClockSettingActivity;->currentHour:B

    .line 84
    iput-byte v3, p0, Lcom/smalife/activity/ClockSettingActivity;->currentMinute:B

    .line 85
    iput-byte v5, p0, Lcom/smalife/activity/ClockSettingActivity;->year:B

    .line 86
    iput-byte v4, p0, Lcom/smalife/activity/ClockSettingActivity;->month:B

    .line 87
    iput-byte v1, p0, Lcom/smalife/activity/ClockSettingActivity;->day:B

    .line 88
    return-void
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

    .line 473
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 474
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 476
    .local v1, "index":I
    array-length v5, p1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 507
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weeks_v:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "index":I
    :cond_0
    return-void

    .line 476
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v1    # "index":I
    :cond_1
    aget v2, p1, v3

    .line 477
    .local v2, "week":I
    if-ne v2, v8, :cond_2

    .line 478
    if-nez v1, :cond_3

    .line 479
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_3
    if-ne v1, v8, :cond_4

    .line 481
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 484
    :cond_4
    if-ne v1, v9, :cond_5

    .line 485
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 488
    :cond_5
    if-ne v1, v10, :cond_6

    .line 489
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 492
    :cond_6
    if-ne v1, v11, :cond_7

    .line 493
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 496
    :cond_7
    const/4 v6, 0x5

    if-ne v1, v6, :cond_8

    .line 497
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekArray:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 500
    :cond_8
    const/4 v6, 0x6

    if-ne v1, v6, :cond_2

    .line 501
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekArray:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private initUI()V
    .locals 10

    .prologue
    const v9, 0x7f0e0061

    const v8, 0x7f0e0060

    const/16 v7, 0xa

    .line 91
    const v4, 0x7f0e0062

    invoke-virtual {p0, v4}, Lcom/smalife/activity/ClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->week_layout:Landroid/widget/LinearLayout;

    .line 92
    const v4, 0x7f0e0064

    invoke-virtual {p0, v4}, Lcom/smalife/activity/ClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->name_layout:Landroid/widget/LinearLayout;

    .line 93
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->name_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->week_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v4, 0x7f0e0063

    invoke-virtual {p0, v4}, Lcom/smalife/activity/ClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->weeks_v:Landroid/widget/TextView;

    .line 96
    const v4, 0x7f0e0065

    invoke-virtual {p0, v4}, Lcom/smalife/activity/ClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->name_v:Landroid/widget/TextView;

    .line 98
    new-instance v4, Lcom/smalife/utils/WeekDialog;

    iget-object v5, p0, Lcom/smalife/activity/ClockSettingActivity;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->mWeeks:[I

    invoke-direct {v4, v5, v6}, Lcom/smalife/utils/WeekDialog;-><init>(Landroid/content/Context;[I)V

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    .line 99
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    invoke-virtual {v4, p0}, Lcom/smalife/utils/WeekDialog;->setWeekListener(Lcom/smalife/utils/WeekDialog$WeekSelectListener;)V

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 104
    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x3c

    if-lt v2, v4, :cond_2

    .line 108
    invoke-virtual {p0, v8}, Lcom/smalife/activity/ClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/smalife/wheelview/WheelView;

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->hourWV:Lcom/smalife/wheelview/WheelView;

    .line 109
    invoke-virtual {p0, v9}, Lcom/smalife/activity/ClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/smalife/wheelview/WheelView;

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->minuteWV:Lcom/smalife/wheelview/WheelView;

    .line 110
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->hourWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v4, p0}, Lcom/smalife/wheelview/WheelView;->setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V

    .line 111
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->minuteWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v4, p0}, Lcom/smalife/wheelview/WheelView;->setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V

    .line 112
    iget-object v5, p0, Lcom/smalife/activity/ClockSettingActivity;->hourWV:Lcom/smalife/wheelview/WheelView;

    new-instance v6, Lcom/smalife/wheelview/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->hourData:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    .line 113
    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->hourData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    .line 112
    invoke-virtual {v5, v6, v8}, Lcom/smalife/wheelview/WheelView;->setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V

    .line 114
    iget-object v5, p0, Lcom/smalife/activity/ClockSettingActivity;->minuteWV:Lcom/smalife/wheelview/WheelView;

    new-instance v6, Lcom/smalife/wheelview/ArrayWheelAdapter;

    .line 115
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->minData:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->minData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    .line 114
    invoke-virtual {v5, v6, v9}, Lcom/smalife/wheelview/WheelView;->setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V

    .line 117
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 118
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 119
    .local v1, "hours":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    .line 121
    .local v3, "minutes":I
    int-to-byte v4, v1

    iput-byte v4, p0, Lcom/smalife/activity/ClockSettingActivity;->Thour:B

    .line 122
    int-to-byte v4, v3

    iput-byte v4, p0, Lcom/smalife/activity/ClockSettingActivity;->TMinute:B

    .line 124
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->hourWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v4, v1}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 125
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->minuteWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v4, v3}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 127
    const v4, 0x7f0e002c

    invoke-virtual {p0, v4}, Lcom/smalife/activity/ClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->submit:Landroid/widget/ImageButton;

    .line 128
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->submit:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v4, 0x7f0e0006

    invoke-virtual {p0, v4}, Lcom/smalife/activity/ClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->back_btn:Landroid/widget/ImageButton;

    .line 130
    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void

    .line 102
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "hours":I
    .end local v3    # "minutes":I
    :cond_0
    iget-object v5, p0, Lcom/smalife/activity/ClockSettingActivity;->hourData:Ljava/util/List;

    if-ge v2, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 102
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 105
    :cond_2
    iget-object v5, p0, Lcom/smalife/activity/ClockSettingActivity;->minData:Ljava/util/List;

    if-ge v2, v7, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 105
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private modifyClock()V
    .locals 5

    .prologue
    .line 361
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    if-eqz v2, :cond_1

    .line 362
    iget-byte v2, p0, Lcom/smalife/activity/ClockSettingActivity;->Thour:B

    iget-byte v3, p0, Lcom/smalife/activity/ClockSettingActivity;->TMinute:B

    invoke-direct {p0, v2, v3}, Lcom/smalife/activity/ClockSettingActivity;->setClock_timeFormat(BB)V

    .line 363
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->name_v:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setClockName(Ljava/lang/String;)V

    .line 365
    iget-boolean v2, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDialogisChecked:Z

    if-eqz v2, :cond_0

    .line 366
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 376
    .end local v0    # "j":I
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-byte v3, p0, Lcom/smalife/activity/ClockSettingActivity;->year:B

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setYear(I)V

    .line 377
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-byte v3, p0, Lcom/smalife/activity/ClockSettingActivity;->month:B

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setMonth(I)V

    .line 378
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-byte v3, p0, Lcom/smalife/activity/ClockSettingActivity;->day:B

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setDay(I)V

    .line 379
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget v3, v3, Lcom/smalife/adapter/TimeField;->repeat:I

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setRepeat(I)V

    .line 380
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v3}, Lcom/smalife/entity/ClockEntity;->get_id()I

    move-result v3

    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v2, v3, v4}, Lcom/smalife/db/SmaDao;->modifyClock(ILcom/smalife/entity/ClockEntity;)I

    move-result v1

    .line 381
    .local v1, "rt":I
    if-lez v1, :cond_1

    .line 382
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->context:Landroid/content/Context;

    const-string v3, "\u64cd\u4f5c\u6210\u529f"

    const/16 v4, 0x50

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 384
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->finish()V

    .line 387
    .end local v1    # "rt":I
    :cond_1
    return-void

    .line 367
    .restart local v0    # "j":I
    :cond_2
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setMon_day(I)V

    .line 368
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setTues_day(I)V

    .line 369
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setWes_day(I)V

    .line 370
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setThur_day(I)V

    .line 371
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setFrid_day(I)V

    .line 372
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setSta_day(I)V

    .line 373
    iget-object v2, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/smalife/entity/ClockEntity;->setSun_day(I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private setClock_timeFormat(BB)V
    .locals 3
    .param p1, "hour"    # B
    .param p2, "min"    # B

    .prologue
    const/16 v0, 0xa

    .line 346
    if-ge p1, v0, :cond_0

    if-ge p2, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/entity/ClockEntity;->setClock_time(Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_0
    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/entity/ClockEntity;->setClock_time(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    if-lt p1, v0, :cond_2

    if-lt p2, v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/entity/ClockEntity;->setClock_time(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/entity/ClockEntity;->setClock_time(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelSetting()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->cancelWeeks:[I

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockSettingActivity;->getTimeField([I)[I

    .line 519
    return-void
.end method

.method public clockSetting(Ljava/util/List;)V
    .locals 19
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
    .line 395
    .local p1, "tlist":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/adapter/TimeField;>;"
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 397
    const/4 v8, 0x0

    .line 398
    .local v8, "id":B
    const/4 v15, 0x7

    if-le v8, v15, :cond_0

    .line 399
    const/4 v8, 0x0

    .line 400
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v3, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_2

    .line 419
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 420
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v5, v15, [B

    .line 421
    .local v5, "cmd_bytes":[B
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v15, v5

    if-lt v9, v15, :cond_4

    .line 425
    const/4 v15, 0x2

    .line 426
    const/16 v16, 0x2

    .line 424
    move/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/smalife/ble/CmdManager;->GetCmdBytes(BB[B)[B

    move-result-object v4

    .line 427
    .local v4, "cmd":[B
    new-instance v1, Landroid/content/Intent;

    .line 428
    const-string v15, "AskAction"

    .line 427
    invoke-direct {v1, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, "askIntent":Landroid/content/Intent;
    const-string v15, "action_key"

    .line 430
    const/16 v16, 0x13

    .line 429
    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string v15, "clock_btyes"

    invoke-virtual {v1, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/smalife/activity/ClockSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 435
    .end local v1    # "askIntent":Landroid/content/Intent;
    .end local v3    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "cmd":[B
    .end local v5    # "cmd_bytes":[B
    .end local v8    # "id":B
    .end local v9    # "j":I
    :cond_1
    return-void

    .line 401
    .restart local v3    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v8    # "id":B
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smalife/adapter/TimeField;

    .line 402
    .local v13, "time":Lcom/smalife/adapter/TimeField;
    const/4 v15, 0x5

    new-array v5, v15, [B

    .line 403
    .restart local v5    # "cmd_bytes":[B
    iget v15, v13, Lcom/smalife/adapter/TimeField;->repeat:I

    int-to-byte v12, v15

    .line 404
    .local v12, "repeat":B
    iget-byte v14, v13, Lcom/smalife/adapter/TimeField;->year:B

    .line 405
    .local v14, "year":B
    iget-byte v11, v13, Lcom/smalife/adapter/TimeField;->month:B

    .line 406
    .local v11, "month":B
    iget-byte v6, v13, Lcom/smalife/adapter/TimeField;->day:B

    .line 407
    .local v6, "day":B
    iget-byte v7, v13, Lcom/smalife/adapter/TimeField;->hour:B

    .line 408
    .local v7, "hour":B
    iget-byte v10, v13, Lcom/smalife/adapter/TimeField;->mintue:B

    .line 409
    .local v10, "min":B
    const/4 v15, 0x4

    aput-byte v12, v5, v15

    .line 410
    const/4 v15, 0x3

    shl-int/lit8 v17, v8, 0x3

    shl-int/lit8 v18, v10, 0x6

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v15

    .line 411
    const/4 v15, 0x2

    shl-int/lit8 v17, v7, 0x4

    shr-int/lit8 v18, v10, 0x2

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v15

    .line 412
    const/4 v15, 0x1

    shl-int/lit8 v17, v6, 0x1

    shl-int/lit8 v18, v11, 0x6

    or-int v17, v17, v18

    shr-int/lit8 v18, v7, 0x4

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v15

    .line 413
    const/4 v15, 0x0

    shl-int/lit8 v17, v14, 0x2

    shr-int/lit8 v18, v11, 0x2

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v15

    .line 414
    array-length v0, v5

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v17

    if-lt v15, v0, :cond_3

    .line 417
    add-int/lit8 v15, v8, 0x1

    int-to-byte v8, v15

    goto/16 :goto_0

    .line 414
    :cond_3
    aget-byte v2, v5, v15

    .line 415
    .local v2, "c":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 422
    .end local v2    # "c":B
    .end local v6    # "day":B
    .end local v7    # "hour":B
    .end local v10    # "min":B
    .end local v11    # "month":B
    .end local v12    # "repeat":B
    .end local v13    # "time":Lcom/smalife/adapter/TimeField;
    .end local v14    # "year":B
    .restart local v9    # "j":I
    :cond_4
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Byte;

    invoke-virtual {v15}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    aput-byte v15, v5, v9

    .line 421
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method public dismissListener()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->week_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 514
    return-void
.end method

.method public getTimeField([I)[I
    .locals 8
    .param p1, "days"    # [I

    .prologue
    .line 441
    iput-object p1, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    .line 442
    iget-object v1, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    const/4 v2, 0x0

    iput v2, v1, Lcom/smalife/adapter/TimeField;->repeat:I

    .line 443
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 450
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/ClockSettingActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    return-object p1

    .line 445
    .restart local v0    # "i":I
    :cond_1
    aget v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 446
    iget-object v1, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget v2, v1, Lcom/smalife/adapter/TimeField;->repeat:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Lcom/smalife/adapter/TimeField;->repeat:I

    .line 444
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0900f1

    const/4 v8, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 181
    :sswitch_0
    iget-boolean v3, p0, Lcom/smalife/activity/ClockSettingActivity;->isModify:Z

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget v3, v3, Lcom/smalife/adapter/TimeField;->repeat:I

    if-gtz v3, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    const/16 v4, 0x32

    .line 183
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 186
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/smalife/activity/ClockSettingActivity;->modifyClock()V

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->tlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->year:B

    iput-byte v6, v3, Lcom/smalife/adapter/TimeField;->year:B

    .line 193
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->month:B

    iput-byte v6, v3, Lcom/smalife/adapter/TimeField;->month:B

    .line 194
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget v3, v3, Lcom/smalife/adapter/TimeField;->repeat:I

    if-gtz v3, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget v3, v3, Lcom/smalife/adapter/TimeField;->repeat:I

    if-gtz v3, :cond_5

    .line 203
    iget-byte v3, p0, Lcom/smalife/activity/ClockSettingActivity;->Thour:B

    iget-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->currentHour:B

    if-ge v3, v6, :cond_3

    move v3, v4

    :goto_2
    iget-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->TMinute:B

    iget-byte v7, p0, Lcom/smalife/activity/ClockSettingActivity;->currentMinute:B

    if-ge v6, v7, :cond_4

    move v6, v4

    :goto_3
    or-int/2addr v3, v6

    if-eqz v3, :cond_5

    .line 204
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->day:B

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    iput-byte v6, v3, Lcom/smalife/adapter/TimeField;->day:B

    .line 209
    :goto_4
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->Thour:B

    iput-byte v6, v3, Lcom/smalife/adapter/TimeField;->hour:B

    .line 210
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->TMinute:B

    iput-byte v6, v3, Lcom/smalife/adapter/TimeField;->mintue:B

    .line 211
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->tlist:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v3, Lcom/smalife/entity/ClockEntity;

    invoke-direct {v3}, Lcom/smalife/entity/ClockEntity;-><init>()V

    iput-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    .line 213
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    array-length v3, v3

    if-lt v2, v3, :cond_6

    .line 222
    iget-byte v3, p0, Lcom/smalife/activity/ClockSettingActivity;->Thour:B

    iget-byte v5, p0, Lcom/smalife/activity/ClockSettingActivity;->TMinute:B

    invoke-direct {p0, v3, v5}, Lcom/smalife/activity/ClockSettingActivity;->setClock_timeFormat(BB)V

    .line 223
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v3, v4}, Lcom/smalife/entity/ClockEntity;->setOpenOrClose(I)V

    .line 224
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smalife/entity/ClockEntity;->setAccount(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->name_v:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/entity/ClockEntity;->setClockName(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-byte v4, p0, Lcom/smalife/activity/ClockSettingActivity;->year:B

    invoke-virtual {v3, v4}, Lcom/smalife/entity/ClockEntity;->setYear(I)V

    .line 227
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-byte v4, p0, Lcom/smalife/activity/ClockSettingActivity;->month:B

    invoke-virtual {v3, v4}, Lcom/smalife/entity/ClockEntity;->setMonth(I)V

    .line 228
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-byte v4, p0, Lcom/smalife/activity/ClockSettingActivity;->day:B

    invoke-virtual {v3, v4}, Lcom/smalife/entity/ClockEntity;->setDay(I)V

    .line 229
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget v4, v4, Lcom/smalife/adapter/TimeField;->repeat:I

    invoke-virtual {v3, v4}, Lcom/smalife/entity/ClockEntity;->setRepeat(I)V

    .line 230
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/smalife/activity/ClockSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/smalife/activity/ClockSettingActivity$2;-><init>(Lcom/smalife/activity/ClockSettingActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .end local v2    # "j":I
    :cond_3
    move v3, v5

    .line 203
    goto/16 :goto_2

    :cond_4
    move v6, v5

    goto :goto_3

    .line 206
    :cond_5
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->day:B

    iput-byte v6, v3, Lcom/smalife/adapter/TimeField;->day:B

    goto :goto_4

    .line 214
    .restart local v2    # "j":I
    :cond_6
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    aget v6, v6, v5

    invoke-virtual {v3, v6}, Lcom/smalife/entity/ClockEntity;->setMon_day(I)V

    .line 215
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    aget v6, v6, v4

    invoke-virtual {v3, v6}, Lcom/smalife/entity/ClockEntity;->setTues_day(I)V

    .line 216
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Lcom/smalife/entity/ClockEntity;->setWes_day(I)V

    .line 217
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Lcom/smalife/entity/ClockEntity;->setThur_day(I)V

    .line 218
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Lcom/smalife/entity/ClockEntity;->setFrid_day(I)V

    .line 219
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Lcom/smalife/entity/ClockEntity;->setSta_day(I)V

    .line 220
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDays:[I

    aget v6, v6, v8

    invoke-virtual {v3, v6}, Lcom/smalife/entity/ClockEntity;->setSun_day(I)V

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 240
    .end local v2    # "j":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->finish()V

    goto/16 :goto_0

    .line 243
    :sswitch_2
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->week_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 244
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    invoke-virtual {v3}, Lcom/smalife/utils/WeekDialog;->show()V

    .line 245
    iput-boolean v4, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDialogisChecked:Z

    goto/16 :goto_0

    .line 248
    :sswitch_3
    iget-object v3, p0, Lcom/smalife/activity/ClockSettingActivity;->name_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 249
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, "et":Landroid/widget/EditText;
    new-array v3, v4, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 251
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/smalife/activity/ClockSettingActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 253
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 255
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    new-instance v5, Lcom/smalife/activity/ClockSettingActivity$3;

    invoke-direct {v5, p0}, Lcom/smalife/activity/ClockSettingActivity$3;-><init>(Lcom/smalife/activity/ClockSettingActivity;)V

    .line 254
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 284
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 285
    new-instance v5, Lcom/smalife/activity/ClockSettingActivity$4;

    invoke-direct {v5, p0, v1}, Lcom/smalife/activity/ClockSettingActivity$4;-><init>(Lcom/smalife/activity/ClockSettingActivity;Landroid/widget/EditText;)V

    .line 283
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 336
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 337
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_1
        0x7f0e002c -> :sswitch_0
        0x7f0e0062 -> :sswitch_2
        0x7f0e0064 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockSettingActivity;->requestWindowFeature(I)Z

    .line 65
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/smalife/activity/ClockSettingActivity;->setContentView(I)V

    .line 67
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->userAccount:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->weekArray:[Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/smalife/activity/ClockSettingActivity;->initUI()V

    .line 70
    new-instance v0, Lcom/smalife/db/SmaDao;

    iget-object v1, p0, Lcom/smalife/activity/ClockSettingActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 71
    return-void
.end method

.method public onItemSelected(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "id"    # I

    .prologue
    .line 523
    packed-switch p2, :pswitch_data_0

    .line 531
    :goto_0
    return-void

    .line 525
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->hourData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/smalife/activity/ClockSettingActivity;->Thour:B

    goto :goto_0

    .line 528
    :pswitch_1
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity;->minData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/smalife/activity/ClockSettingActivity;->TMinute:B

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x7f0e0060
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 139
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/smalife/activity/ClockSettingActivity;->getCurrentTime()V

    .line 141
    invoke-virtual {p0}, Lcom/smalife/activity/ClockSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 142
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "isModify"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/smalife/activity/ClockSettingActivity;->isModify:Z

    .line 143
    iget-boolean v6, p0, Lcom/smalife/activity/ClockSettingActivity;->isModify:Z

    if-eqz v6, :cond_0

    .line 145
    const-string v6, "clock_entity"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/smalife/entity/ClockEntity;

    .line 144
    iput-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    .line 147
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v6}, Lcom/smalife/entity/ClockEntity;->getClock_time()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "clock_time":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "split":[Ljava/lang/String;
    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 150
    .local v1, "hours":I
    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 152
    .local v3, "minutes":I
    int-to-byte v6, v1

    iput-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->Thour:B

    .line 153
    int-to-byte v6, v3

    iput-byte v6, p0, Lcom/smalife/activity/ClockSettingActivity;->TMinute:B

    .line 155
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->hourWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v6, v1}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 156
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->minuteWV:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v6, v3}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 159
    const/4 v6, 0x7

    new-array v5, v6, [I

    .line 160
    .local v5, "weeks":[I
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v6}, Lcom/smalife/entity/ClockEntity;->getMon_day()I

    move-result v6

    aput v6, v5, v7

    .line 161
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v6}, Lcom/smalife/entity/ClockEntity;->getTues_day()I

    move-result v6

    aput v6, v5, v8

    .line 162
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v7}, Lcom/smalife/entity/ClockEntity;->getWes_day()I

    move-result v7

    aput v7, v5, v6

    .line 163
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v7}, Lcom/smalife/entity/ClockEntity;->getThur_day()I

    move-result v7

    aput v7, v5, v6

    .line 164
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v7}, Lcom/smalife/entity/ClockEntity;->getFrid_day()I

    move-result v7

    aput v7, v5, v6

    .line 165
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v7}, Lcom/smalife/entity/ClockEntity;->getSta_day()I

    move-result v7

    aput v7, v5, v6

    .line 166
    const/4 v6, 0x6

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v7}, Lcom/smalife/entity/ClockEntity;->getSun_day()I

    move-result v7

    aput v7, v5, v6

    .line 167
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->field:Lcom/smalife/adapter/TimeField;

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v7}, Lcom/smalife/entity/ClockEntity;->getRepeat()I

    move-result v7

    iput v7, v6, Lcom/smalife/adapter/TimeField;->repeat:I

    .line 168
    iput-object v5, p0, Lcom/smalife/activity/ClockSettingActivity;->cancelWeeks:[I

    .line 169
    invoke-direct {p0, v5}, Lcom/smalife/activity/ClockSettingActivity;->initDays([I)V

    .line 170
    new-instance v6, Lcom/smalife/utils/WeekDialog;

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Lcom/smalife/utils/WeekDialog;-><init>(Landroid/content/Context;[I)V

    iput-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    .line 171
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->weekDialog:Lcom/smalife/utils/WeekDialog;

    invoke-virtual {v6, p0}, Lcom/smalife/utils/WeekDialog;->setWeekListener(Lcom/smalife/utils/WeekDialog$WeekSelectListener;)V

    .line 173
    iget-object v6, p0, Lcom/smalife/activity/ClockSettingActivity;->name_v:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/smalife/activity/ClockSettingActivity;->clockEntity:Lcom/smalife/entity/ClockEntity;

    invoke-virtual {v7}, Lcom/smalife/entity/ClockEntity;->getClockName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .end local v0    # "clock_time":Ljava/lang/String;
    .end local v1    # "hours":I
    .end local v3    # "minutes":I
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "weeks":[I
    :cond_0
    return-void
.end method
