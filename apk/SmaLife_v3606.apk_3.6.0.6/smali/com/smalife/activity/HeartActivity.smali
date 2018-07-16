.class public Lcom/smalife/activity/HeartActivity;
.super Lcom/smalife/BaseActivity;
.source "HeartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/HeartActivity$PersonObserver;
    }
.end annotation


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageButton;

.field private dao:Lcom/smalife/db/SmaDao;

.field private day_index:I

.field dt:Ljava/util/Date;

.field private handler:Landroid/os/Handler;

.field private heart_day:Landroid/widget/TextView;

.field private heart_detail_layout:Landroid/widget/LinearLayout;

.field private heart_details:Landroid/widget/TextView;

.field private heart_max_value:Landroid/widget/TextView;

.field private heart_mean_value:Landroid/widget/TextView;

.field private heart_monitor:Landroid/widget/TextView;

.field private heart_quite_value:Landroid/widget/TextView;

.field private heart_rate_day:Landroid/widget/TextView;

.field private heart_status:Landroid/widget/TextView;

.field private left_btn:Landroid/widget/ImageButton;

.field private mCurDate:Ljava/lang/String;

.field private mPersonObserver:Lcom/smalife/activity/HeartActivity$PersonObserver;

.field private mSwatchType:Ljava/lang/String;

.field private right_btn:Landroid/widget/ImageButton;

.field private final update_msg:I

