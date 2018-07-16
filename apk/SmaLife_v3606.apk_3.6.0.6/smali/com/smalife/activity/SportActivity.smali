.class public Lcom/smalife/activity/SportActivity;
.super Lcom/smalife/BaseActivity;
.source "SportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/SportActivity$PersonObserver;,
        Lcom/smalife/activity/SportActivity$RefreshReceiver;
    }
.end annotation


# static fields
.field private static final SET_ANIM:I = 0x224

.field private static final aim_data:I = 0x1

.field private static final circle_msg:I = 0x3

.field private static final day_changed:I = 0x2

.field private static final sport_data:I = 0x0

.field private static final sync:I = 0x4


# instance fields
.field private aimEntity:Lcom/smalife/db/entity/AimEntity;

.field private aim_steps:I

.field private aim_value:Landroid/widget/TextView;

.field private calories:Landroid/widget/TextView;

.field private circle:Lcom/smalife/utils/CircleBar;

.field private curDay:Ljava/lang/String;

.field private curDay_v:Landroid/widget/TextView;

.field private dao:Lcom/smalife/db/SmaDao;

.field private day_index:I

.field private distence:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private mApplication:Lcom/smalife/MyApplication;

.field private mObserver:Lcom/smalife/activity/SportActivity$PersonObserver;

.field private mPT:Lcom/smalife/utils/PullToRefresthLayout;

.field private mRefreshReceiver:Lcom/smalife/activity/SportActivity$RefreshReceiver;

.field mcalories:F

.field mdistance:F

.field msteps:I

.field private next_day:Landroid/widget/ImageButton;

.field private pre_day:Landroid/widget/ImageButton;

.field private share_btn:Landroid/widget/ImageButton;

.field private steps:Landroid/widget/TextView;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->curDay:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    .line 211
    new-instance v0, Lcom/smalife/activity/SportActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SportActivity$1;-><init>(Lcom/smalife/activity/SportActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SportActivity;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->mApplication:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->distence:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/smalife/activity/SportActivity;)Lcom/smalife/utils/CircleBar;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->circle:Lcom/smalife/utils/CircleBar;

    return-object v0
.end method

