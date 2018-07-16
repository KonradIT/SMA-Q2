.class public Lcom/smalife/activity/PairActivity;
.super Lcom/smalife/BaseActivity;
.source "PairActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;
    }
.end annotation


# instance fields
.field private account_v:Ljava/lang/String;

.field askBroadCastReceiver:Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;

.field private back_btn:Landroid/widget/ImageView;

.field private beforText:Ljava/lang/String;

.field private characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

.field private clientAccount:Landroid/widget/EditText;

.field private client_id:Ljava/lang/String;

.field private countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

.field private editText_countryNum:Landroid/widget/EditText;

.field filter:Landroid/content/IntentFilter;

.field private hasLogin:Z

.field private linear_choseCountry:Landroid/widget/LinearLayout;

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

.field manager:Lcom/smalife/ablecloud/SendMsgManager;

.field private nickName:Ljava/lang/String;

.field private pairView:Landroid/widget/ImageView;

.field private pair_btn:Landroid/widget/Button;

.field private tv_countryName:Landroid/widget/TextView;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/activity/PairActivity;->hasLogin:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/activity/PairActivity;->beforText:Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;

    invoke-direct {v0, p0}, Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;-><init>(Lcom/smalife/activity/PairActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/PairActivity;->askBroadCastReceiver:Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/PairActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/smalife/activity/PairActivity;->beforText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/PairActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->editText_countryNum:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/PairActivity;)Lcom/smalife/country/GetCountryNameSort;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/PairActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->mAllCountryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/PairActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->tv_countryName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/PairActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->beforText:Ljava/lang/String;

    return-object v0
.end method

