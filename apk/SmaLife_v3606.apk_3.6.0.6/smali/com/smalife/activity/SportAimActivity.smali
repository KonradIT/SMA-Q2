.class public Lcom/smalife/activity/SportAimActivity;
.super Landroid/app/Activity;
.source "SportAimActivity.java"

# interfaces
.implements Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private account:Ljava/lang/String;

.field private aimEntity:Lcom/smalife/db/entity/AimEntity;

.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageView;

.field private calories:Landroid/widget/TextView;

.field private circularSeekBarNew:Lcom/smalife/utils/CircularSeekBarNew;

.field private dao:Lcom/smalife/db/SmaDao;

.field private distence:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field mcalories:F

.field mdistance:F

.field private progress:I

.field private final sport_aim:I

.field private sport_num:Landroid/widget/TextView;

.field private sport_rt:Landroid/widget/TextView;

.field private steps:I

.field private steps_v:Landroid/widget/TextView;

.field private submit_btn:Landroid/widget/ImageButton;

.field private user:Lcom/smalife/db/entity/UserEntity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const v0, 0x186a0

    iput v0, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    .line 36
    iput v1, p0, Lcom/smalife/activity/SportAimActivity;->progress:I

    .line 39
    new-instance v0, Lcom/smalife/db/entity/AimEntity;

    invoke-direct {v0}, Lcom/smalife/db/entity/AimEntity;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    .line 154
    iput v1, p0, Lcom/smalife/activity/SportAimActivity;->sport_aim:I

    .line 155
    new-instance v0, Lcom/smalife/activity/SportAimActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SportAimActivity$1;-><init>(Lcom/smalife/activity/SportAimActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SportAimActivity;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->distence:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->steps_v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/SportAimActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    return v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->calories:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->sport_num:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/SportAimActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->sport_rt:Landroid/widget/TextView;

    return-object v0
.end method

.method private countDistanceAndCalories(I)V
    .locals 6
    .param p1, "steps"    # I

    .prologue
    const-wide v4, 0x3f4205bc01a36e2fL    # 5.5E-4

    const-wide v2, 0x3f3e2584f4c6e6daL    # 4.6E-4

    .line 66
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->user:Lcom/smalife/db/entity/UserEntity;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v0}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 68
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v0}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/smalife/activity/SportAimActivity;->mcalories:F

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v0}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2d

    const v1, 0x989680

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/smalife/activity/SportAimActivity;->mdistance:F

    .line 85
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v0}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 71
    invoke-static {v0}, Lcom/smalife/utils/UnitUtils;->convertToKg(F)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 72
    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 71
    iput v0, p0, Lcom/smalife/activity/SportAimActivity;->mcalories:F

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v0

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v0}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/smalife/activity/SportAimActivity;->mcalories:F

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v0}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 78
    invoke-static {v0}, Lcom/smalife/utils/UnitUtils;->convertToKg(F)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 79
    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 78
    iput v0, p0, Lcom/smalife/activity/SportAimActivity;->mcalories:F

    goto :goto_0
.end method