.field private final update_weekDay:I

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    .line 206
    const/16 v0, 0x10

    iput v0, p0, Lcom/smalife/activity/HeartActivity;->update_msg:I

    .line 207
    const/16 v0, 0x11

    iput v0, p0, Lcom/smalife/activity/HeartActivity;->update_weekDay:I

    .line 208
    new-instance v0, Lcom/smalife/activity/HeartActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/HeartActivity$1;-><init>(Lcom/smalife/activity/HeartActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/HeartActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    return v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/HeartActivity;I)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/smalife/activity/HeartActivity;->getCurHeartData(I)V

    return-void
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 5
    .param p1, "index_day"    # I

    .prologue
    const/4 v4, 0x5

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 99
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 100
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 101
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 102
    .local v1, "day":I
    add-int v3, v1, p1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/HeartActivity;->dt:Ljava/util/Date;

    .line 104
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 105
    .local v2, "ft":Ljava/text/DateFormat;
    iget-object v3, p0, Lcom/smalife/activity/HeartActivity;->dt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCurHeartData(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "currentRate":I
    const/4 v3, 0x0

    .line 126
    .local v3, "meanRate":I
    const/4 v2, 0x0

    .line 127
    .local v2, "maxRate":I
    invoke-direct {p0, p1}, Lcom/smalife/activity/HeartActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/smalife/activity/HeartActivity;->mCurDate:Ljava/lang/String;

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "date = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/smalife/activity/HeartActivity;->mCurDate:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 129
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v11, p0, Lcom/smalife/activity/HeartActivity;->userAccount:Ljava/lang/String;

    .line 130
    iget-object v12, p0, Lcom/smalife/activity/HeartActivity;->mCurDate:Ljava/lang/String;

    .line 129
    invoke-virtual {v10, v11, v12}, Lcom/smalife/db/SmaDao;->getOneDayRateLists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 131
    .local v5, "rateLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smalife/db/entity/RateEntity;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 132
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smalife/db/entity/RateEntity;

    invoke-virtual {v10}, Lcom/smalife/db/entity/RateEntity;->getRate_value()I

    move-result v0

    .line 133
    const/4 v8, 0x0

    .line 134
    .local v8, "total":I
    const/4 v4, 0x0

    .line 135
    .local v4, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v1, v10, :cond_1

    .line 145
    if-eqz v4, :cond_0

    .line 146
    div-int v3, v8, v4

    .line 150
    .end local v1    # "i":I
    .end local v4    # "num":I
    .end local v8    # "total":I
    :cond_0
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->mCurDate:Ljava/lang/String;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 151
    .local v6, "t":I
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->mCurDate:Ljava/lang/String;

    add-int/lit8 v11, v6, 0x1

    iget-object v12, p0, Lcom/smalife/activity/HeartActivity;->mCurDate:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "tempString":Ljava/lang/String;
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->mCurDate:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/smalife/activity/HeartActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 153
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_day:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/HeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900e6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_rate_day:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/HeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 156
    const v12, 0x7f0901ea

    .line 155
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_mean_value:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " bpm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_max_value:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " bpm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_status:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_1
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->handler:Landroid/os/Handler;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    return-void

    .line 136
    .end local v6    # "t":I
    .end local v7    # "tempString":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v4    # "num":I
    .restart local v8    # "total":I
    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smalife/db/entity/RateEntity;

    invoke-virtual {v10}, Lcom/smalife/db/entity/RateEntity;->getRate_value()I

    move-result v9

    .line 137
    .local v9, "value":I
    if-le v9, v2, :cond_2

    .line 138
    move v2, v9

    .line 140
    :cond_2
    if-lez v9, :cond_3

    .line 141
    add-int/2addr v8, v9

    .line 142
    add-int/lit8 v4, v4, 0x1

    .line 135
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 161
    .end local v1    # "i":I
    .end local v4    # "num":I
    .end local v8    # "total":I
    .end local v9    # "value":I
    .restart local v6    # "t":I
    .restart local v7    # "tempString":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_day:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_rate_day:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p0}, Lcom/smalife/activity/HeartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0901ed

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_mean_value:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " bpm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_max_value:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " bpm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v10, p0, Lcom/smalife/activity/HeartActivity;->heart_status:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private getRate()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AskAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SM05"

    iget-object v2, p0, Lcom/smalife/activity/HeartActivity;->mSwatchType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v1, "action_key"

    .line 112
    const/16 v2, 0x36

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void

    .line 113
    :cond_1
    const-string v1, "SM07"

    iget-object v2, p0, Lcom/smalife/activity/HeartActivity;->mSwatchType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "action_key"

    .line 115
    const/16 v2, 0x43

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smalife/activity/HeartActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->userAccount:Ljava/lang/String;

    .line 71
    const v0, 0x7f0e00a5

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_status:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_monitor:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0e00ab

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_quite_value:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0e00ac

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_mean_value:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0e00ad

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_max_value:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_day:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_rate_day:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0e00ae

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_details:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->back_btn:Landroid/widget/ImageButton;

    .line 82
    iget-object v0, p0, Lcom/smalife/activity/HeartActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 84
    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->left_btn:Landroid/widget/ImageButton;

    .line 85
    iget-object v0, p0, Lcom/smalife/activity/HeartActivity;->left_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->right_btn:Landroid/widget/ImageButton;

    .line 87
    iget-object v0, p0, Lcom/smalife/activity/HeartActivity;->right_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0e00a4

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_detail_layout:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_detail_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/smalife/activity/HeartActivity;->heart_details:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 176
    :sswitch_0
    invoke-super {p0}, Lcom/smalife/BaseActivity;->share()V

    goto :goto_0

    .line 180
    :sswitch_1
    invoke-virtual {p0}, Lcom/smalife/activity/HeartActivity;->finish()V

    goto :goto_0

    .line 183
    :sswitch_2
    iget v1, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    .line 184
    iget v1, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    invoke-direct {p0, v1}, Lcom/smalife/activity/HeartActivity;->getCurHeartData(I)V

    goto :goto_0

    .line 188
    :sswitch_3
    iget v1, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    if-eqz v1, :cond_0

    .line 191
    iget v1, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    .line 192
    iget v1, p0, Lcom/smalife/activity/HeartActivity;->day_index:I

    invoke-direct {p0, v1}, Lcom/smalife/activity/HeartActivity;->getCurHeartData(I)V

    goto :goto_0

    .line 196
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/HeartDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "date"

    iget-object v2, p0, Lcom/smalife/activity/HeartActivity;->mCurDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/smalife/activity/HeartDetailsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/smalife/activity/HeartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_1
        0x7f0e000e -> :sswitch_0
        0x7f0e00a1 -> :sswitch_2
        0x7f0e00a3 -> :sswitch_3
        0x7f0e00a4 -> :sswitch_4
        0x7f0e00ae -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/smalife/activity/HeartActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/smalife/activity/HeartActivity;->getRate()V

    .line 50
    invoke-virtual {p0}, Lcom/smalife/activity/HeartActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/smalife/MyApplication;

    iput-object v1, p0, Lcom/smalife/activity/HeartActivity;->application:Lcom/smalife/MyApplication;

    .line 51
    iget-object v1, p0, Lcom/smalife/activity/HeartActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/HeartActivity;->mSwatchType:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/smalife/activity/HeartActivity;->initUI()V

    .line 53
    new-instance v1, Lcom/smalife/activity/HeartActivity$PersonObserver;

    iget-object v2, p0, Lcom/smalife/activity/HeartActivity;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/smalife/activity/HeartActivity$PersonObserver;-><init>(Lcom/smalife/activity/HeartActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/smalife/activity/HeartActivity;->mPersonObserver:Lcom/smalife/activity/HeartActivity$PersonObserver;

    .line 54
    invoke-virtual {p0}, Lcom/smalife/activity/HeartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/smalife/db/Sma$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 55
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/smalife/activity/HeartActivity;->mPersonObserver:Lcom/smalife/activity/HeartActivity$PersonObserver;

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 56
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/smalife/activity/HeartActivity;->getCurHeartData(I)V

    .line 57
    iget-object v1, p0, Lcom/smalife/activity/HeartActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getLatestHeartValue()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "latestHeartValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/smalife/activity/HeartActivity;->heart_quite_value:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " bmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 66
    invoke-virtual {p0}, Lcom/smalife/activity/HeartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/HeartActivity;->mPersonObserver:Lcom/smalife/activity/HeartActivity$PersonObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    return-void
.end method
