.class public Lcom/smalife/activity/UserInfoActivity;
.super Landroid/app/Activity;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/UserInfoActivity$Mycallback;
    }
.end annotation


# instance fields
.field private account:Landroid/widget/TextView;

.field private address:Landroid/widget/EditText;

.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageButton;

.field private brithday:Landroid/widget/EditText;

.field private checkDialog:Landroid/app/ProgressDialog;

.field private checkListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private client_id:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dao:Lcom/smalife/db/SmaDao;

.field private handler:Landroid/os/Handler;

.field private header_url:Ljava/lang/String;

.field private high:Landroid/widget/EditText;

.field private hightUnit:Landroid/widget/TextView;

.field private inchUnit:Landroid/widget/TextView;

.field private man_radio:Landroid/widget/RadioButton;

.field private metricUnit:Landroid/widget/TextView;

.field private modify_btn:Landroid/widget/Button;

.field private mradioGroup:Landroid/widget/RadioGroup;

.field private nickname:Landroid/widget/EditText;

.field private password:Landroid/widget/EditText;

.field private save_btn:Landroid/widget/Button;

.field private sendManager:Lcom/smalife/ablecloud/SendMsgManager;

.field sex:I

.field unit:I

.field private unitSet:Landroid/widget/LinearLayout;

.field private user:Lcom/smalife/db/entity/UserEntity;

.field private userAccount:Ljava/lang/String;

.field user_data:Landroid/content/Intent;

.field private weight:Landroid/widget/EditText;

.field private weightUnit:Landroid/widget/TextView;