.method private getAimValue()Lcom/smalife/db/entity/AimEntity;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v1, p0, Lcom/smalife/activity/SportAimActivity;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smalife/db/SmaDao;->getAim(Ljava/lang/String;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v0

    return-object v0
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/smalife/activity/SportAimActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    .line 89
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->account:Ljava/lang/String;

    .line 90
    const v0, 0x7f0e01f4

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/utils/CircularSeekBarNew;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->circularSeekBarNew:Lcom/smalife/utils/CircularSeekBarNew;

    .line 91
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->circularSeekBarNew:Lcom/smalife/utils/CircularSeekBarNew;

    invoke-virtual {v0, p0}, Lcom/smalife/utils/CircularSeekBarNew;->setSeekBarChangeListener(Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;)V

    .line 92
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 93
    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->distence:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->steps_v:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0e01f9

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->calories:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0e01f5

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->sport_num:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0e01f7

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->sport_rt:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->back_btn:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->back_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->submit_btn:Landroid/widget/ImageButton;

    .line 101
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->submit_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method private syncAim(Lcom/accloud/service/ACObject;)V
    .locals 2
    .param p1, "aimObj"    # Lcom/accloud/service/ACObject;

    .prologue
    .line 229
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    new-instance v1, Lcom/smalife/activity/SportAimActivity$2;

    invoke-direct {v1, p0}, Lcom/smalife/activity/SportAimActivity$2;-><init>(Lcom/smalife/activity/SportAimActivity;)V

    invoke-interface {v0, p1, v1}, Lcom/accloud/service/ACAccountMgr;->setUserProfile(Lcom/accloud/service/ACObject;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 240
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 200
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/SportAimActivity;->finish()V

    goto :goto_0

    .line 203
    :sswitch_1
    iget v2, p0, Lcom/smalife/activity/SportAimActivity;->progress:I

    if-nez v2, :cond_0

    .line 204
    const/16 v2, 0x14

    iput v2, p0, Lcom/smalife/activity/SportAimActivity;->progress:I

    .line 205
    const/16 v2, 0x4e20

    iput v2, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    iget v3, p0, Lcom/smalife/activity/SportAimActivity;->progress:I

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editProgress(I)V

    .line 209
    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->account:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/AimEntity;->setAccount(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    iget v3, p0, Lcom/smalife/activity/SportAimActivity;->mcalories:F

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/AimEntity;->setCalories(F)V

    .line 211
    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    iget v3, p0, Lcom/smalife/activity/SportAimActivity;->mdistance:F

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/AimEntity;->setDistance(F)V

    .line 212
    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    iget v3, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/AimEntity;->setSteps(I)V

    .line 213
    iget-object v2, p0, Lcom/smalife/activity/SportAimActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->account:Ljava/lang/String;

    iget-object v4, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    invoke-virtual {v2, v3, v4}, Lcom/smalife/db/SmaDao;->modifyAim(Ljava/lang/String;Lcom/smalife/db/entity/AimEntity;)Z

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v2, "AskAction"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "action_key"

    .line 216
    const/16 v3, 0x27

    .line 215
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const-string v2, "steps"

    iget v3, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    new-instance v1, Lcom/accloud/service/ACObject;

    invoke-direct {v1}, Lcom/accloud/service/ACObject;-><init>()V

    .line 220
    .local v1, "obj":Lcom/accloud/service/ACObject;
    const-string v2, "steps_Aim"

    iget v3, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 221
    invoke-direct {p0, v1}, Lcom/smalife/activity/SportAimActivity;->syncAim(Lcom/accloud/service/ACObject;)V

    .line 222
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/smalife/activity/SportAimActivity;->setResult(I)V

    .line 223
    invoke-virtual {p0}, Lcom/smalife/activity/SportAimActivity;->finish()V

    goto :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportAimActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/smalife/activity/SportAimActivity;->initUI()V

    .line 54
    return-void
.end method

.method public onProgressChange(Lcom/smalife/utils/CircularSeekBarNew;I)V
    .locals 2
    .param p1, "view"    # Lcom/smalife/utils/CircularSeekBarNew;
    .param p2, "newProgress"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/smalife/utils/CircularSeekBarNew;->getProgress()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    .line 59
    invoke-virtual {p1}, Lcom/smalife/utils/CircularSeekBarNew;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/smalife/activity/SportAimActivity;->progress:I

    .line 61
    iget v0, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    invoke-direct {p0, v0}, Lcom/smalife/activity/SportAimActivity;->countDistanceAndCalories(I)V

    .line 62
    iget-object v0, p0, Lcom/smalife/activity/SportAimActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/16 v6, 0x14

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v4, p0, Lcom/smalife/activity/SportAimActivity;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smalife/db/SmaDao;->getUserInfo(Ljava/lang/String;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/SportAimActivity;->user:Lcom/smalife/db/entity/UserEntity;

    .line 108
    invoke-direct {p0}, Lcom/smalife/activity/SportAimActivity;->getAimValue()Lcom/smalife/db/entity/AimEntity;

    move-result-object v0

    .line 109
    .local v0, "aimObject":Lcom/smalife/db/entity/AimEntity;
    if-eqz v0, :cond_1

    .line 110
    iput-object v0, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    .line 111
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->sport_num:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    invoke-virtual {v4}, Lcom/smalife/db/entity/AimEntity;->getSteps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    invoke-virtual {v3}, Lcom/smalife/db/entity/AimEntity;->getSteps()I

    move-result v3

    iput v3, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    .line 114
    iget v3, p0, Lcom/smalife/activity/SportAimActivity;->steps:I

    invoke-direct {p0, v3}, Lcom/smalife/activity/SportAimActivity;->countDistanceAndCalories(I)V

    .line 116
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    invoke-virtual {v3}, Lcom/smalife/db/entity/AimEntity;->getSteps()I

    move-result v3

    if-lez v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->circularSeekBarNew:Lcom/smalife/utils/CircularSeekBarNew;

    iget-object v4, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smalife/utils/CircularSeekBarNew;->setProgress(I)V

    .line 121
    :goto_0
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    :goto_1
    return-void

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->circularSeekBarNew:Lcom/smalife/utils/CircularSeekBarNew;

    invoke-virtual {v3, v6}, Lcom/smalife/utils/CircularSeekBarNew;->setProgress(I)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->sport_num:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 124
    .local v2, "initSteps":I
    invoke-direct {p0, v2}, Lcom/smalife/activity/SportAimActivity;->countDistanceAndCalories(I)V

    .line 126
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    iget-object v4, p0, Lcom/smalife/activity/SportAimActivity;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/AimEntity;->setAccount(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    iget v4, p0, Lcom/smalife/activity/SportAimActivity;->mcalories:F

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/AimEntity;->setCalories(F)V

    .line 128
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    iget v4, p0, Lcom/smalife/activity/SportAimActivity;->mdistance:F

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/AimEntity;->setDistance(F)V

    .line 129
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    invoke-virtual {v3, v2}, Lcom/smalife/db/entity/AimEntity;->setSteps(I)V

    .line 130
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v4, p0, Lcom/smalife/activity/SportAimActivity;->account:Ljava/lang/String;

    iget-object v5, p0, Lcom/smalife/activity/SportAimActivity;->aimEntity:Lcom/smalife/db/entity/AimEntity;

    invoke-virtual {v3, v4, v5}, Lcom/smalife/db/SmaDao;->addAim(Ljava/lang/String;Lcom/smalife/db/entity/AimEntity;)V

    .line 132
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3, v6}, Lcom/smalife/MyApplication;->editProgress(I)V

    .line 133
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->circularSeekBarNew:Lcom/smalife/utils/CircularSeekBarNew;

    invoke-virtual {v3, v6}, Lcom/smalife/utils/CircularSeekBarNew;->setProgress(I)V

    .line 135
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "##0.0"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "fnum":Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v3

    if-nez v3, :cond_3

    .line 137
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->distence:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smalife/activity/SportAimActivity;->mdistance:F

    float-to-double v6, v5

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09014c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->steps_v:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09014b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->calories:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smalife/activity/SportAimActivity;->mcalories:F

    float-to-double v6, v5

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09014e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 140
    iget-object v3, p0, Lcom/smalife/activity/SportAimActivity;->distence:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smalife/activity/SportAimActivity;->mdistance:F

    invoke-static {v5}, Lcom/smalife/utils/UnitUtils;->convertToMile(F)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/smalife/activity/SportAimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09014d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
