.class public Lcom/smalife/activity/HeartRateSetActivity;
.super Lcom/smalife/BaseActivity;
.source "HeartRateSetActivity.java"

# interfaces
.implements Lcom/smalife/wheelview/OnItemSelectedListener;


# instance fields
.field private btn_switch:Landroid/widget/Button;

.field private ib_back:Landroid/widget/ImageButton;

.field private ll_interval:Landroid/widget/LinearLayout;

.field private mCheckdItem:I

.field private mEndTime:I

.field private mEndTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntervalTimeArray:[Ljava/lang/String;

.field private mStartTime:I

.field private mStartTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tv_interval:Landroid/widget/TextView;

.field private wv_end:Lcom/smalife/wheelview/WheelView;

.field private wv_start:Lcom/smalife/wheelview/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTimeList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTimeList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/HeartRateSetActivity;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/smalife/activity/HeartRateSetActivity;->mCheckdItem:I

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/HeartRateSetActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->ll_interval:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/HeartRateSetActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->mCheckdItem:I

    return v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/HeartRateSetActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->tv_interval:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/HeartRateSetActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->mIntervalTimeArray:[Ljava/lang/String;

    return-object v0
.end method

.method private findViewById()V
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartRateSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->ib_back:Landroid/widget/ImageButton;

    .line 64
    const v0, 0x7f0e00fc

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartRateSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/wheelview/WheelView;

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->wv_start:Lcom/smalife/wheelview/WheelView;

    .line 65
    const v0, 0x7f0e00fd

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartRateSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/wheelview/WheelView;

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->wv_end:Lcom/smalife/wheelview/WheelView;

    .line 67
    const v0, 0x7f0e00ff

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartRateSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->ll_interval:Landroid/widget/LinearLayout;

    .line 68
    const v0, 0x7f0e0100

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartRateSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->tv_interval:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0e00fe

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartRateSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->btn_switch:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->ib_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->ll_interval:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->wv_start:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v0, p0}, Lcom/smalife/wheelview/WheelView;->setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V

    .line 74
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->wv_end:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v0, p0}, Lcom/smalife/wheelview/WheelView;->setOnItemSelectedListener(Lcom/smalife/wheelview/OnItemSelectedListener;)V

    .line 75
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->btn_switch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private initWheelData()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 79
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x16

    if-le v2, v3, :cond_1

    .line 82
    const/4 v2, 0x1

    :goto_1
    const/16 v3, 0x17

    if-le v2, v3, :cond_3

    .line 86
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->wv_start:Lcom/smalife/wheelview/WheelView;

    new-instance v4, Lcom/smalife/wheelview/ArrayWheelAdapter;

    .line 87
    iget-object v5, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTimeList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTimeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    .line 88
    const v5, 0x7f0e00fc

    .line 86
    invoke-virtual {v3, v4, v5}, Lcom/smalife/wheelview/WheelView;->setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V

    .line 89
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->wv_end:Lcom/smalife/wheelview/WheelView;

    new-instance v4, Lcom/smalife/wheelview/ArrayWheelAdapter;

    .line 90
    iget-object v5, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTimeList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTimeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    .line 91
    const v5, 0x7f0e00fd

    .line 89
    invoke-virtual {v3, v4, v5}, Lcom/smalife/wheelview/WheelView;->setAdapter(Lcom/smalife/wheelview/WheelAdapter;I)V

    .line 93
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getRateDetectionStart()B

    move-result v1

    .line 94
    .local v1, "currentStart":B
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getRateDetectionEnd()B

    move-result v0

    .line 96
    .local v0, "currentEnd":B
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->wv_start:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v3, v1}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 98
    iput v1, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTime:I

    .line 100
    iget-object v4, p0, Lcom/smalife/activity/HeartRateSetActivity;->wv_end:Lcom/smalife/wheelview/WheelView;

    if-lez v0, :cond_5

    add-int/lit8 v3, v0, -0x1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/smalife/wheelview/WheelView;->setCurrentItem(I)V

    .line 101
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .end local v0    # "currentEnd":B
    :cond_0
    iput v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTime:I

    .line 103
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->tv_interval:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smalife/activity/HeartRateSetActivity;->mIntervalTimeArray:[Ljava/lang/String;

    iget-object v6, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6}, Lcom/smalife/MyApplication;->getRatePeriodTime()I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void

    .line 80
    .end local v1    # "currentStart":B
    :cond_1
    iget-object v4, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTimeList:Ljava/util/ArrayList;

    if-ge v2, v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 80
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTimeList:Ljava/util/ArrayList;

    if-ge v2, v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":59"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 83
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":59"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .restart local v0    # "currentEnd":B
    .restart local v1    # "currentStart":B
    :cond_5
    move v3, v0

    .line 100
    goto/16 :goto_2
.end method

