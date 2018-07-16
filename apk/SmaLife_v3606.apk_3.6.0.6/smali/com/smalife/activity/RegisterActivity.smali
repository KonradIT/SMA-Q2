.class public Lcom/smalife/activity/RegisterActivity;
.super Lcom/smalife/BaseActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/smalife/HomeKeyListener;
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smalife/BaseActivity;",
        "Landroid/os/Handler$Callback;",
        "Lcom/smalife/HomeKeyListener;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# instance fields
.field private accountMgr:Lcom/accloud/service/ACAccountMgr;

.field private aliasID:J

.field private beforText:Ljava/lang/String;

.field private callback:Lcom/accloud/cloudservice/VoidCallback;

.field private characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

.field private client_id:Ljava/lang/String;

.field private countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

.field private dao:Lcom/smalife/db/SmaDao;

.field private edt_account:Landroid/widget/EditText;

.field private edt_country_code:Landroid/widget/EditText;

.field private edt_pwd:Landroid/widget/EditText;

.field private edt_pwd2:Landroid/widget/EditText;

.field private edt_verify:Landroid/widget/EditText;

.field private entity:Lcom/smalife/db/entity/UserEntity;

.field private mAccount:Ljava/lang/String;

.field private mAllCountryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smalife/country/CountrySortModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryCode:Ljava/lang/String;

.field private mPwd:Ljava/lang/String;

.field private mPwd2:Ljava/lang/String;

.field private mType:I

.field private mVerifyCode:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private tv_country_name:Landroid/widget/TextView;

.field private user:Lcom/smalife/db/entity/UserEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->beforText:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mPwd:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mPwd2:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mCountryCode:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mVerifyCode:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v0}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->user:Lcom/smalife/db/entity/UserEntity;

    .line 292
    new-instance v0, Lcom/smalife/activity/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/RegisterActivity$1;-><init>(Lcom/smalife/activity/RegisterActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->callback:Lcom/accloud/cloudservice/VoidCallback;

    .line 356
    new-instance v0, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v0}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    .line 49
    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/RegisterActivity;)J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/smalife/activity/RegisterActivity;->aliasID:J

    return-wide v0
.end method

.method static synthetic access$10(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mVerifyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/smalife/activity/RegisterActivity;)Lcom/accloud/cloudservice/VoidCallback;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->callback:Lcom/accloud/cloudservice/VoidCallback;

    return-object v0
.end method

.method static synthetic access$13(Lcom/smalife/activity/RegisterActivity;J)V
    .locals 1

    .prologue
    .line 291
    iput-wide p1, p0, Lcom/smalife/activity/RegisterActivity;->aliasID:J

    return-void
.end method

.method static synthetic access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    return-object v0
.end method