.method private initCountryList()V
    .locals 11

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 225
    const v10, 0x7f0b0021

    .line 224
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "countryList":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v1

    .local v7, "length":I
    :goto_0
    if-lt v6, v7, :cond_0

    .line 246
    return-void

    .line 228
    :cond_0
    aget-object v9, v1, v6

    const-string v10, "\\*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "country":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 231
    .local v2, "countryName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v3, v0, v9

    .line 232
    .local v3, "countryNumber":Ljava/lang/String;
    iget-object v9, p0, Lcom/smalife/activity/PairActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    invoke-virtual {v9, v2}, Lcom/smalife/country/CharacterParserUtil;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "countrySortKey":Ljava/lang/String;
    new-instance v5, Lcom/smalife/country/CountrySortModel;

    invoke-direct {v5, v2, v3, v4}, Lcom/smalife/country/CountrySortModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v5, "countrySortModel":Lcom/smalife/country/CountrySortModel;
    iget-object v9, p0, Lcom/smalife/activity/PairActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 236
    invoke-virtual {v9, v4}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "sortLetter":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 238
    iget-object v9, p0, Lcom/smalife/activity/PairActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 239
    invoke-virtual {v9, v2}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 242
    :cond_1
    iput-object v8, v5, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    .line 243
    iget-object v9, p0, Lcom/smalife/activity/PairActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->linear_choseCountry:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/smalife/activity/PairActivity$2;

    invoke-direct {v1, p0}, Lcom/smalife/activity/PairActivity$2;-><init>(Lcom/smalife/activity/PairActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->editText_countryNum:Landroid/widget/EditText;

    new-instance v1, Lcom/smalife/activity/PairActivity$3;

    invoke-direct {v1, p0}, Lcom/smalife/activity/PairActivity$3;-><init>(Lcom/smalife/activity/PairActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    return-void
.end method


# virtual methods
.method public askService(Ljava/lang/String;)V
    .locals 3
    .param p1, "Ask_account"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Lcom/accloud/service/ACMsg;

    invoke-direct {v0}, Lcom/accloud/service/ACMsg;-><init>()V

    .line 169
    .local v0, "msg":Lcom/accloud/service/ACMsg;
    const-string v1, "askFriend"

    invoke-virtual {v0, v1}, Lcom/accloud/service/ACMsg;->setName(Ljava/lang/String;)V

    .line 170
    const-string v1, "fAccount"

    invoke-virtual {v0, v1, p1}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 171
    const-string v1, "uAccount"

    iget-object v2, p0, Lcom/smalife/activity/PairActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 172
    const-string v1, "nickName"

    iget-object v2, p0, Lcom/smalife/activity/PairActivity;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACMsg;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 173
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->manager:Lcom/smalife/ablecloud/SendMsgManager;

    new-instance v2, Lcom/smalife/activity/PairActivity$1;

    invoke-direct {v2, p0}, Lcom/smalife/activity/PairActivity$1;-><init>(Lcom/smalife/activity/PairActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/smalife/ablecloud/SendMsgManager;->sendMsg(Lcom/accloud/service/ACMsg;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 200
    return-void
.end method

.method public initUI()V
    .locals 6

    .prologue
    .line 79
    const v3, 0x7f0e016c

    invoke-virtual {p0, v3}, Lcom/smalife/activity/PairActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->clientAccount:Landroid/widget/EditText;

    .line 81
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 82
    const v4, 0x7f090128

    .line 81
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    .local v2, "span":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 86
    .local v0, "abs":Landroid/text/style/AbsoluteSizeSpan;
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 88
    iget-object v3, p0, Lcom/smalife/activity/PairActivity;->clientAccount:Landroid/widget/EditText;

    new-instance v4, Landroid/text/SpannedString;

    invoke-direct {v4, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 89
    const v3, 0x7f0e016d

    invoke-virtual {p0, v3}, Lcom/smalife/activity/PairActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->pair_btn:Landroid/widget/Button;

    .line 90
    iget-object v3, p0, Lcom/smalife/activity/PairActivity;->pair_btn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v3, 0x7f0e0006

    invoke-virtual {p0, v3}, Lcom/smalife/activity/PairActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->back_btn:Landroid/widget/ImageView;

    .line 93
    iget-object v3, p0, Lcom/smalife/activity/PairActivity;->back_btn:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v3, 0x7f0e0163

    invoke-virtual {p0, v3}, Lcom/smalife/activity/PairActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->pairView:Landroid/widget/ImageView;

    .line 95
    iget-object v3, p0, Lcom/smalife/activity/PairActivity;->pairView:Landroid/widget/ImageView;

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    iget-object v3, p0, Lcom/smalife/activity/PairActivity;->pairView:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 98
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->mAllCountryList:Ljava/util/List;

    .line 101
    new-instance v3, Lcom/smalife/country/GetCountryNameSort;

    invoke-direct {v3}, Lcom/smalife/country/GetCountryNameSort;-><init>()V

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 102
    new-instance v3, Lcom/smalife/country/CharacterParserUtil;

    invoke-direct {v3}, Lcom/smalife/country/CharacterParserUtil;-><init>()V

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    .line 103
    const v3, 0x7f0e0169

    invoke-virtual {p0, v3}, Lcom/smalife/activity/PairActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->linear_choseCountry:Landroid/widget/LinearLayout;

    .line 104
    const v3, 0x7f0e016a

    invoke-virtual {p0, v3}, Lcom/smalife/activity/PairActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->editText_countryNum:Landroid/widget/EditText;

    .line 105
    const v3, 0x7f0e016b

    invoke-virtual {p0, v3}, Lcom/smalife/activity/PairActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/smalife/activity/PairActivity;->tv_countryName:Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 333
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/smalife/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    return-void

    .line 319
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 320
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 321
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "countryName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "countryName":Ljava/lang/String;
    const-string v3, "countryNumber"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "countryNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    .line 324
    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editSelectCountryNum(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/smalife/activity/PairActivity;->editText_countryNum:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v3, p0, Lcom/smalife/activity/PairActivity;->tv_countryName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x32

    .line 136
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 139
    :sswitch_0
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->editText_countryNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "country_code":Ljava/lang/String;
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->clientAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/PairActivity;->account_v:Ljava/lang/String;

    .line 147
    :goto_1
    iget-boolean v1, p0, Lcom/smalife/activity/PairActivity;->hasLogin:Z

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->account_v:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->account_v:Ljava/lang/String;

    iget-object v2, p0, Lcom/smalife/activity/PairActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->account_v:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/smalife/activity/PairActivity;->askService(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    const-string v3, "00"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/smalife/activity/PairActivity;->clientAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    iput-object v1, p0, Lcom/smalife/activity/PairActivity;->account_v:Ljava/lang/String;

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 162
    .end local v0    # "country_code":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/smalife/activity/PairActivity;->finish()V

    goto/16 :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_1
        0x7f0e016d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/smalife/activity/PairActivity;->setContentView(I)V

    .line 68
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/PairActivity;->userAccount:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/PairActivity;->nickName:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getClientID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/PairActivity;->client_id:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/PairActivity;->manager:Lcom/smalife/ablecloud/SendMsgManager;

    .line 72
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getHasLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/smalife/activity/PairActivity;->hasLogin:Z

    .line 73
    invoke-virtual {p0}, Lcom/smalife/activity/PairActivity;->initUI()V

    .line 74
    invoke-direct {p0}, Lcom/smalife/activity/PairActivity;->setListener()V

    .line 75
    invoke-direct {p0}, Lcom/smalife/activity/PairActivity;->initCountryList()V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 131
    const-string v0, "ljh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--friend--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getFriendAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/smalife/activity/PairActivity;->askBroadCastReceiver:Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/PairActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 112
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "FriendAskActionString"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smalife/activity/PairActivity;->filter:Landroid/content/IntentFilter;

    .line 113
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->askBroadCastReceiver:Lcom/smalife/activity/PairActivity$AskBroadCastReceiver;

    iget-object v2, p0, Lcom/smalife/activity/PairActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/smalife/activity/PairActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getSelectCountryNum()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "countryNum":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->editText_countryNum:Landroid/widget/EditText;

    const-string v2, "+86"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/smalife/activity/PairActivity;->editText_countryNum:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
