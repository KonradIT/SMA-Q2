.class public Lcom/smalife/activity/InputActivity;
.super Lcom/smalife/BaseActivity;
.source "InputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/smalife/HomeKeyListener;


# instance fields
.field private _age:Landroid/widget/EditText;

.field private account:Ljava/lang/String;

.field private age_v:Ljava/lang/String;

.field private application:Lcom/smalife/MyApplication;

.field private client_id:Ljava/lang/String;

.field private dao:Lcom/smalife/db/SmaDao;

.field private h:Ljava/lang/String;

.field private header_icon:Landroid/widget/ImageView;

.field private header_url:Ljava/lang/String;

.field private high:Landroid/widget/EditText;

.field private hightUnit:Landroid/widget/TextView;

.field homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

.field private inchUnit:Landroid/widget/TextView;

.field private listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private manRadio:Landroid/widget/RadioButton;

.field private metricUnit:Landroid/widget/TextView;

.field private next_btn:Landroid/widget/Button;

.field private nickName:Ljava/lang/String;

.field private nickNamev:Landroid/widget/EditText;

.field private password:Ljava/lang/String;

.field private sex:I

.field private sexRadio:Landroid/widget/RadioGroup;

.field private unit:I

.field private unitSet:Landroid/widget/LinearLayout;

.field private user:Lcom/smalife/db/entity/UserEntity;

.field private w:Ljava/lang/String;

.field private weight:Landroid/widget/EditText;

.field private weightUnit:Landroid/widget/TextView;

.field private womanRadio:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 41
    iput v0, p0, Lcom/smalife/activity/InputActivity;->sex:I

    .line 42
    iput v0, p0, Lcom/smalife/activity/InputActivity;->unit:I

    .line 53
    new-instance v0, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v0}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    .line 96
    new-instance v0, Lcom/smalife/activity/InputActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/InputActivity$1;-><init>(Lcom/smalife/activity/InputActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/InputActivity;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/smalife/activity/InputActivity;->sex:I

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/InputActivity;)Lcom/smalife/db/SmaDao;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->dao:Lcom/smalife/db/SmaDao;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/InputActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->account:Ljava/lang/String;

    return-object v0
.end method

