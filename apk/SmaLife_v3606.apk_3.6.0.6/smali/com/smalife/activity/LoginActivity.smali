.class public Lcom/smalife/activity/LoginActivity;
.super Lcom/smalife/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/smalife/HomeKeyListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_AUTH_CANCEL:I = 0x2

.field private static final MSG_AUTH_COMPLETE:I = 0x4

.field private static final MSG_AUTH_ERROR:I = 0x3


# instance fields
.field private aliasID:J

.field private application:Lcom/smalife/MyApplication;

.field private beforText:Ljava/lang/String;

.field private btn_login:Landroid/widget/Button;

.field private characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

.field private countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

.field private country_code:Ljava/lang/String;

.field private dao:Lcom/smalife/db/SmaDao;

.field private edt_account:Landroid/widget/EditText;

.field private edt_country_code:Landroid/widget/EditText;

.field private edt_pwd:Landroid/widget/EditText;

.field entity:Lcom/smalife/db/entity/UserEntity;

.field private goto_main:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

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

.field private mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

.field private mType:I

.field private nameString:Ljava/lang/String;

.field private pwdString:Ljava/lang/String;

.field private retpwd:Landroid/widget/TextView;

.field private rl_choose_country:Landroid/widget/RelativeLayout;

.field private tv_country_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v0}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/smalife/activity/LoginActivity;->mType:I

    .line 166
    new-instance v0, Lcom/smalife/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/LoginActivity$1;-><init>(Lcom/smalife/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->handler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/LoginActivity;Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smalife/activity/LoginActivity;->loginWithThirdId(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/LoginActivity;J)V
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/smalife/activity/LoginActivity;->aliasID:J

    return-void
.end method

.method static synthetic access$10(Lcom/smalife/activity/LoginActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->mAllCountryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/smalife/activity/LoginActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->tv_country_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/smalife/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->beforText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/LoginActivity;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/smalife/activity/LoginActivity;->aliasID:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/LoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/LoginActivity;Lcom/smalife/ablecloud/DownloadDataManager;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smalife/activity/LoginActivity;->mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

    return-void
.end method

.method static synthetic access$6(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/ablecloud/DownloadDataManager;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->mDownloadManager:Lcom/smalife/ablecloud/DownloadDataManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/smalife/activity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/smalife/activity/LoginActivity;->beforText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/smalife/activity/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->edt_country_code:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/smalife/activity/LoginActivity;)Lcom/smalife/country/GetCountryNameSort;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    return-object v0
.end method

.method private initCountryList()V
    .locals 11

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 635
    const v10, 0x7f0b0021

    .line 634
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "countryList":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v1

    .local v7, "length":I
    :goto_0
    if-lt v6, v7, :cond_0

    .line 656
    return-void

    .line 638
    :cond_0
    aget-object v9, v1, v6

    const-string v10, "\\*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "country":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 641
    .local v2, "countryName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v3, v0, v9

    .line 642
    .local v3, "countryNumber":Ljava/lang/String;
    iget-object v9, p0, Lcom/smalife/activity/LoginActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    invoke-virtual {v9, v2}, Lcom/smalife/country/CharacterParserUtil;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "countrySortKey":Ljava/lang/String;
    new-instance v5, Lcom/smalife/country/CountrySortModel;

    invoke-direct {v5, v2, v3, v4}, Lcom/smalife/country/CountrySortModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v5, "countrySortModel":Lcom/smalife/country/CountrySortModel;
    iget-object v9, p0, Lcom/smalife/activity/LoginActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 646
    invoke-virtual {v9, v4}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 647
    .local v8, "sortLetter":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 648
    iget-object v9, p0, Lcom/smalife/activity/LoginActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 649
    invoke-virtual {v9, v2}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 652
    :cond_1
    iput-object v8, v5, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    .line 653
    iget-object v9, p0, Lcom/smalife/activity/LoginActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private loginWithThirdId(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "platform"    # Lcom/accloud/service/ACThirdPlatform;
    .param p2, "user_account"    # Ljava/lang/String;
    .param p3, "nickName"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    .line 601
    new-instance v1, Lcom/smalife/activity/LoginActivity$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/smalife/activity/LoginActivity$3;-><init>(Lcom/smalife/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-interface {v0, p1, p2, p4, v1}, Lcom/accloud/service/ACAccountMgr;->loginWithOpenId(Lcom/accloud/service/ACThirdPlatform;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 631
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->rl_choose_country:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/smalife/activity/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/smalife/activity/LoginActivity$4;-><init>(Lcom/smalife/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->edt_country_code:Landroid/widget/EditText;

    new-instance v1, Lcom/smalife/activity/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/smalife/activity/LoginActivity$5;-><init>(Lcom/smalife/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 728
    return-void
.end method

.method private toRegister()V
    .locals 3

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/smalife/activity/LoginActivity;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 397
    return-void
.end method

.method private toResetPwd()V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/RetPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/smalife/activity/LoginActivity;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method


# virtual methods
.method public gotoActivity(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 512
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    const-class v1, Lcom/smalife/activity/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public initUI()V
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f0e0110

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    .line 100
    const v0, 0x7f0e0111

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    .line 101
    const v0, 0x7f0e0119

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->goto_main:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->goto_main:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0e0114

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0e0113

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->btn_login:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->btn_login:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0e0112

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->retpwd:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0e0109

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0e010b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->retpwd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f0e010d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->rl_choose_country:Landroid/widget/RelativeLayout;

    .line 117
    const v0, 0x7f0e010e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->edt_country_code:Landroid/widget/EditText;

    .line 118
    const v0, 0x7f0e010f

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->tv_country_name:Landroid/widget/TextView;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->mAllCountryList:Ljava/util/List;

    .line 120
    new-instance v0, Lcom/smalife/country/GetCountryNameSort;

    invoke-direct {v0}, Lcom/smalife/country/GetCountryNameSort;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 121
    new-instance v0, Lcom/smalife/country/CharacterParserUtil;

    invoke-direct {v0}, Lcom/smalife/country/CharacterParserUtil;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    .line 122
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/smalife/activity/LoginActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/smalife/activity/LoginActivity$2;-><init>(Lcom/smalife/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-interface {v0, p1, p2, v1}, Lcom/accloud/service/ACAccountMgr;->login(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 508
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 732
    packed-switch p1, :pswitch_data_0

    .line 748
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/smalife/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 749
    return-void

    .line 734
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 735
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 736
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "countryName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "countryName":Ljava/lang/String;
    const-string v3, "countryNumber"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, "countryNumber":Ljava/lang/String;
    const-string v3, "+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/activity/LoginActivity;->country_code:Ljava/lang/String;

    .line 739
    iget-object v3, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    iget-object v4, p0, Lcom/smalife/activity/LoginActivity;->country_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editSelectCountryNum(Ljava/lang/String;)V

    .line 740
    iget-object v3, p0, Lcom/smalife/activity/LoginActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v3, p0, Lcom/smalife/activity/LoginActivity;->tv_country_name:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0200ee

    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 295
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 298
    :sswitch_0
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    .line 299
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/smalife/activity/LoginActivity;->pwdString:Ljava/lang/String;

    .line 300
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->pwdString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 301
    :cond_0
    const v6, 0x7f0900b6

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 302
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 305
    :cond_1
    invoke-static {p0}, Lcom/smalife/tools/NetWorkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 306
    const v6, 0x7f0900b5

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 307
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 311
    :cond_2
    iget v6, p0, Lcom/smalife/activity/LoginActivity;->mType:I

    if-ne v6, v7, :cond_3

    .line 312
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 313
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "country_num":Ljava/lang/String;
    const-string v6, "+86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 315
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    .line 320
    :goto_1
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    const-string v7, "+"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smalife/MyApplication;->editSelectCountryNum(Ljava/lang/String;)V

    .line 322
    .end local v0    # "country_num":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/smalife/activity/LoginActivity;->pwdString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 323
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    iget-object v7, p0, Lcom/smalife/activity/LoginActivity;->pwdString:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/smalife/activity/LoginActivity;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .restart local v0    # "country_num":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "+"

    const-string v8, "00"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    iget-object v7, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 317
    iput-object v6, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    goto :goto_1

    .line 326
    .end local v0    # "country_num":Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0}, Lcom/smalife/activity/LoginActivity;->toRegister()V

    goto/16 :goto_0

    .line 329
    :sswitch_2
    iput v7, p0, Lcom/smalife/activity/LoginActivity;->mType:I

    .line 330
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->rl_choose_country:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 331
    const v6, 0x7f0e010a

    invoke-virtual {p0, v6}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const v6, 0x7f0e010c

    invoke-virtual {p0, v6}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 333
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 334
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 336
    .local v2, "d1":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v2, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 337
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v6, v1, v9, v9, v2}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    const v7, 0x7f0900b9

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_0

    .line 341
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "d1":Landroid/graphics/drawable/Drawable;
    :sswitch_3
    const/4 v6, 0x2

    iput v6, p0, Lcom/smalife/activity/LoginActivity;->mType:I

    .line 342
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->rl_choose_country:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 343
    const v6, 0x7f0e010a

    invoke-virtual {p0, v6}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 344
    const v6, 0x7f0e010c

    invoke-virtual {p0, v6}, Lcom/smalife/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200df

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 346
    .local v3, "d3":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v3, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 348
    .local v4, "d4":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 349
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v6, v3, v9, v9, v4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    const v7, 0x7f0900ba

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_0

    .line 368
    .end local v3    # "d3":Landroid/graphics/drawable/Drawable;
    .end local v4    # "d4":Landroid/graphics/drawable/Drawable;
    :sswitch_4
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    const-string v7, "welcome"

    invoke-virtual {v6, v7}, Lcom/smalife/MyApplication;->editAccount(Ljava/lang/String;)V

    .line 369
    new-instance v5, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v5}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    .line 370
    .local v5, "testUser":Lcom/smalife/db/entity/UserEntity;
    const-string v6, "welcome"

    invoke-virtual {v5, v6}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 371
    const/16 v6, 0xaa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    .line 372
    const/high16 v6, 0x429a0000    # 77.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    .line 373
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->dao:Lcom/smalife/db/SmaDao;

    invoke-virtual {v6, v5}, Lcom/smalife/db/SmaDao;->addUser(Lcom/smalife/db/entity/UserEntity;)V

    .line 374
    iget-object v6, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 375
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/smalife/activity/MainActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/smalife/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    :goto_2
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 377
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/smalife/activity/BondActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/smalife/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 382
    .end local v5    # "testUser":Lcom/smalife/db/entity/UserEntity;
    :sswitch_5
    invoke-direct {p0}, Lcom/smalife/activity/LoginActivity;->toResetPwd()V

    goto/16 :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0109 -> :sswitch_2
        0x7f0e010b -> :sswitch_3
        0x7f0e0112 -> :sswitch_5
        0x7f0e0113 -> :sswitch_0
        0x7f0e0114 -> :sswitch_1
        0x7f0e0119 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->initUI()V

    .line 87
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 89
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    .line 91
    new-instance v0, Lcom/smalife/HomeKeyEventReceiver;

    invoke-direct {v0, p0}, Lcom/smalife/HomeKeyEventReceiver;-><init>(Lcom/smalife/HomeKeyListener;)V

    iput-object v0, p0, Lcom/smalife/activity/LoginActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    .line 92
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 93
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-direct {p0}, Lcom/smalife/activity/LoginActivity;->initCountryList()V

    .line 95
    invoke-direct {p0}, Lcom/smalife/activity/LoginActivity;->setListener()V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-object v0, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onPause()V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 141
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/smalife/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 144
    const-string v1, "userAccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    .line 145
    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/LoginActivity;->pwdString:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity;->nameString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity;->edt_pwd:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity;->pwdString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getSelectCountryNum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/LoginActivity;->country_code:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity;->country_code:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/smalife/activity/LoginActivity;->country_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity;->edt_country_code:Landroid/widget/EditText;

    const-string v2, "+86"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity;->edt_country_code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 158
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity;->edt_account:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 159
    return-void

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity;->edt_country_code:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/smalife/activity/LoginActivity;->country_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
