.class public Lcn/smssdk/gui/ContactsAdapter;
.super Lcn/smssdk/gui/ContactsListView$GroupAdapter;
.source "ContactsAdapter.java"


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private contactsOutApp:Ljava/util/ArrayList;
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

.field private itemMaker:Lcn/smssdk/gui/ContactItemMaker;

.field private sEngine:Lcn/smssdk/gui/SearchEngine;

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/smssdk/gui/ContactsListView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "view"    # Lcn/smssdk/gui/ContactsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/smssdk/gui/ContactsListView;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
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
    .line 40
    .local p2, "friendsInApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p3, "contactsOutApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0, p1}, Lcn/smssdk/gui/ContactsListView$GroupAdapter;-><init>(Lcn/smssdk/gui/ContactsListView;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    .line 41
    iput-object p2, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    .line 42
    iput-object p3, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    .line 43
    invoke-direct {p0}, Lcn/smssdk/gui/ContactsAdapter;->initSearchEngine()V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/ContactsAdapter;->search(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private initSearchEngine()V
    .locals 5

    .prologue
    .line 48
    new-instance v3, Lcn/smssdk/gui/SearchEngine;

    invoke-direct {v3}, Lcn/smssdk/gui/SearchEngine;-><init>()V

    iput-object v3, p0, Lcn/smssdk/gui/ContactsAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 60
    iget-object v3, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 70
    iget-object v3, p0, Lcn/smssdk/gui/ContactsAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    invoke-virtual {v3, v1}, Lcn/smssdk/gui/SearchEngine;->setIndex(Ljava/util/ArrayList;)V

    .line 71
    return-void

    .line 50
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 51
    .local v0, "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, ""

    .line 52
    .local v2, "name":Ljava/lang/String;
    const-string v4, "displayname"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    const-string v4, "displayname"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0    # "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 61
    .restart local v0    # "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, ""

    .line 62
    .restart local v2    # "name":Ljava/lang/String;
    const-string v4, "displayname"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 63
    const-string v4, "displayname"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private reSortFia(Ljava/util/HashMap;ZLjava/util/ArrayList;)V
    .locals 6
    .param p2, "isEmptyToken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
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
    .line 107
    .local p1, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 122
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-virtual {v4}, Lcn/smssdk/gui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "smssdk_contacts_in_app"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 123
    .local v3, "resId":I
    if-lez v3, :cond_1

    .line 124
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/ContactsAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-virtual {v5}, Lcn/smssdk/gui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v3    # "resId":I
    :cond_2
    return-void

    .line 108
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 109
    .local v0, "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, ""

    .line 110
    .local v2, "name":Ljava/lang/String;
    const-string v5, "displayname"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 111
    const-string v5, "displayname"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    if-nez p2, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private reSortFoa(Ljava/util/HashMap;ZLjava/util/ArrayList;)V
    .locals 6
    .param p2, "isEmptyToken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
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
    .line 133
    .local p1, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 148
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-virtual {v4}, Lcn/smssdk/gui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "smssdk_contacts_out_app"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 149
    .local v3, "resId":I
    if-lez v3, :cond_1

    .line 150
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/smssdk/gui/ContactsAdapter;->view:Lcn/smssdk/gui/ContactsListView;

    invoke-virtual {v5}, Lcn/smssdk/gui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v3    # "resId":I
    :cond_2
    return-void

    .line 134
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 135
    .local v0, "contact":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, ""

    .line 136
    .local v2, "name":Ljava/lang/String;
    const-string v5, "displayname"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    const-string v5, "displayname"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    if-nez p2, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount(I)I
    .locals 3
    .param p1, "group"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v2, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 233
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/smssdk/gui/ContactsAdapter;->getItem(II)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getItem(II)Ljava/util/HashMap;
    .locals 1
    .param p1, "group"    # I
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleView(ILandroid/widget/TextView;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 6
    .param p1, "group"    # I
    .param p2, "convertView"    # Landroid/widget/TextView;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 257
    if-nez p2, :cond_0

    .line 258
    new-instance p2, Landroid/widget/TextView;

    .end local p2    # "convertView":Landroid/widget/TextView;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    .restart local p2    # "convertView":Landroid/widget/TextView;
    const v3, -0x151712

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 260
    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {p2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    const v3, -0x666667

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 263
    .local v0, "dp_11":I
    invoke-virtual {p2, v0, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 265
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v3, v4}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 266
    .local v1, "dp_26":I
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 267
    const/16 v3, 0x10

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 269
    .end local v0    # "dp_11":I
    .end local v1    # "dp_26":I
    :cond_0
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/ContactsAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_1
    return-object p2
.end method

.method public getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "group"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 277
    invoke-virtual {p0, p1, p2}, Lcn/smssdk/gui/ContactsAdapter;->getItem(II)Ljava/util/HashMap;

    move-result-object v0

    .line 278
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcn/smssdk/gui/ContactsAdapter;->itemMaker:Lcn/smssdk/gui/ContactItemMaker;

    invoke-interface {v1, v0, p3, p4}, Lcn/smssdk/gui/ContactItemMaker;->getView(Ljava/util/HashMap;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    invoke-virtual {v4, p1}, Lcn/smssdk/gui/SearchEngine;->match(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 79
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, "isEmptyToken":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 81
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .restart local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 85
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v3, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->titles:Ljava/util/ArrayList;

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->contacts:Ljava/util/ArrayList;

    .line 95
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 96
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->friendsInApp:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0, v4}, Lcn/smssdk/gui/ContactsAdapter;->reSortFia(Ljava/util/HashMap;ZLjava/util/ArrayList;)V

    .line 98
    :cond_2
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 99
    iget-object v4, p0, Lcn/smssdk/gui/ContactsAdapter;->contactsOutApp:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0, v4}, Lcn/smssdk/gui/ContactsAdapter;->reSortFoa(Ljava/util/HashMap;ZLjava/util/ArrayList;)V

    .line 102
    :cond_3
    return-void

    .line 86
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "r":Ljava/lang/String;
    invoke-virtual {v3, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setContactItemMaker(Lcn/smssdk/gui/ContactItemMaker;)V
    .locals 0
    .param p1, "itemMaker"    # Lcn/smssdk/gui/ContactItemMaker;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/smssdk/gui/ContactsAdapter;->itemMaker:Lcn/smssdk/gui/ContactItemMaker;

    .line 158
    return-void
.end method