.method private goNext()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->_age:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->age_v:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->high:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->h:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->weight:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->w:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->nickNamev:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/UserEntity;->setNickName(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->age_v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->age_v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->_age:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/UserEntity;->setAge(Ljava/lang/Integer;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->high:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->w:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->weight:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget v1, p0, Lcom/smalife/activity/InputActivity;->sex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 179
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget v1, p0, Lcom/smalife/activity/InputActivity;->unit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/UserEntity;->setUnit(Ljava/lang/Integer;)V

    .line 180
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    iget v1, p0, Lcom/smalife/activity/InputActivity;->unit:I

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editUnit(I)V

    .line 181
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->client_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smalife/db/entity/UserEntity;->setClient_id(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-direct {p0, v0}, Lcom/smalife/activity/InputActivity;->updateUser(Lcom/smalife/db/entity/UserEntity;)V

    .line 184
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getNickName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/smalife/activity/InputActivity$2;

    invoke-direct {v2, p0}, Lcom/smalife/activity/InputActivity$2;-><init>(Lcom/smalife/activity/InputActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/accloud/service/ACAccountMgr;->changeNickName(Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 194
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->finish()V

    .line 201
    return-void

    .line 197
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smalife/activity/BondActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f0e00e8

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->nickNamev:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0e00e9

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->_age:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f0e00ea

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->sexRadio:Landroid/widget/RadioGroup;

    .line 71
    const v0, 0x7f0e00ed

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->high:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->weight:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->next_btn:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->sexRadio:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/smalife/activity/InputActivity;->listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->next_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 77
    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    .line 78
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getClientID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->client_id:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->password:Ljava/lang/String;

    .line 80
    const v0, 0x7f0e00e7

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->header_icon:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->header_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getHeaderIcon_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->header_url:Ljava/lang/String;

    .line 83
    const v0, 0x7f0e00eb

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->manRadio:Landroid/widget/RadioButton;

    .line 84
    const v0, 0x7f0e00ec

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->womanRadio:Landroid/widget/RadioButton;

    .line 86
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->unitSet:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->unitSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->metricUnit:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0e00f3

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->inchUnit:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0e00ee

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->hightUnit:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0e00f0

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->weightUnit:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method private updateUser(Lcom/smalife/db/entity/UserEntity;)V
    .locals 3
    .param p1, "user"    # Lcom/smalife/db/entity/UserEntity;

    .prologue
    .line 204
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 205
    .local v0, "obj":Lcom/accloud/service/ACObject;
    const-string v1, "hight"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 206
    const-string v1, "weight"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 207
    const-string v1, "sex"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 209
    const-string v1, "age"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 210
    const-string v1, "header_url"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getHeader_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 211
    const-string v1, "device_type"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 212
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    new-instance v2, Lcom/smalife/activity/InputActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/smalife/activity/InputActivity$3;-><init>(Lcom/smalife/activity/InputActivity;Lcom/smalife/db/entity/UserEntity;)V

    invoke-interface {v1, v0, v2}, Lcom/accloud/service/ACAccountMgr;->setUserProfile(Lcom/accloud/service/ACObject;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 231
    return-void
.end method


# virtual methods
.method public gotoActivity(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    const-class v1, Lcom/smalife/activity/InputActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 328
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 329
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 330
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 331
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 332
    .local v1, "photo":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->header_icon:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/smalife/utils/ImageHelper;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onBackPressed()V

    .line 340
    invoke-direct {p0}, Lcom/smalife/activity/InputActivity;->goNext()V

    .line 341
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f070022

    const v4, 0x7f07001d

    const/4 v3, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 162
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 114
    :sswitch_1
    invoke-direct {p0}, Lcom/smalife/activity/InputActivity;->goNext()V

    goto :goto_0

    .line 122
    :sswitch_2
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->weight:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "mWeight":Ljava/lang/String;
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->high:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "mHight":Ljava/lang/String;
    iget v2, p0, Lcom/smalife/activity/InputActivity;->unit:I

    if-nez v2, :cond_2

    .line 126
    iput v3, p0, Lcom/smalife/activity/InputActivity;->unit:I

    .line 127
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->hightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 131
    const v4, 0x7f09016d

    .line 130
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 133
    const v4, 0x7f09016e

    .line 132
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->weight:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 135
    invoke-static {v4}, Lcom/smalife/utils/UnitUtils;->convertToLbs(F)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_1
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->high:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Lcom/smalife/utils/UnitUtils;->convertToInch(F)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 142
    :cond_2
    iget v2, p0, Lcom/smalife/activity/InputActivity;->unit:I

    if-ne v2, v3, :cond_0

    .line 143
    const/4 v2, 0x0

    iput v2, p0, Lcom/smalife/activity/InputActivity;->unit:I

    .line 144
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->hightUnit:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090169

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 150
    const v4, 0x7f09016b

    .line 149
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->weight:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Lcom/smalife/utils/UnitUtils;->convertToKg(F)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_3
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/smalife/activity/InputActivity;->high:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Lcom/smalife/utils/UnitUtils;->convertToCm(F)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x7f0e00e7 -> :sswitch_0
        0x7f0e00f1 -> :sswitch_2
        0x7f0e00f4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/smalife/activity/InputActivity;->init()V

    .line 61
    new-instance v0, Lcom/smalife/HomeKeyEventReceiver;

    invoke-direct {v0, p0}, Lcom/smalife/HomeKeyEventReceiver;-><init>(Lcom/smalife/HomeKeyListener;)V

    iput-object v0, p0, Lcom/smalife/activity/InputActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    .line 63
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 64
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/InputActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onDestroy()V

    .line 317
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/InputActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    iget-object v0, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    .line 235
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 236
    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 238
    .local v5, "inputIntent":Landroid/content/Intent;
    const-string v8, "user"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 237
    check-cast v1, Lcom/smalife/db/entity/UserEntity;

    .line 239
    .local v1, "entity":Lcom/smalife/db/entity/UserEntity;
    const-string v8, "user_account"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/smalife/activity/InputActivity;->account:Ljava/lang/String;

    .line 240
    const-string v8, "nickName"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/smalife/activity/InputActivity;->nickName:Ljava/lang/String;

    .line 241
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->nickName:Ljava/lang/String;

    if-eqz v8, :cond_0

    const-string v8, ""

    iget-object v9, p0, Lcom/smalife/activity/InputActivity;->nickName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->nickNamev:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/smalife/activity/InputActivity;->nickName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->header_url:Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v8, ""

    iget-object v9, p0, Lcom/smalife/activity/InputActivity;->header_url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 245
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->header_url:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 247
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->header_url:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->header_icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    if-eqz v1, :cond_2

    .line 252
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->nickNamev:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getNickName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 254
    .local v6, "userAge":I
    if-gtz v6, :cond_3

    .line 255
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->_age:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 260
    .local v4, "h":I
    if-gtz v4, :cond_4

    .line 261
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->high:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_1
    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 266
    .local v7, "w":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_5

    .line 267
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->weight:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :goto_2
    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 272
    .local v3, "gende":I
    if-nez v3, :cond_6

    .line 273
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->womanRadio:Landroid/widget/RadioButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 277
    :goto_3
    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getAccount()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/smalife/activity/InputActivity;->account:Ljava/lang/String;

    .line 279
    const-string v8, "MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "input unit = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getUnit()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getUnit()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gez v8, :cond_7

    .line 281
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v8}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v8

    iput v8, p0, Lcom/smalife/activity/InputActivity;->unit:I

    .line 286
    :goto_4
    iget v8, p0, Lcom/smalife/activity/InputActivity;->unit:I

    if-nez v8, :cond_8

    .line 287
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 289
    const v10, 0x7f070022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 288
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->hightUnit:Landroid/widget/TextView;

    .line 291
    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090169

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 293
    const v10, 0x7f09016b

    .line 292
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .end local v3    # "gende":I
    .end local v4    # "h":I
    .end local v6    # "userAge":I
    .end local v7    # "w":F
    :cond_2
    :goto_5
    return-void

    .line 257
    .restart local v6    # "userAge":I
    :cond_3
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->_age:Landroid/widget/EditText;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 263
    .restart local v4    # "h":I
    :cond_4
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->high:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 269
    .restart local v7    # "w":F
    :cond_5
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->weight:Landroid/widget/EditText;

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 275
    .restart local v3    # "gende":I
    :cond_6
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->manRadio:Landroid/widget/RadioButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 283
    :cond_7
    invoke-virtual {v1}, Lcom/smalife/db/entity/UserEntity;->getUnit()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/smalife/activity/InputActivity;->unit:I

    goto :goto_4

    .line 294
    :cond_8
    iget v8, p0, Lcom/smalife/activity/InputActivity;->unit:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 295
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 296
    const v10, 0x7f070022

    .line 295
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->hightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 299
    const v10, 0x7f09016d

    .line 298
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 301
    const v10, 0x7f09016e

    .line 300
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 303
    :cond_9
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 305
    const v10, 0x7f070022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 304
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->hightUnit:Landroid/widget/TextView;

    .line 307
    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090169

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v8, p0, Lcom/smalife/activity/InputActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 309
    const v10, 0x7f09016b

    .line 308
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method