.method static synthetic access$11(Lcom/smalife/activity/SportActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    return v0
.end method

.method static synthetic access$12(Lcom/smalife/activity/SportActivity;I)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/smalife/activity/SportActivity;->getCurSportData(I)V

    return-void
.end method

.method static synthetic access$13(Lcom/smalife/activity/SportActivity;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/smalife/activity/SportActivity;->getCurDaySport()V

    return-void
.end method

.method static synthetic access$14(Lcom/smalife/activity/SportActivity;)Lcom/smalife/utils/PullToRefresthLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->mPT:Lcom/smalife/utils/PullToRefresthLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/smalife/activity/SportActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/smalife/activity/SportActivity;Ljava/lang/String;)Lcom/smalife/db/entity/AimEntity;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/smalife/activity/SportActivity;->getAimValue(Ljava/lang/String;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/smalife/activity/SportActivity;Lcom/smalife/db/entity/AimEntity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/smalife/activity/SportActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    return-void
.end method

.method static synthetic access$18(Lcom/smalife/activity/SportActivity;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/smalife/activity/SportActivity;->aim_steps:I

    return-void
.end method

.method static synthetic access$2(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->steps:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->calories:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/SportActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->curDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/SportActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/smalife/activity/SportActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->curDay_v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/smalife/activity/SportActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/smalife/activity/SportActivity;)Lcom/smalife/db/entity/AimEntity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    return-object v0
.end method

.method static synthetic access$9(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->aim_value:Landroid/widget/TextView;

    return-object v0
.end method

.method private getAimValue(Ljava/lang/String;)Lcom/smalife/db/entity/AimEntity;
    .locals 1
    .param p1, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->dao:Lcom/smalife/db/SmaDao;

    invoke-virtual {v0, p1}, Lcom/smalife/db/SmaDao;->getAim(Ljava/lang/String;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v0

    return-object v0
.end method

.method private getCurDate(I)Ljava/lang/String;
    .locals 6
    .param p1, "index_day"    # I

    .prologue
    const/4 v5, 0x5

    .line 282
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 283
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 284
    .local v1, "day":I
    sub-int v4, v1, p1

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 285
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 286
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 287
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getCurDaySport()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smalife/activity/SportActivity$3;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SportActivity$3;-><init>(Lcom/smalife/activity/SportActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method

.method private getCurSportData(I)V
    .locals 6
    .param p1, "day"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/smalife/activity/SportActivity;->getCurDate(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/SportActivity;->curDay:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/smalife/activity/SportActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/smalife/MyApplication;

    iput-object v3, p0, Lcom/smalife/activity/SportActivity;->mApplication:Lcom/smalife/MyApplication;

    .line 189
    iget-object v3, p0, Lcom/smalife/activity/SportActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/SportActivity;->userAccount:Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lcom/smalife/activity/SportActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v4, p0, Lcom/smalife/activity/SportActivity;->curDay:Ljava/lang/String;

    iget-object v5, p0, Lcom/smalife/activity/SportActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/smalife/db/SmaDao;->getCurDaySportData(Ljava/lang/String;Ljava/lang/String;)Lcom/smalife/db/entity/SportEntity;

    move-result-object v2

    .line 191
    .local v2, "sport":Lcom/smalife/db/entity/SportEntity;
    if-nez v2, :cond_0

    .line 192
    new-instance v2, Lcom/smalife/db/entity/SportEntity;

    .end local v2    # "sport":Lcom/smalife/db/entity/SportEntity;
    invoke-direct {v2}, Lcom/smalife/db/entity/SportEntity;-><init>()V

    .line 194
    .restart local v2    # "sport":Lcom/smalife/db/entity/SportEntity;
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 195
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "sport_key"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 197
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 198
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 199
    iget-object v3, p0, Lcom/smalife/activity/SportActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 113
    const/high16 v0, 0x7f0e0000

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/utils/CircleBar;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->circle:Lcom/smalife/utils/CircleBar;

    .line 114
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->circle:Lcom/smalife/utils/CircleBar;

    invoke-virtual {v0, p0}, Lcom/smalife/utils/CircleBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 117
    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->distence:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->steps:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0e01f9

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->calories:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0e01fe

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->aim_value:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->next_day:Landroid/widget/ImageButton;

    .line 122
    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->pre_day:Landroid/widget/ImageButton;

    .line 123
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->next_day:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->pre_day:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->aim_value:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0e0209

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->curDay_v:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->curDay_v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/SportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->share_btn:Landroid/widget/ImageButton;

    .line 129
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->share_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0e0208

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/utils/PullToRefresthLayout;

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->mPT:Lcom/smalife/utils/PullToRefresthLayout;

    .line 135
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->mPT:Lcom/smalife/utils/PullToRefresthLayout;

    new-instance v1, Lcom/smalife/activity/SportActivity$2;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SportActivity$2;-><init>(Lcom/smalife/activity/SportActivity;)V

    invoke-virtual {v0, v1}, Lcom/smalife/utils/PullToRefresthLayout;->setOnRefreshListener(Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;)V

    .line 163
    return-void
.end method


# virtual methods
.method public countDistanceAndCalories(Lcom/smalife/db/entity/SportEntity;)Lcom/smalife/db/entity/SportEntity;
    .locals 10
    .param p1, "se"    # Lcom/smalife/db/entity/SportEntity;

    .prologue
    const-wide v8, 0x3fe199999999999aL    # 0.55

    const-wide v6, 0x3fdd70a3d70a3d71L    # 0.46

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, "mdistance":F
    const/4 v0, 0x0

    .line 382
    .local v0, "mcalories":F
    iget-object v3, p0, Lcom/smalife/activity/SportActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v4, p0, Lcom/smalife/activity/SportActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/SmaDao;->getUserInfo(Ljava/lang/String;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v2

    .line 383
    .local v2, "user":Lcom/smalife/db/entity/UserEntity;
    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 385
    iget-object v3, p0, Lcom/smalife/activity/SportActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v3

    if-nez v3, :cond_1

    .line 386
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v4, v3

    mul-double/2addr v4, v8

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 397
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

    .line 399
    :cond_0
    invoke-virtual {p1, v0}, Lcom/smalife/db/entity/SportEntity;->setCalorie(F)V

    .line 400
    invoke-virtual {p1, v1}, Lcom/smalife/db/entity/SportEntity;->setDistance(F)V

    .line 401
    return-object p1

    .line 388
    :cond_1
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/smalife/utils/UnitUtils;->convertToKg(F)D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 390
    goto :goto_0

    .line 391
    :cond_2
    iget-object v3, p0, Lcom/smalife/activity/SportActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v3

    if-nez v3, :cond_3

    .line 392
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 393
    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {v2}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/smalife/utils/UnitUtils;->convertToKg(F)D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v0, v4

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 340
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    return v2

    .line 342
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 343
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "sport_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/smalife/db/entity/SportEntity;

    .line 344
    .local v1, "sport":Lcom/smalife/db/entity/SportEntity;
    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {v1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v2

    sput v2, Lcom/smalife/ble/CmdKeyValue;->sport_steps:I

    .line 346
    invoke-virtual {v1}, Lcom/smalife/db/entity/SportEntity;->getDistance()F

    move-result v2

    sput v2, Lcom/smalife/ble/CmdKeyValue;->sport_distance:F

    .line 347
    invoke-virtual {v1}, Lcom/smalife/db/entity/SportEntity;->getCalorie()F

    move-result v2

    sput v2, Lcom/smalife/ble/CmdKeyValue;->sport_calories:F

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/smalife/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    const/16 v0, 0x224

    if-ne p1, v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/smalife/activity/SportActivity;->getCurDaySport()V

    .line 108
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    .line 294
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 336
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 297
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/SportDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v0, "detail_intent":Landroid/content/Intent;
    const-string v1, "aim_num"

    iget v2, p0, Lcom/smalife/activity/SportActivity;->aim_steps:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v1, "date"

    iget-object v2, p0, Lcom/smalife/activity/SportActivity;->curDay:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    .end local v0    # "detail_intent":Landroid/content/Intent;
    :sswitch_2
    invoke-super {p0}, Lcom/smalife/BaseActivity;->share()V

    goto :goto_0

    .line 307
    :sswitch_3
    iget v1, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    if-eqz v1, :cond_0

    .line 310
    iget v1, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    .line 311
    iget-object v1, p0, Lcom/smalife/activity/SportActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 314
    :sswitch_4
    iget v1, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_0

    .line 317
    iget v1, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    .line 318
    iget-object v1, p0, Lcom/smalife/activity/SportActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 321
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/smalife/activity/SportAimActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x224

    invoke-virtual {p0, v1, v2}, Lcom/smalife/activity/SportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 333
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/smalife/activity/RankActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0000 -> :sswitch_1
        0x7f0e000e -> :sswitch_2
        0x7f0e000f -> :sswitch_0
        0x7f0e00a1 -> :sswitch_4
        0x7f0e00a3 -> :sswitch_3
        0x7f0e00f8 -> :sswitch_6
        0x7f0e01fe -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f030061

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/smalife/activity/SportActivity;->initUI()V

    .line 61
    invoke-virtual {p0}, Lcom/smalife/activity/SportActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/smalife/MyApplication;

    iput-object v1, p0, Lcom/smalife/activity/SportActivity;->mApplication:Lcom/smalife/MyApplication;

    .line 63
    new-instance v1, Lcom/smalife/activity/SportActivity$RefreshReceiver;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SportActivity$RefreshReceiver;-><init>(Lcom/smalife/activity/SportActivity;)V

    iput-object v1, p0, Lcom/smalife/activity/SportActivity;->mRefreshReceiver:Lcom/smalife/activity/SportActivity$RefreshReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "refresh_data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/smalife/activity/SportActivity;->mRefreshReceiver:Lcom/smalife/activity/SportActivity$RefreshReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/smalife/activity/SportActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/smalife/activity/SportActivity;->day_index:I

    .line 71
    new-instance v1, Lcom/smalife/activity/SportActivity$PersonObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/smalife/activity/SportActivity$PersonObserver;-><init>(Lcom/smalife/activity/SportActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/smalife/activity/SportActivity;->mObserver:Lcom/smalife/activity/SportActivity$PersonObserver;

    .line 72
    invoke-virtual {p0}, Lcom/smalife/activity/SportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/smalife/db/Sma$Sport;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/smalife/activity/SportActivity;->mObserver:Lcom/smalife/activity/SportActivity$PersonObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 98
    invoke-virtual {p0}, Lcom/smalife/activity/SportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/SportActivity;->mObserver:Lcom/smalife/activity/SportActivity$PersonObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->mRefreshReceiver:Lcom/smalife/activity/SportActivity$RefreshReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 78
    iget-boolean v0, p0, Lcom/smalife/activity/SportActivity;->isResume:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SportActivity;->mApplication:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportActivity;->userAccount:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/smalife/activity/SportActivity;->getCurDaySport()V

    goto :goto_0
.end method
