.class public Lcn/smssdk/gui/CountryPage;
.super Lcom/mob/tools/FakeActivity;
.source "CountryPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcn/smssdk/gui/GroupListView$OnItemClickListener;


# instance fields
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

.field private etSearch:Landroid/widget/EditText;

.field private handler:Lcn/smssdk/EventHandler;

.field private id:Ljava/lang/String;

.field private listView:Lcn/smssdk/gui/CountryListView;

.field private pd:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/CountryPage;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcn/smssdk/gui/CountryPage;->afterPrepare()V

    return-void
.end method

.method static synthetic access$1(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcn/smssdk/gui/CountryPage;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4(Lcn/smssdk/gui/CountryPage;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcn/smssdk/gui/CountryPage;->onCountryListGot(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$5(Lcn/smssdk/gui/CountryPage;Lcn/smssdk/EventHandler;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage;->handler:Lcn/smssdk/EventHandler;

    return-void
.end method

.method static synthetic access$6(Lcn/smssdk/gui/CountryPage;)Lcn/smssdk/EventHandler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->handler:Lcn/smssdk/EventHandler;

    return-object v0
.end method

.method static synthetic access$7(Lcn/smssdk/gui/CountryPage;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcn/smssdk/gui/CountryPage;->initPage()V

    return-void
.end method

.method private afterPrepare()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcn/smssdk/gui/CountryPage$2;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/CountryPage$2;-><init>(Lcn/smssdk/gui/CountryPage;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/CountryPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method private initPage()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v2, "ll_back"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 127
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v2, "ivSearch"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 130
    if-lez v0, :cond_1

    .line 131
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v2, "iv_clear"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 134
    if-lez v0, :cond_2

    .line 135
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_2
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v2, "clCountry"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 138
    if-lez v0, :cond_3

    .line 139
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/smssdk/gui/CountryListView;

    iput-object v1, p0, Lcn/smssdk/gui/CountryPage;->listView:Lcn/smssdk/gui/CountryListView;

    .line 140
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->listView:Lcn/smssdk/gui/CountryListView;

    invoke-virtual {v1, p0}, Lcn/smssdk/gui/CountryListView;->setOnItemClickListener(Lcn/smssdk/gui/GroupListView$OnItemClickListener;)V

    .line 142
    :cond_3
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v2, "et_put_identify"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 143
    if-lez v0, :cond_4

    .line 144
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    .line 145
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    :cond_4
    return-void
.end method

.method private onCountryListGot(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 151
    .local p1, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 164
    invoke-direct {p0}, Lcn/smssdk/gui/CountryPage;->initPage()V

    .line 165
    return-void

    .line 151
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 152
    .local v1, "country":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "zone"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "code":Ljava/lang/String;
    const-string v4, "rule"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, "rule":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    iget-object v4, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 159
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    .line 161
    :cond_2
    iget-object v4, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 242
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 234
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 184
    .local v0, "id":I
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v7, "ll_back"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 185
    .local v5, "id_ll_back":I
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v7, "ivSearch"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 186
    .local v1, "id_ivSearch":I
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v7, "iv_clear"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 187
    .local v2, "id_iv_clear":I
    if-ne v0, v5, :cond_1

    .line 188
    invoke-virtual {p0}, Lcn/smssdk/gui/CountryPage;->finish()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    if-ne v0, v1, :cond_2

    .line 191
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v7, "llTitle"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 192
    .local v4, "id_llTitle":I
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v7, "llSearch"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 194
    .local v3, "id_llSearch":I
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    .line 196
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 197
    .end local v3    # "id_llSearch":I
    .end local v4    # "id_llTitle":I
    :cond_2
    if-ne v0, v2, :cond_0

    .line 198
    iget-object v6, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    .line 54
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 58
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    new-instance v1, Lcn/smssdk/gui/CountryPage$1;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/CountryPage$1;-><init>(Lcn/smssdk/gui/CountryPage;)V

    invoke-static {v0, v1}, Lcn/smssdk/gui/SearchEngine;->prepare(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public onFinish()Z
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v1}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v0, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "rules"

    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "page"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/CountryPage;->setResult(Ljava/util/HashMap;)V

    .line 229
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    move-result v1

    return v1
.end method

.method public onItemClick(Lcn/smssdk/gui/GroupListView;Landroid/view/View;II)V
    .locals 4
    .param p1, "parent"    # Lcn/smssdk/gui/GroupListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # I
    .param p4, "position"    # I

    .prologue
    .line 168
    if-ltz p4, :cond_0

    .line 169
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->listView:Lcn/smssdk/gui/CountryListView;

    invoke-virtual {v2, p3, p4}, Lcn/smssdk/gui/CountryListView;->getCountry(II)[Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "country":[Ljava/lang/String;
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcn/smssdk/gui/CountryPage;->id:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcn/smssdk/gui/CountryPage;->finish()V

    .line 180
    .end local v0    # "country":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 174
    .restart local v0    # "country":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v3, "smssdk_country_not_support_currently"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 176
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 204
    :try_start_0
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v3, "llSearch"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "resId":I
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 206
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 207
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    const-string v3, "llTitle"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 210
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcn/smssdk/gui/CountryPage;->etSearch:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v2, 0x1

    .line 217
    .end local v1    # "resId":I
    :goto_0
    return v2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 117
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage;->listView:Lcn/smssdk/gui/CountryListView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/CountryListView;->onSearch(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setCountryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage;->id:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCountryRuls(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "countryRules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage;->countryRules:Ljava/util/HashMap;

    .line 47
    return-void
.end method