.method static synthetic access$15(Lcom/smalife/activity/RegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_verify:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/smalife/activity/RegisterActivity;->beforText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/activity/RegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/country/GetCountryNameSort;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/RegisterActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mAllCountryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/RegisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->tv_country_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->beforText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/smalife/activity/RegisterActivity;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/smalife/activity/RegisterActivity;->mType:I

    return v0
.end method

.method static synthetic access$9(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getClientID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->client_id:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 87
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, "sma"

    .line 88
    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/smalife/MyApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->preferences:Landroid/content/SharedPreferences;

    .line 90
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->accountMgr:Lcom/accloud/service/ACAccountMgr;

    .line 91
    invoke-virtual {p0}, Lcom/smalife/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smalife/activity/RegisterActivity;->mType:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mAllCountryList:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/smalife/country/GetCountryNameSort;

    invoke-direct {v0}, Lcom/smalife/country/GetCountryNameSort;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 94
    new-instance v0, Lcom/smalife/country/CharacterParserUtil;

    invoke-direct {v0}, Lcom/smalife/country/CharacterParserUtil;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    .line 95
    invoke-direct {p0}, Lcom/smalife/activity/RegisterActivity;->initCountryList()V

    .line 96
    return-void
.end method

.method private initCountryList()V
    .locals 11

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/smalife/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 522
    const v10, 0x7f0b0021

    .line 521
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "countryList":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v1

    .local v7, "length":I
    :goto_0
    if-lt v6, v7, :cond_0

    .line 543
    return-void

    .line 525
    :cond_0
    aget-object v9, v1, v6

    const-string v10, "\\*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "country":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 528
    .local v2, "countryName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v3, v0, v9

    .line 529
    .local v3, "countryNumber":Ljava/lang/String;
    iget-object v9, p0, Lcom/smalife/activity/RegisterActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    invoke-virtual {v9, v2}, Lcom/smalife/country/CharacterParserUtil;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, "countrySortKey":Ljava/lang/String;
    new-instance v5, Lcom/smalife/country/CountrySortModel;

    invoke-direct {v5, v2, v3, v4}, Lcom/smalife/country/CountrySortModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v5, "countrySortModel":Lcom/smalife/country/CountrySortModel;
    iget-object v9, p0, Lcom/smalife/activity/RegisterActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 533
    invoke-virtual {v9, v4}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 534
    .local v8, "sortLetter":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 535
    iget-object v9, p0, Lcom/smalife/activity/RegisterActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 536
    invoke-virtual {v9, v2}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 539
    :cond_1
    iput-object v8, v5, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    .line 540
    iget-object v9, p0, Lcom/smalife/activity/RegisterActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 123
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0e0181

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f0e0182

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/smalife/activity/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/smalife/activity/RegisterActivity$2;-><init>(Lcom/smalife/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    new-instance v1, Lcom/smalife/activity/RegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/smalife/activity/RegisterActivity$3;-><init>(Lcom/smalife/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 99
    const v0, 0x7f0e0178

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->tv_country_name:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0e017a

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    .line 101
    const v0, 0x7f0e0179

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_account:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f0e017b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_pwd:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f0e017d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_pwd2:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f0e0180

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_verify:Landroid/widget/EditText;

    .line 105
    invoke-direct {p0}, Lcom/smalife/activity/RegisterActivity;->initListener()V

    .line 106
    iget v0, p0, Lcom/smalife/activity/RegisterActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_account:Landroid/widget/EditText;

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 108
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getSelectCountryNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mCountryCode:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_account:Landroid/widget/EditText;

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 116
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method private localRegister(Lcom/smalife/db/entity/UserEntity;)V
    .locals 1
    .param p1, "user"    # Lcom/smalife/db/entity/UserEntity;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->dao:Lcom/smalife/db/SmaDao;

    invoke-virtual {v0, p1}, Lcom/smalife/db/SmaDao;->addUser(Lcom/smalife/db/entity/UserEntity;)V

    .line 451
    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "error"    # Lcom/accloud/service/ACException;

    .prologue
    .line 490
    const-string v0, "ljh"

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method public gotoActivity(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    const-class v1, Lcom/smalife/activity/RegisterActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    .line 360
    new-instance v1, Lcom/smalife/activity/RegisterActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/smalife/activity/RegisterActivity$6;-><init>(Lcom/smalife/activity/RegisterActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-interface {v0, p1, p2, v1}, Lcom/accloud/service/ACAccountMgr;->login(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 447
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 547
    packed-switch p1, :pswitch_data_0

    .line 564
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/smalife/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 565
    return-void

    .line 549
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 550
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 551
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "countryName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "countryName":Ljava/lang/String;
    const-string v3, "countryNumber"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "countryNumber":Ljava/lang/String;
    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/RegisterActivity;->mCountryCode:Ljava/lang/String;

    .line 554
    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    .line 555
    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editSelectCountryNum(Ljava/lang/String;)V

    .line 556
    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->tv_country_name:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 215
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/RegisterActivity;->finish()V

    goto :goto_0

    .line 218
    :sswitch_1
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    .line 219
    iget v2, p0, Lcom/smalife/activity/RegisterActivity;->mType:I

    if-ne v2, v3, :cond_0

    .line 220
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "num":Ljava/lang/String;
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    iput-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    .line 226
    .end local v0    # "num":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/smalife/activity/RegisterActivity;->sendVerifyCode(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :sswitch_2
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    .line 231
    iget v2, p0, Lcom/smalife/activity/RegisterActivity;->mType:I

    if-ne v2, v3, :cond_2

    .line 232
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "selectCountryNum":Ljava/lang/String;
    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    iput-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    const-string v3, "+"

    .line 239
    const-string v4, ""

    .line 238
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editSelectCountryNum(Ljava/lang/String;)V

    .line 241
    .end local v1    # "selectCountryNum":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mPwd:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_pwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mPwd2:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_verify:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mVerifyCode:Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->client_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setClient_id(Ljava/lang/String;)V

    .line 247
    const-string v2, ""

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->mPwd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mPwd:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mPwd2:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 248
    :cond_3
    const v2, 0x7f0900bb

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->mPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->mPwd2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 252
    const v2, 0x7f090163

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 255
    :cond_5
    invoke-static {p0}, Lcom/smalife/tools/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 257
    const v2, 0x7f0900b5

    .line 256
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 260
    :cond_6
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity;->mAccount:Ljava/lang/String;

    .line 261
    new-instance v4, Lcom/smalife/activity/RegisterActivity$4;

    invoke-direct {v4, p0}, Lcom/smalife/activity/RegisterActivity$4;-><init>(Lcom/smalife/activity/RegisterActivity;)V

    .line 260
    invoke-interface {v2, v3, v4}, Lcom/accloud/service/ACAccountMgr;->checkExist(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V

    goto/16 :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e0181 -> :sswitch_1
        0x7f0e0182 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RegisterActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/smalife/activity/RegisterActivity;->init()V

    .line 81
    invoke-direct {p0}, Lcom/smalife/activity/RegisterActivity;->initView()V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/smalife/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 501
    sparse-switch p1, :sswitch_data_0

    .line 517
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/smalife/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 503
    :sswitch_0
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    const-string v1, "verfy_v"

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_verify:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pwd_v"

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 510
    :sswitch_1
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    const-string v1, "verfy_v"

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_verify:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 513
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pwd_v"

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "vcode"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->accountMgr:Lcom/accloud/service/ACAccountMgr;

    .line 321
    new-instance v6, Lcom/smalife/activity/RegisterActivity$5;

    invoke-direct {v6, p0}, Lcom/smalife/activity/RegisterActivity$5;-><init>(Lcom/smalife/activity/RegisterActivity;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 320
    invoke-interface/range {v0 .. v6}, Lcom/accloud/service/ACAccountMgr;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 354
    return-void
.end method

.method public sendVerifyCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "tem":I
    iget v2, p0, Lcom/smalife/activity/RegisterActivity;->mType:I

    if-ne v2, v1, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/smalife/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 463
    const-string v3, "CN"

    .line 462
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 463
    if-eqz v2, :cond_0

    move v0, v1

    .line 468
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smalife/activity/RegisterActivity;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity;->accountMgr:Lcom/accloud/service/ACAccountMgr;

    new-instance v2, Lcom/smalife/activity/RegisterActivity$7;

    invoke-direct {v2, p0}, Lcom/smalife/activity/RegisterActivity$7;-><init>(Lcom/smalife/activity/RegisterActivity;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/accloud/service/ACAccountMgr;->sendVerifyCode(Ljava/lang/String;ILcom/accloud/cloudservice/VoidCallback;)V

    .line 486
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/smalife/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 466
    const-string v2, "CN"

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 466
    if-eqz v1, :cond_2

    const/4 v0, 0x4

    .line 465
    :goto_1
    goto :goto_0

    .line 466
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 1
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-direct {p0, v0}, Lcom/smalife/activity/RegisterActivity;->localRegister(Lcom/smalife/db/entity/UserEntity;)V

    .line 496
    invoke-virtual {p0}, Lcom/smalife/activity/RegisterActivity;->finish()V

    .line 497
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/RegisterActivity;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
