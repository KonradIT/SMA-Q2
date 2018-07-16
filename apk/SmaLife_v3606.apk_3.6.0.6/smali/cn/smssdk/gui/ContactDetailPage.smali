.class public Lcn/smssdk/gui/ContactDetailPage;
.super Lcom/mob/tools/FakeActivity;
.source "ContactDetailPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private phoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/ContactDetailPage;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcn/smssdk/gui/ContactDetailPage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactDetailPage;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method private sendMsg(Ljava/lang/String;)V
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smsto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 131
    .local v2, "smsToUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v4, "smssdk_invite_content"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 134
    const-string v3, "sms_body"

    iget-object v4, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_0
    invoke-virtual {p0, v0}, Lcn/smssdk/gui/ContactDetailPage;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method private showDialog()V
    .locals 5

    .prologue
    .line 141
    iget-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 142
    .local v1, "phones":[Ljava/lang/String;
    iget-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "phones":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 143
    .restart local v1    # "phones":[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v4, "smssdk_invite_content"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 145
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 146
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 148
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 149
    iget-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v4, "smssdk_cancel"

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 150
    if-lez v2, :cond_1

    .line 151
    new-instance v3, Lcn/smssdk/gui/ContactDetailPage$1;

    invoke-direct {v3, p0}, Lcn/smssdk/gui/ContactDetailPage$1;-><init>(Lcn/smssdk/gui/ContactDetailPage;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    :cond_1
    new-instance v3, Lcn/smssdk/gui/ContactDetailPage$2;

    invoke-direct {v3, p0}, Lcn/smssdk/gui/ContactDetailPage$2;-><init>(Lcn/smssdk/gui/ContactDetailPage;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 167
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 109
    .local v0, "id":I
    iget-object v4, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v5, "ll_back"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 110
    .local v2, "id_ll_back":I
    iget-object v4, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v5, "btn_invite"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "id_btn_invite":I
    if-ne v0, v2, :cond_1

    .line 112
    invoke-virtual {p0}, Lcn/smssdk/gui/ContactDetailPage;->finish()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-ne v0, v1, :cond_0

    .line 115
    iget-object v4, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 116
    invoke-direct {p0}, Lcn/smssdk/gui/ContactDetailPage;->showDialog()V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v4, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 120
    .local v3, "phone":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v3}, Lcn/smssdk/gui/ContactDetailPage;->sendMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v3    # "phone":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_1
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 35
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "smssdk_contact_detail_page"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 36
    .local v3, "resId":I
    if-lez v3, :cond_1

    .line 37
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 38
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "ll_back"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 39
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "tv_title"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 41
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 42
    .local v7, "tvTitle":Landroid/widget/TextView;
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "smssdk_contacts_detail"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 43
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(I)V

    .line 45
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "tv_contact_name"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 46
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 47
    .local v4, "tvContactName":Landroid/widget/TextView;
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "tv_contact_phones"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 50
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 51
    .local v6, "tvPhonesList":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v2, "phones":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 57
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "tv_invite_hint"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 62
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 63
    .local v5, "tvInviteHint":Landroid/widget/TextView;
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "smssdk_not_invite"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 64
    invoke-virtual {p0}, Lcn/smssdk/gui/ContactDetailPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {v8, v3, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "hint":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    const-string v9, "btn_invite"

    invoke-static {v8, v9}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 68
    iget-object v8, p0, Lcn/smssdk/gui/ContactDetailPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .end local v0    # "hint":Ljava/lang/String;
    .end local v2    # "phones":Ljava/lang/StringBuilder;
    .end local v4    # "tvContactName":Landroid/widget/TextView;
    .end local v5    # "tvInviteHint":Landroid/widget/TextView;
    .end local v6    # "tvPhonesList":Landroid/widget/TextView;
    .end local v7    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 52
    .restart local v2    # "phones":Ljava/lang/StringBuilder;
    .restart local v4    # "tvContactName":Landroid/widget/TextView;
    .restart local v6    # "tvPhonesList":Landroid/widget/TextView;
    .restart local v7    # "tvTitle":Landroid/widget/TextView;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "phone":Ljava/lang/String;
    const-string v9, "\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 75
    return-void
.end method

.method public setContact(Ljava/util/HashMap;)V
    .locals 5
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
    .line 88
    .local p1, "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "displayname"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    const-string v3, "displayname"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    .line 97
    :cond_0
    :goto_0
    const-string v3, "phones"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 98
    .local v1, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 104
    :cond_1
    return-void

    .line 90
    .end local v1    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    const-string v3, "phones"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string v3, "phones"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 93
    .restart local v1    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 94
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneName:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 100
    .local v0, "phone":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "pn":Ljava/lang/String;
    iget-object v4, p0, Lcn/smssdk/gui/ContactDetailPage;->phoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