.field private woman_radio:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/smalife/db/entity/UserEntity;

    invoke-direct {v0}, Lcom/smalife/db/entity/UserEntity;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/smalife/activity/UserInfoActivity;->sex:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    .line 108
    new-instance v0, Lcom/smalife/activity/UserInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/UserInfoActivity$1;-><init>(Lcom/smalife/activity/UserInfoActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->checkListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 332
    new-instance v0, Lcom/smalife/activity/UserInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/smalife/activity/UserInfoActivity$2;-><init>(Lcom/smalife/activity/UserInfoActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/UserInfoActivity;)Lcom/smalife/db/entity/UserEntity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/UserInfoActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->checkDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/UserInfoActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/UserInfoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private editEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->account:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->nickname:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->brithday:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->high:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->weight:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->address:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->unitSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 300
    return-void
.end method

.method private initUserInfo(Lcom/smalife/db/entity/UserEntity;)V
    .locals 9
    .param p1, "user"    # Lcom/smalife/db/entity/UserEntity;

    .prologue
    const v8, 0x7f070022

    const v7, 0x7f07001d

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 146
    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-eqz p1, :cond_0

    .line 149
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/smalife/activity/UserInfoActivity;->editEnable(Z)V

    .line 150
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->account:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/smalife/activity/UserInfoActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->password:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/smalife/activity/UserInfoActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getAccountPwd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->nickname:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    .local v0, "age":I
    if-lez v0, :cond_2

    .line 155
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->brithday:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_2
    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v1, v3

    .line 159
    .local v1, "h":F
    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 160
    .local v2, "w":F
    cmpl-float v3, v1, v6

    if-lez v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->high:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_3
    cmpl-float v3, v2, v6

    if-lez v3, :cond_4

    .line 164
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->weight:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_4
    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/smalife/activity/UserInfoActivity;->sex:I

    .line 167
    iget v3, p0, Lcom/smalife/activity/UserInfoActivity;->sex:I

    if-nez v3, :cond_7

    .line 168
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->woman_radio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 173
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getUnit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_8

    .line 174
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getUnit()I

    move-result v3

    iput v3, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    .line 179
    :goto_2
    iget v3, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    if-nez v3, :cond_9

    .line 180
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 182
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 181
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->hightUnit:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090169

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 186
    const v5, 0x7f09016b

    .line 185
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->address:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 169
    :cond_7
    iget v3, p0, Lcom/smalife/activity/UserInfoActivity;->sex:I

    if-ne v3, v5, :cond_5

    .line 170
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->man_radio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 176
    :cond_8
    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getUnit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    goto :goto_2

    .line 187
    :cond_9
    iget v3, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    if-ne v3, v5, :cond_6

    .line 188
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->hightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 192
    const v5, 0x7f09016d

    .line 191
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 194
    const v5, 0x7f09016e

    .line 193
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private modifyInfo()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 303
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v4, p0, Lcom/smalife/activity/UserInfoActivity;->account:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setAccount(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v4, p0, Lcom/smalife/activity/UserInfoActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getClientID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setClient_id(Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v4, p0, Lcom/smalife/activity/UserInfoActivity;->nickname:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setNickName(Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->high:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "hight_v":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    .line 312
    :goto_0
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->weight:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "weight_v":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    .line 318
    :goto_1
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget v4, p0, Lcom/smalife/activity/UserInfoActivity;->sex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setSex(Ljava/lang/Integer;)V

    .line 319
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->brithday:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "age":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setAge(Ljava/lang/Integer;)V

    .line 325
    :goto_2
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget v4, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setUnit(Ljava/lang/Integer;)V

    .line 326
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    iget-object v4, p0, Lcom/smalife/activity/UserInfoActivity;->address:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setAddress(Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setHeader_url(Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->application:Lcom/smalife/MyApplication;

    iget v4, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    invoke-virtual {v3, v4}, Lcom/smalife/MyApplication;->editUnit(I)V

    .line 329
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->dao:Lcom/smalife/db/SmaDao;

    iget-object v4, p0, Lcom/smalife/activity/UserInfoActivity;->userAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v3, v4, v5, v6}, Lcom/smalife/db/SmaDao;->modifyUserInfo(Ljava/lang/String;Lcom/smalife/db/entity/UserEntity;I)Z

    move-result v3

    return v3

    .line 310
    .end local v0    # "age":Ljava/lang/String;
    .end local v2    # "weight_v":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setHight(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 316
    .restart local v2    # "weight_v":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setWeight(Ljava/lang/Float;)V

    goto :goto_1

    .line 323
    .restart local v0    # "age":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smalife/db/entity/UserEntity;->setAge(Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method private updateUser(Lcom/smalife/db/entity/UserEntity;)V
    .locals 6
    .param p1, "user"    # Lcom/smalife/db/entity/UserEntity;

    .prologue
    const/4 v5, 0x2

    .line 358
    new-instance v0, Lcom/accloud/service/ACObject;

    invoke-direct {v0}, Lcom/accloud/service/ACObject;-><init>()V

    .line 359
    .local v0, "upMsg":Lcom/accloud/service/ACObject;
    const-string v1, "hight"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getHight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 360
    const-string v1, "weight"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getWeight()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 361
    const-string v1, "sex"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getSex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 362
    const-string v1, "age"

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getAge()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/accloud/service/ACObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/accloud/service/ACObject;

    .line 364
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    new-instance v2, Lcom/smalife/activity/UserInfoActivity$Mycallback;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/smalife/activity/UserInfoActivity$Mycallback;-><init>(Lcom/smalife/activity/UserInfoActivity;I)V

    invoke-interface {v1, v0, v2}, Lcom/accloud/service/ACAccountMgr;->setUserProfile(Lcom/accloud/service/ACObject;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 365
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smalife/db/entity/UserEntity;->getNickName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/smalife/activity/UserInfoActivity$Mycallback;

    invoke-direct {v3, p0, v5}, Lcom/smalife/activity/UserInfoActivity$Mycallback;-><init>(Lcom/smalife/activity/UserInfoActivity;I)V

    invoke-interface {v1, v2, v3}, Lcom/accloud/service/ACAccountMgr;->changeNickName(Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 366
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getPwd()Ljava/lang/String;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/smalife/activity/UserInfoActivity$Mycallback;

    invoke-direct {v4, p0, v5}, Lcom/smalife/activity/UserInfoActivity$Mycallback;-><init>(Lcom/smalife/activity/UserInfoActivity;I)V

    .line 366
    invoke-interface {v1, v2, v3, v4}, Lcom/accloud/service/ACAccountMgr;->changePassword(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 368
    return-void
.end method


# virtual methods
.method public initUI()V
    .locals 5

    .prologue
    .line 71
    const v2, 0x7f0e0008

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->account:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0e0111

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->password:Landroid/widget/EditText;

    .line 73
    const v2, 0x7f0e025d

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->nickname:Landroid/widget/EditText;

    .line 74
    const v2, 0x7f0e025e

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->brithday:Landroid/widget/EditText;

    .line 75
    const v2, 0x7f0e00ed

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->high:Landroid/widget/EditText;

    .line 76
    const v2, 0x7f0e00ef

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->weight:Landroid/widget/EditText;

    .line 77
    const v2, 0x7f0e025f

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->address:Landroid/widget/EditText;

    .line 78
    const v2, 0x7f0e00ea

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->mradioGroup:Landroid/widget/RadioGroup;

    .line 79
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->mradioGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->checkListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 80
    const v2, 0x7f0e00eb

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->man_radio:Landroid/widget/RadioButton;

    .line 81
    const v2, 0x7f0e00ec

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->woman_radio:Landroid/widget/RadioButton;

    .line 83
    const v2, 0x7f0e00f1

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->unitSet:Landroid/widget/LinearLayout;

    .line 84
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->unitSet:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v2, 0x7f0e00f2

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->metricUnit:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0e00f3

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->inchUnit:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0e00ee

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->hightUnit:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f0e00f0

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->weightUnit:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0e0260

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->modify_btn:Landroid/widget/Button;

    .line 92
    const v2, 0x7f0e0261

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->save_btn:Landroid/widget/Button;

    .line 93
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->save_btn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->modify_btn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f0e0006

    invoke-virtual {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->back_btn:Landroid/widget/ImageButton;

    .line 96
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/smalife/activity/UserInfoActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->checkDialog:Landroid/app/ProgressDialog;

    .line 98
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->checkDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->checkDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 100
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 101
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 102
    const v2, 0x3f19999a    # 0.6f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->checkDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 105
    const v4, 0x7f090181

    .line 104
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->nickname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/smalife/activity/UserInfoActivity;->user_data:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 287
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->user_data:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/smalife/activity/UserInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->finish()V

    .line 289
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f070022

    const v9, 0x7f07001d

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 209
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/smalife/activity/UserInfoActivity;->editEnable(Z)V

    .line 210
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->save_btn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->modify_btn:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    invoke-direct {p0}, Lcom/smalife/activity/UserInfoActivity;->modifyInfo()Z

    move-result v2

    .line 213
    .local v2, "isuccess":Z
    if-eqz v2, :cond_0

    .line 215
    new-instance v1, Landroid/content/Intent;

    .line 216
    const-string v5, "AskAction"

    .line 215
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "action_key"

    .line 218
    const/16 v6, 0x26

    .line 217
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v5, "user"

    iget-object v6, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v1}, Lcom/smalife/activity/UserInfoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-direct {p0, v5}, Lcom/smalife/activity/UserInfoActivity;->updateUser(Lcom/smalife/db/entity/UserEntity;)V

    goto :goto_0

    .line 228
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isuccess":Z
    :sswitch_1
    invoke-direct {p0, v7}, Lcom/smalife/activity/UserInfoActivity;->editEnable(Z)V

    .line 229
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->save_btn:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->modify_btn:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 233
    :sswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "nickname"

    iget-object v6, p0, Lcom/smalife/activity/UserInfoActivity;->nickname:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->user_data:Landroid/content/Intent;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/smalife/activity/UserInfoActivity;->user_data:Landroid/content/Intent;

    invoke-virtual {p0, v5, v6}, Lcom/smalife/activity/UserInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->finish()V

    goto :goto_0

    .line 240
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_3
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->weight:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "mWeight":Ljava/lang/String;
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->high:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "mHight":Ljava/lang/String;
    iget v5, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    if-nez v5, :cond_2

    .line 243
    iput v7, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    .line 244
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->hightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 248
    const v7, 0x7f09016d

    .line 247
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 250
    const v7, 0x7f09016e

    .line 249
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 252
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->weight:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 253
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 252
    invoke-static {v7}, Lcom/smalife/utils/UnitUtils;->convertToLbs(F)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_1
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->high:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Lcom/smalife/utils/UnitUtils;->convertToInch(F)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 259
    :cond_2
    iget v5, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    if-ne v5, v7, :cond_0

    .line 260
    iput v6, p0, Lcom/smalife/activity/UserInfoActivity;->unit:I

    .line 261
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->metricUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->inchUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 263
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 262
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->hightUnit:Landroid/widget/TextView;

    .line 265
    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090169

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->weightUnit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 267
    const v7, 0x7f09016b

    .line 266
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    if-eqz v4, :cond_3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 269
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->weight:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Lcom/smalife/utils/UnitUtils;->convertToKg(F)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_3
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    iget-object v5, p0, Lcom/smalife/activity/UserInfoActivity;->high:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Lcom/smalife/utils/UnitUtils;->convertToCm(F)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_2
        0x7f0e00f1 -> :sswitch_3
        0x7f0e0260 -> :sswitch_1
        0x7f0e0261 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UserInfoActivity;->setContentView(I)V

    .line 61
    iput-object p0, p0, Lcom/smalife/activity/UserInfoActivity;->context:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 63
    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->application:Lcom/smalife/MyApplication;

    .line 64
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->userAccount:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getHeaderIcon_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->header_url:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->initUI()V

    .line 67
    invoke-static {}, Lcom/smalife/ablecloud/SendMsgManager;->getSendSerivceIntance()Lcom/smalife/ablecloud/SendMsgManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/UserInfoActivity;->sendManager:Lcom/smalife/ablecloud/SendMsgManager;

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/smalife/db/entity/UserEntity;

    .line 130
    .local v1, "temp_user":Lcom/smalife/db/entity/UserEntity;
    if-eqz v1, :cond_0

    .line 131
    iput-object v1, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->user:Lcom/smalife/db/entity/UserEntity;

    invoke-direct {p0, v2}, Lcom/smalife/activity/UserInfoActivity;->initUserInfo(Lcom/smalife/db/entity/UserEntity;)V

    .line 134
    invoke-virtual {p0}, Lcom/smalife/activity/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->user_data:Landroid/content/Intent;

    .line 135
    sget-boolean v2, Lcom/smalife/ble/CmdKeyValue$BLE;->ble_hasOpen:Z

    if-nez v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->checkDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 137
    iget-object v2, p0, Lcom/smalife/activity/UserInfoActivity;->handler:Landroid/os/Handler;

    const/16 v3, 0xc8

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    :cond_1
    return-void
.end method
