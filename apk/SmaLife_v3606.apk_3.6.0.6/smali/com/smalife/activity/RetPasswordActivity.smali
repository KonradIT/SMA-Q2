.class public Lcom/smalife/activity/RetPasswordActivity;
.super Lcom/smalife/BaseActivity;
.source "RetPasswordActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/smalife/HomeKeyListener;


# instance fields
.field private accountMgr:Lcom/accloud/service/ACAccountMgr;

.field private beforText:Ljava/lang/String;

.field private characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

.field private client_id:Ljava/lang/String;

.field private countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

.field private edt_account:Landroid/widget/EditText;

.field private edt_country_code:Landroid/widget/EditText;

.field private edt_pwd:Landroid/widget/EditText;

.field private edt_pwd2:Landroid/widget/EditText;

.field private edt_verify:Landroid/widget/EditText;

.field private homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

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

.field private tv_country_name:Landroid/widget/TextView;

.field private user:Lcom/smalife/db/entity/UserEntity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->beforText:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mAccount:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd2:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mCountryCode:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mVerifyCode:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v0}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->user:Lcom/smalife/db/entity/UserEntity;

    .line 39
    return-void
.end method

.method private ModifyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "verifyCode"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/smalife/activity/RetPasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/smalife/activity/RetPasswordActivity$3;-><init>(Lcom/smalife/activity/RetPasswordActivity;)V

    .line 251
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/accloud/service/ACAccountMgr;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 269
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/RetPasswordActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/smalife/activity/RetPasswordActivity;->beforText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/RetPasswordActivity;)Lcom/smalife/country/GetCountryNameSort;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/RetPasswordActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mAllCountryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->tv_country_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/RetPasswordActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->beforText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/RetPasswordActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_verify:Landroid/widget/EditText;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getClientID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->client_id:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/smalife/HomeKeyEventReceiver;

    invoke-direct {v0, p0}, Lcom/smalife/HomeKeyEventReceiver;-><init>(Lcom/smalife/HomeKeyListener;)V

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    .line 76
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 77
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/RetPasswordActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->accountMgr:Lcom/accloud/service/ACAccountMgr;

    .line 80
    invoke-virtual {p0}, Lcom/smalife/activity/RetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mType:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mAllCountryList:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/smalife/country/GetCountryNameSort;

    invoke-direct {v0}, Lcom/smalife/country/GetCountryNameSort;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 83
    new-instance v0, Lcom/smalife/country/CharacterParserUtil;

    invoke-direct {v0}, Lcom/smalife/country/CharacterParserUtil;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    .line 84
    invoke-direct {p0}, Lcom/smalife/activity/RetPasswordActivity;->initCountryList()V

    .line 85
    return-void
.end method

