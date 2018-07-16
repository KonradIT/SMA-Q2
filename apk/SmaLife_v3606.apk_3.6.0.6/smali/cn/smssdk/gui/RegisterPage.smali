.class public Lcn/smssdk/gui/RegisterPage;
.super Lcom/mob/tools/FakeActivity;
.source "RegisterPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final DEFAULT_COUNTRY_ID:Ljava/lang/String; = "42"


# instance fields
.field private btnNext:Landroid/widget/Button;

.field private callback:Lcn/smssdk/EventHandler;

.field private countryRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentCode:Ljava/lang/String;

.field private currentId:Ljava/lang/String;

.field private etPhoneNum:Landroid/widget/EditText;

.field private handler:Lcn/smssdk/EventHandler;

.field private ivClear:Landroid/widget/ImageView;

.field private osmHandler:Lcn/smssdk/OnSendMessageHandler;

.field private pd:Landroid/app/Dialog;

.field private tvCountry:Landroid/widget/TextView;

.field private tvCountryNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcn/smssdk/gui/RegisterPage;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcn/smssdk/gui/RegisterPage;->onCountryListGot(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2(Lcn/smssdk/gui/RegisterPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcn/smssdk/gui/RegisterPage;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$4(Lcn/smssdk/gui/RegisterPage;)Lcn/smssdk/OnSendMessageHandler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->osmHandler:Lcn/smssdk/OnSendMessageHandler;

    return-object v0
.end method

.method private afterVerificationCodeRequested()V
    .locals 7

    .prologue
    .line 454
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s*"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "phone":Ljava/lang/String;
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "code":Ljava/lang/String;
    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcn/smssdk/gui/RegisterPage;->splitPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "formatedPhone":Ljava/lang/String;
    new-instance v2, Lcn/smssdk/gui/IdentifyNumPage;

    invoke-direct {v2}, Lcn/smssdk/gui/IdentifyNumPage;-><init>()V

    .line 462
    .local v2, "page":Lcn/smssdk/gui/IdentifyNumPage;
    invoke-virtual {v2, v3, v0, v1}, Lcn/smssdk/gui/IdentifyNumPage;->setPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, p0}, Lcn/smssdk/gui/IdentifyNumPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    .line 464
    return-void
.end method

.method private checkPhoneNum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 373
    const-string v4, "+"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 377
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v5, "smssdk_write_mobile_phone"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 379
    .local v2, "resId":I
    if-lez v2, :cond_1

    .line 380
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 385
    .end local v2    # "resId":I
    :cond_2
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->countryRules:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 386
    .local v3, "rule":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 387
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 388
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 389
    .restart local v2    # "resId":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_3

    .line 390
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v5, "smssdk_write_right_mobile_phone"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 391
    if-lez v2, :cond_1

    .line 392
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcn/smssdk/gui/RegisterPage;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentCountry()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    invoke-direct {p0}, Lcn/smssdk/gui/RegisterPage;->getMCC()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "mcc":Ljava/lang/String;
    const/4 v0, 0x0

    .line 199
    .local v0, "country":[Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-static {v1}, Lcn/smssdk/SMSSDK;->getCountryByMCC(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_0
    if-nez v0, :cond_1

    .line 204
    const-string v2, "SMSSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no country found by MCC: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v2, "42"

    invoke-static {v2}, Lcn/smssdk/SMSSDK;->getCountry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_1
    return-object v0
.end method

.method private getMCC()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 211
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 213
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "simOperator":Ljava/lang/String;
    const/4 v0, 0x0

    .line 219
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_0

    .line 220
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v8, :cond_1

    .line 225
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_1
    return-object v0
.end method

.method private onCountryListGot(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s*"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "phone":Ljava/lang/String;
    iget-object v4, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "code":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcn/smssdk/gui/RegisterPage;->checkPhoneNum(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void

    .line 342
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 343
    .local v1, "country":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "zone"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    .restart local v0    # "code":Ljava/lang/String;
    const-string v5, "rule"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 345
    .local v3, "rule":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 349
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->countryRules:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 350
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->countryRules:Ljava/util/HashMap;

    .line 352
    :cond_2
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->countryRules:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private splitPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 364
    const/4 v1, 0x4

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 365
    :cond_0
    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v1, v1, 0x5

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 265
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 243
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 269
    .local v2, "id":I
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v9, "ll_back"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 270
    .local v5, "id_ll_back":I
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v9, "rl_country"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 271
    .local v6, "id_rl_country":I
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v9, "btn_next"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 272
    .local v3, "id_btn_next":I
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v9, "iv_clear"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 274
    .local v4, "id_iv_clear":I
    if-ne v2, v5, :cond_1

    .line 275
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->finish()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    if-ne v2, v6, :cond_2

    .line 278
    new-instance v1, Lcn/smssdk/gui/CountryPage;

    invoke-direct {v1}, Lcn/smssdk/gui/CountryPage;-><init>()V

    .line 279
    .local v1, "countryPage":Lcn/smssdk/gui/CountryPage;
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->currentId:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcn/smssdk/gui/CountryPage;->setCountryId(Ljava/lang/String;)V

    .line 280
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->countryRules:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Lcn/smssdk/gui/CountryPage;->setCountryRuls(Ljava/util/HashMap;)V

    .line 281
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, p0}, Lcn/smssdk/gui/CountryPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    goto :goto_0

    .line 282
    .end local v1    # "countryPage":Lcn/smssdk/gui/CountryPage;
    :cond_2
    if-ne v2, v3, :cond_7

    .line 284
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->countryRules:Ljava/util/HashMap;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->countryRules:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-gtz v8, :cond_6

    .line 285
    :cond_3
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 286
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 288
    :cond_4
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-static {v8}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v8

    iput-object v8, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    .line 289
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    if-eqz v8, :cond_5

    .line 290
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 293
    :cond_5
    invoke-static {}, Lcn/smssdk/SMSSDK;->getSupportedCountries()V

    goto :goto_0

    .line 295
    :cond_6
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s*"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "phone":Ljava/lang/String;
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "code":Ljava/lang/String;
    invoke-direct {p0, v7, v0}, Lcn/smssdk/gui/RegisterPage;->checkPhoneNum(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    .end local v0    # "code":Ljava/lang/String;
    .end local v7    # "phone":Ljava/lang/String;
    :cond_7
    if-ne v2, v4, :cond_0

    .line 301
    iget-object v8, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 85
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_regist_page"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "resId":I
    if-lez v2, :cond_3

    .line 87
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 88
    const-string v5, "42"

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->currentId:Ljava/lang/String;

    .line 90
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "ll_back"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 91
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "llBack":Landroid/view/View;
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "tv_title"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 93
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_regist"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 95
    if-lez v2, :cond_0

    .line 96
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :cond_0
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "rl_country"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 99
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 100
    .local v4, "viewCountry":Landroid/view/View;
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "btn_next"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 101
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    .line 103
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "tv_country"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 104
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->tvCountry:Landroid/widget/TextView;

    .line 106
    invoke-direct {p0}, Lcn/smssdk/gui/RegisterPage;->getCurrentCountry()[Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "country":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 109
    aget-object v5, v0, v9

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->currentCode:Ljava/lang/String;

    .line 110
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->tvCountry:Landroid/widget/TextView;

    aget-object v6, v0, v8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_1
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "tv_country_num"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 113
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    .line 114
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "+"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/smssdk/gui/RegisterPage;->currentCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "et_write_phone"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 117
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    .line 118
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 121
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 122
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "iv_clear"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 124
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    .line 125
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_btn_enable"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 127
    if-lez v2, :cond_2

    .line 128
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 132
    :cond_2
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "iv_clear"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 133
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v5, Lcn/smssdk/gui/RegisterPage$1;

    invoke-direct {v5, p0}, Lcn/smssdk/gui/RegisterPage$1;-><init>(Lcn/smssdk/gui/RegisterPage;)V

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->handler:Lcn/smssdk/EventHandler;

    .line 194
    .end local v0    # "country":[Ljava/lang/String;
    .end local v1    # "llBack":Landroid/view/View;
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "viewCountry":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    .line 238
    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 307
    if-eqz p1, :cond_0

    .line 308
    const-string v5, "page"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 309
    .local v1, "page":I
    if-ne v1, v6, :cond_1

    .line 311
    const-string v5, "id"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->currentId:Ljava/lang/String;

    .line 312
    const-string v5, "rules"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->countryRules:Ljava/util/HashMap;

    .line 313
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->currentId:Ljava/lang/String;

    invoke-static {v5}, Lcn/smssdk/SMSSDK;->getCountry(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "country":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 315
    aget-object v5, v0, v6

    iput-object v5, p0, Lcn/smssdk/gui/RegisterPage;->currentCode:Ljava/lang/String;

    .line 316
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->tvCountryNum:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "+"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/smssdk/gui/RegisterPage;->currentCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->tvCountry:Landroid/widget/TextView;

    aget-object v6, v0, v8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .end local v0    # "country":[Ljava/lang/String;
    .end local v1    # "page":I
    :cond_0
    :goto_0
    return-void

    .line 319
    .restart local v1    # "page":I
    :cond_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 321
    const-string v5, "res"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 322
    .local v3, "res":Ljava/lang/Object;
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 323
    .local v2, "phoneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 324
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_your_ccount_is_verified"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 325
    .local v4, "resId":I
    if-lez v4, :cond_2

    .line 326
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 329
    :cond_2
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->callback:Lcn/smssdk/EventHandler;

    if-eqz v5, :cond_3

    .line 330
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->callback:Lcn/smssdk/EventHandler;

    .line 331
    const/4 v6, 0x3

    .line 332
    const/4 v7, -0x1

    .line 330
    invoke-virtual {v5, v6, v7, v2}, Lcn/smssdk/EventHandler;->afterEvent(IILjava/lang/Object;)V

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    .line 234
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 247
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v2, "smssdk_btn_enable"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 251
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 254
    .end local v0    # "resId":I
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->ivClear:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v2, "smssdk_btn_disenable"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 257
    .restart local v0    # "resId":I
    if-lez v0, :cond_0

    .line 258
    iget-object v1, p0, Lcn/smssdk/gui/RegisterPage;->btnNext:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setOnSendMessageHandler(Lcn/smssdk/OnSendMessageHandler;)V
    .locals 0
    .param p1, "h"    # Lcn/smssdk/OnSendMessageHandler;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->osmHandler:Lcn/smssdk/OnSendMessageHandler;

    .line 78
    return-void
.end method

.method public setRegisterCallback(Lcn/smssdk/EventHandler;)V
    .locals 0
    .param p1, "callback"    # Lcn/smssdk/EventHandler;

    .prologue
    .line 73
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage;->callback:Lcn/smssdk/EventHandler;

    .line 74
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "CommonDialog"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 402
    .local v2, "resId":I
    if-lez v2, :cond_3

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcn/smssdk/gui/RegisterPage;->splitPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "phoneNum":Ljava/lang/String;
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 405
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_send_msg_dialog"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 406
    if-lez v2, :cond_3

    .line 407
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 408
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "tv_phone"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 409
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "tv_dialog_hint"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 411
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 412
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "smssdk_make_sure_mobile_detail"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 413
    if-lez v2, :cond_0

    .line 414
    invoke-virtual {p0}, Lcn/smssdk/gui/RegisterPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "btn_dialog_ok"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 418
    if-lez v2, :cond_1

    .line 419
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 420
    new-instance v6, Lcn/smssdk/gui/RegisterPage$2;

    invoke-direct {v6, p0, v0, p1, p2}, Lcn/smssdk/gui/RegisterPage$2;-><init>(Lcn/smssdk/gui/RegisterPage;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    :cond_1
    iget-object v5, p0, Lcn/smssdk/gui/RegisterPage;->activity:Landroid/app/Activity;

    const-string v6, "btn_dialog_cancel"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 439
    if-lez v2, :cond_2

    .line 440
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v6, Lcn/smssdk/gui/RegisterPage$3;

    invoke-direct {v6, p0, v0}, Lcn/smssdk/gui/RegisterPage$3;-><init>(Lcn/smssdk/gui/RegisterPage;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 447
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 450
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "phoneNum":Ljava/lang/String;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_3
    return-void
.end method
