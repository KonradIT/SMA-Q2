.class public Lcn/smssdk/gui/ContactsPage;
.super Lcom/mob/tools/FakeActivity;
.source "ContactsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private adapter:Lcn/smssdk/gui/ContactsAdapter;

.field private contactsInMobile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private etSearch:Landroid/widget/EditText;

.field private friendsInApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private handler:Lcn/smssdk/EventHandler;

.field private itemMaker:Lcn/smssdk/gui/ContactItemMaker;

.field private listView:Lcn/smssdk/gui/ContactsListView;

.field private pd:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->afterPrepare()V

    return-void
.end method

.method static synthetic access$1(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lcn/smssdk/gui/ContactsPage;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcn/smssdk/gui/ContactsPage;Lcn/smssdk/gui/ContactsAdapter;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage;->adapter:Lcn/smssdk/gui/ContactsAdapter;

    return-void
.end method

.method static synthetic access$12(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->adapter:Lcn/smssdk/gui/ContactsAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactItemMaker;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->itemMaker:Lcn/smssdk/gui/ContactItemMaker;

    return-object v0
.end method

.method static synthetic access$2(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->initView()V

    return-void
.end method

.method static synthetic access$5(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->initData()V

    return-void
.end method

.method static synthetic access$6(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsPage;->refreshContactList()V

    return-void
.end method

.method static synthetic access$7(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$8(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->listView:Lcn/smssdk/gui/ContactsListView;

    return-object v0
.end method

.method static synthetic access$9(Lcn/smssdk/gui/ContactsPage;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    return-object v0
.end method

.method private afterPrepare()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcn/smssdk/gui/ContactsPage$2;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/ContactsPage$2;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/ContactsPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcn/smssdk/gui/ContactsPage$3;

    invoke-direct {v0, p0}, Lcn/smssdk/gui/ContactsPage$3;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsPage;->handler:Lcn/smssdk/EventHandler;

    .line 166
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    .line 168
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->getContacts(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcn/smssdk/SMSSDK;->getFriendsInApp()V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 99
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "clContact"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 101
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/smssdk/gui/ContactsListView;

    iput-object v2, p0, Lcn/smssdk/gui/ContactsPage;->listView:Lcn/smssdk/gui/ContactsListView;

    .line 103
    :cond_0
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "ll_back"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 104
    if-lez v0, :cond_1

    .line 105
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "ivSearch"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 108
    if-lez v0, :cond_2

    .line 109
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_2
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "iv_clear"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 112
    if-lez v0, :cond_3

    .line 113
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_3
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "tv_title"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 116
    if-lez v0, :cond_4

    .line 117
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "smssdk_search_contact"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 119
    if-lez v0, :cond_4

    .line 120
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 123
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_4
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "et_put_identify"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 124
    if-lez v0, :cond_5

    .line 125
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    .line 126
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    :cond_5
    return-void
.end method

.method private refreshContactList()V
    .locals 22

    .prologue
    .line 241
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v12, "phone2Contact":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/smssdk/gui/ContactEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 255
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v17, "tmpFia":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 257
    .local v9, "p2cSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_5

    .line 271
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    .line 274
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 275
    .local v16, "tmpCon":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_7

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage;->contactsInMobile:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_a

    .line 321
    new-instance v19, Lcn/smssdk/gui/ContactsPage$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/smssdk/gui/ContactsPage$4;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 387
    return-void

    .line 242
    .end local v9    # "p2cSize":I
    .end local v16    # "tmpCon":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v17    # "tmpFia":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 244
    .local v3, "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "phones"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 245
    .local v13, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 246
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 247
    .local v11, "phone":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "phone"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 248
    .local v14, "pn":Ljava/lang/String;
    new-instance v5, Lcn/smssdk/gui/ContactEntry;

    invoke-direct {v5, v14, v3}, Lcn/smssdk/gui/ContactEntry;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 249
    .local v5, "ent":Lcn/smssdk/gui/ContactEntry;
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 257
    .end local v3    # "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "ent":Lcn/smssdk/gui/ContactEntry;
    .end local v11    # "phone":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v14    # "pn":Ljava/lang/String;
    .restart local v9    # "p2cSize":I
    .restart local v17    # "tmpFia":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 258
    .local v6, "friend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v19, "phone"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, "phone":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 260
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v9, :cond_1

    .line 261
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/smssdk/gui/ContactEntry;

    .line 262
    .restart local v5    # "ent":Lcn/smssdk/gui/ContactEntry;
    invoke-virtual {v5}, Lcn/smssdk/gui/ContactEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "cp":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 264
    const-string v19, "contact"

    invoke-virtual {v5}, Lcn/smssdk/gui/ContactEntry;->getValue()Ljava/util/HashMap;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v19, "fia"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {v6}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 275
    .end local v4    # "cp":Ljava/lang/String;
    .end local v5    # "ent":Lcn/smssdk/gui/ContactEntry;
    .end local v6    # "friend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "i":I
    .end local v10    # "phone":Ljava/lang/String;
    .restart local v16    # "tmpCon":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/smssdk/gui/ContactEntry;

    .line 276
    .restart local v5    # "ent":Lcn/smssdk/gui/ContactEntry;
    invoke-virtual {v5}, Lcn/smssdk/gui/ContactEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 277
    .restart local v4    # "cp":Ljava/lang/String;
    invoke-virtual {v5}, Lcn/smssdk/gui/ContactEntry;->getValue()Ljava/util/HashMap;

    move-result-object v2

    .line 278
    .local v2, "con":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 279
    const/4 v15, 0x1

    .line 280
    .local v15, "shouldAdd":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/smssdk/gui/ContactsPage;->friendsInApp:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_9

    .line 287
    :goto_4
    if-eqz v15, :cond_2

    .line 288
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 280
    :cond_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 281
    .restart local v6    # "friend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "phone"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 282
    .restart local v10    # "phone":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 283
    const/4 v15, 0x0

    .line 284
    goto :goto_4

    .line 296
    .end local v2    # "con":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "cp":Ljava/lang/String;
    .end local v5    # "ent":Lcn/smssdk/gui/ContactEntry;
    .end local v6    # "friend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "phone":Ljava/lang/String;
    .end local v15    # "shouldAdd":Z
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 297
    .restart local v6    # "friend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v20, "contact"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 298
    .restart local v3    # "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    .line 299
    const-string v20, "phone"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 300
    .restart local v10    # "phone":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 302
    const-string v20, "phones"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 303
    .restart local v13    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_c

    .line 304
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v18, "tmpPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_d

    .line 311
    const-string v20, "phones"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v13    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v18    # "tmpPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_c
    const-string v20, "displayname"

    const-string v21, "displayname"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 305
    .restart local v13    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v18    # "tmpPs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 306
    .local v8, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "phone"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 307
    .restart local v4    # "cp":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 308
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 214
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 219
    .local v0, "id":I
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v7, "ll_back"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 220
    .local v5, "id_ll_back":I
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v7, "ivSearch"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, "id_ivSearch":I
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v7, "iv_clear"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 223
    .local v2, "id_iv_clear":I
    if-ne v0, v5, :cond_1

    .line 224
    invoke-virtual {p0}, Lcn/smssdk/gui/ContactsPage;->finish()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    if-ne v0, v1, :cond_2

    .line 226
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v7, "llTitle"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 227
    .local v4, "id_llTitle":I
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v7, "llSearch"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 229
    .local v3, "id_llSearch":I
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 231
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 232
    .end local v3    # "id_llSearch":I
    .end local v4    # "id_llTitle":I
    :cond_2
    if-ne v0, v2, :cond_0

    .line 233
    iget-object v6, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/smssdk/gui/CommonDialog;->ProgressDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    .line 51
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->pd:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 56
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    new-instance v1, Lcn/smssdk/gui/ContactsPage$1;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/ContactsPage$1;-><init>(Lcn/smssdk/gui/ContactsPage;)V

    invoke-static {v0, v1}, Lcn/smssdk/gui/SearchEngine;->prepare(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->handler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    .line 198
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 179
    :try_start_0
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "llSearch"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, "resId":I
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 181
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    const-string v3, "llTitle"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 185
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage;->etSearch:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v2, 0x1

    .line 192
    .end local v1    # "resId":I
    :goto_0
    return v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onPause()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onResume()V

    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->adapter:Lcn/smssdk/gui/ContactsAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsAdapter;->search(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage;->adapter:Lcn/smssdk/gui/ContactsAdapter;

    invoke-virtual {v0}, Lcn/smssdk/gui/ContactsAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    new-instance v0, Lcn/smssdk/gui/DefaultContactViewItem;

    invoke-direct {v0}, Lcn/smssdk/gui/DefaultContactViewItem;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcn/smssdk/gui/ContactsPage;->show(Landroid/content/Context;Lcn/smssdk/gui/ContactItemMaker;)V

    .line 91
    return-void
.end method

.method public show(Landroid/content/Context;Lcn/smssdk/gui/ContactItemMaker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maker"    # Lcn/smssdk/gui/ContactItemMaker;

    .prologue
    .line 94
    iput-object p2, p0, Lcn/smssdk/gui/ContactsPage;->itemMaker:Lcn/smssdk/gui/ContactItemMaker;

    .line 95
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    return-void
.end method