.method private initCountryList()V
    .locals 11

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 310
    const v10, 0x7f0b0021

    .line 309
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "countryList":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v1

    .local v7, "length":I
    :goto_0
    if-lt v6, v7, :cond_0

    .line 331
    return-void

    .line 313
    :cond_0
    aget-object v9, v1, v6

    const-string v10, "\\*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "country":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 316
    .local v2, "countryName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v3, v0, v9

    .line 317
    .local v3, "countryNumber":Ljava/lang/String;
    iget-object v9, p0, Lcom/smalife/activity/RetPasswordActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    invoke-virtual {v9, v2}, Lcom/smalife/country/CharacterParserUtil;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "countrySortKey":Ljava/lang/String;
    new-instance v5, Lcom/smalife/country/CountrySortModel;

    invoke-direct {v5, v2, v3, v4}, Lcom/smalife/country/CountrySortModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v5, "countrySortModel":Lcom/smalife/country/CountrySortModel;
    iget-object v9, p0, Lcom/smalife/activity/RetPasswordActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 321
    invoke-virtual {v9, v4}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "sortLetter":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 323
    iget-object v9, p0, Lcom/smalife/activity/RetPasswordActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 324
    invoke-virtual {v9, v2}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    :cond_1
    iput-object v8, v5, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    .line 328
    iget-object v9, p0, Lcom/smalife/activity/RetPasswordActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 112
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0e0181

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/smalife/activity/RetPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/smalife/activity/RetPasswordActivity$1;-><init>(Lcom/smalife/activity/RetPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    new-instance v1, Lcom/smalife/activity/RetPasswordActivity$2;

    invoke-direct {v1, p0}, Lcom/smalife/activity/RetPasswordActivity$2;-><init>(Lcom/smalife/activity/RetPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 88
    const v0, 0x7f0e0178

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->tv_country_name:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0e017a

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    .line 90
    const v0, 0x7f0e0179

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_account:Landroid/widget/EditText;

    .line 91
    const v0, 0x7f0e017b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_pwd:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f0e017d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_pwd2:Landroid/widget/EditText;

    .line 93
    const v0, 0x7f0e0180

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_verify:Landroid/widget/EditText;

    .line 94
    invoke-direct {p0}, Lcom/smalife/activity/RetPasswordActivity;->initListener()V

    .line 95
    iget v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_account:Landroid/widget/EditText;

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 97
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getSelectCountryNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mCountryCode:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/smalife/activity/RetPasswordActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_account:Landroid/widget/EditText;

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 105
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public gotoActivity(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 273
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->application:Lcom/smalife/MyApplication;

    const-class v1, Lcom/smalife/activity/RetPasswordActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 352
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/smalife/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 353
    return-void

    .line 337
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 338
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 339
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "countryName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "countryName":Ljava/lang/String;
    const-string v3, "countryNumber"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "countryNumber":Ljava/lang/String;
    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->mCountryCode:Ljava/lang/String;

    .line 342
    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->application:Lcom/smalife/MyApplication;

    .line 343
    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editSelectCountryNum(Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->tv_country_name:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
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

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 200
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/RetPasswordActivity;->finish()V

    goto :goto_0

    .line 203
    :sswitch_1
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mAccount:Ljava/lang/String;

    .line 204
    iget v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mType:I

    if-ne v2, v3, :cond_0

    .line 205
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "num":Ljava/lang/String;
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_account:Landroid/widget/EditText;

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

    .line 207
    iput-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mAccount:Ljava/lang/String;

    .line 211
    .end local v0    # "num":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/smalife/activity/RetPasswordActivity;->sendVerifyCode(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :sswitch_2
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mAccount:Ljava/lang/String;

    .line 215
    iget v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mType:I

    if-ne v2, v3, :cond_2

    .line 216
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "selectCountryNum":Ljava/lang/String;
    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_account:Landroid/widget/EditText;

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

    .line 219
    iput-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mAccount:Ljava/lang/String;

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->application:Lcom/smalife/MyApplication;

    const-string v3, "+"

    .line 223
    const-string v4, ""

    .line 222
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smalife/MyApplication;->editSelectCountryNum(Ljava/lang/String;)V

    .line 225
    .end local v1    # "selectCountryNum":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_pwd2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd2:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->edt_verify:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mVerifyCode:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->client_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smalife/db/entity/UserEntity;->setClient_id(Ljava/lang/String;)V

    .line 231
    const-string v2, ""

    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd2:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 232
    :cond_3
    const v2, 0x7f0900bb

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 236
    const v2, 0x7f090163

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 239
    :cond_5
    invoke-static {p0}, Lcom/smalife/tools/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 241
    const v2, 0x7f0900b5

    .line 240
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 244
    :cond_6
    iget-object v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/smalife/activity/RetPasswordActivity;->mPwd:Ljava/lang/String;

    iget-object v4, p0, Lcom/smalife/activity/RetPasswordActivity;->mVerifyCode:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/smalife/activity/RetPasswordActivity;->ModifyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e002c -> :sswitch_2
        0x7f0e0181 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/smalife/activity/RetPasswordActivity;->init()V

    .line 70
    invoke-direct {p0}, Lcom/smalife/activity/RetPasswordActivity;->initView()V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 188
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RetPasswordActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v0, p0, Lcom/smalife/activity/RetPasswordActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onPause()V

    .line 195
    return-void
.end method

.method public sendVerifyCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "tem":I
    iget v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mType:I

    if-ne v2, v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 281
    const-string v3, "CN"

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 281
    if-eqz v2, :cond_0

    move v0, v1

    .line 286
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smalife/activity/RetPasswordActivity;->mType:I

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

    .line 287
    iget-object v1, p0, Lcom/smalife/activity/RetPasswordActivity;->accountMgr:Lcom/accloud/service/ACAccountMgr;

    new-instance v2, Lcom/smalife/activity/RetPasswordActivity$4;

    invoke-direct {v2, p0}, Lcom/smalife/activity/RetPasswordActivity$4;-><init>(Lcom/smalife/activity/RetPasswordActivity;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/accloud/service/ACAccountMgr;->sendVerifyCode(Ljava/lang/String;ILcom/accloud/cloudservice/VoidCallback;)V

    .line 306
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/smalife/activity/RetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 284
    const-string v2, "CN"

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 284
    if-eqz v1, :cond_2

    const/4 v0, 0x4

    .line 283
    :goto_1
    goto :goto_0

    .line 284
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method