.method private showDetectionIntervalDialog()V
    .locals 6

    .prologue
    .line 183
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->ll_interval:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 184
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, "et":Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 187
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smalife/activity/HeartRateSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 190
    const v5, 0x7f090242

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    invoke-virtual {p0}, Lcom/smalife/activity/HeartRateSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 193
    const v5, 0x7f090141

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 193
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->mIntervalTimeArray:[Ljava/lang/String;

    iget v4, p0, Lcom/smalife/activity/HeartRateSetActivity;->mCheckdItem:I

    .line 195
    new-instance v5, Lcom/smalife/activity/HeartRateSetActivity$1;

    invoke-direct {v5, p0}, Lcom/smalife/activity/HeartRateSetActivity$1;-><init>(Lcom/smalife/activity/HeartRateSetActivity;)V

    .line 194
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 202
    const v3, 0x7f0900cd

    invoke-virtual {p0, v3}, Lcom/smalife/activity/HeartRateSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    new-instance v4, Lcom/smalife/activity/HeartRateSetActivity$2;

    invoke-direct {v4, p0}, Lcom/smalife/activity/HeartRateSetActivity$2;-><init>(Lcom/smalife/activity/HeartRateSetActivity;)V

    .line 202
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 215
    const v3, 0x7f0900cc

    invoke-virtual {p0, v3}, Lcom/smalife/activity/HeartRateSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    new-instance v4, Lcom/smalife/activity/HeartRateSetActivity$3;

    invoke-direct {v4, p0}, Lcom/smalife/activity/HeartRateSetActivity$3;-><init>(Lcom/smalife/activity/HeartRateSetActivity;)V

    .line 215
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 224
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 225
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 125
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/HeartRateSetActivity;->finish()V

    goto :goto_0

    .line 129
    :sswitch_1
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v2, v2, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/smalife/activity/HeartRateSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTimeList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTime:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 137
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTimeList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTime:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v3, v2, :cond_1

    .line 139
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->context:Landroid/content/Context;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smalife/activity/HeartRateSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 141
    const v5, 0x7f090140

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTimeList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTime:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getRateOpen()B

    move-result v2

    if-ne v2, v6, :cond_2

    .line 148
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2, v5}, Lcom/smalife/MyApplication;->editRateOpen(B)V

    .line 149
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->btn_switch:Landroid/widget/Button;

    const v3, 0x7f090240

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    .line 156
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTimeList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTime:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    .line 155
    invoke-virtual {v3, v2}, Lcom/smalife/MyApplication;->editRateDetectionStart(B)V

    .line 157
    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    .line 158
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTimeList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTime:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    .line 157
    invoke-virtual {v3, v2}, Lcom/smalife/MyApplication;->editRateDetectionEnd(B)V

    .line 160
    new-instance v1, Lcom/smalife/entity/RateSetEntity;

    invoke-direct {v1}, Lcom/smalife/entity/RateSetEntity;-><init>()V

    .line 161
    .local v1, "entity":Lcom/smalife/entity/RateSetEntity;
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getRateOpen()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smalife/entity/RateSetEntity;->setOpen(B)V

    .line 162
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getRateDetectionStart()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smalife/entity/RateSetEntity;->setStart_hour(B)V

    .line 163
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getRateDetectionEnd()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smalife/entity/RateSetEntity;->setEnd_hour(B)V

    .line 164
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->mIntervalTimeArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    .line 165
    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getRatePeriodTime()I

    move-result v3

    aget-object v2, v2, v3

    .line 164
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smalife/entity/RateSetEntity;->setPeriodTime(B)V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>>entity = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/smalife/entity/RateSetEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->w(Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v2, "AskAction"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "askIntent":Landroid/content/Intent;
    const-string v2, "action_key"

    .line 170
    const/16 v3, 0x44

    .line 169
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v2, "rate_set"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartRateSetActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    .end local v0    # "askIntent":Landroid/content/Intent;
    .end local v1    # "entity":Lcom/smalife/entity/RateSetEntity;
    :cond_2
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2, v6}, Lcom/smalife/MyApplication;->editRateOpen(B)V

    .line 152
    iget-object v2, p0, Lcom/smalife/activity/HeartRateSetActivity;->btn_switch:Landroid/widget/Button;

    const v3, 0x7f090241

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 175
    :sswitch_2
    invoke-direct {p0}, Lcom/smalife/activity/HeartRateSetActivity;->showDetectionIntervalDialog()V

    goto/16 :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e00fe -> :sswitch_1
        0x7f0e00ff -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartRateSetActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/smalife/activity/HeartRateSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->mIntervalTimeArray:[Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/smalife/activity/HeartRateSetActivity;->findViewById()V

    .line 46
    invoke-direct {p0}, Lcom/smalife/activity/HeartRateSetActivity;->initWheelData()V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 230
    return-void
.end method

.method public onItemSelected(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "id"    # I

    .prologue
    .line 109
    packed-switch p2, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iput p1, p0, Lcom/smalife/activity/HeartRateSetActivity;->mStartTime:I

    goto :goto_0

    .line 114
    :pswitch_1
    iput p1, p0, Lcom/smalife/activity/HeartRateSetActivity;->mEndTime:I

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f0e00fc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getRatePeriodTime()I

    move-result v0

    iput v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->mCheckdItem:I

    .line 55
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getRateOpen()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->btn_switch:Landroid/widget/Button;

    const v1, 0x7f090241

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/HeartRateSetActivity;->btn_switch:Landroid/widget/Button;

    const v1, 0x7f090240

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
