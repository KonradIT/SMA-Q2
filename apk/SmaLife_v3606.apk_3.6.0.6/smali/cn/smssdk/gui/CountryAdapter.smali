.class public Lcn/smssdk/gui/CountryAdapter;
.super Lcn/smssdk/gui/GroupListView$GroupAdapter;
.source "CountryAdapter.java"


# instance fields
.field private countries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private rawData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcn/smssdk/gui/GroupListView;)V
    .locals 1
    .param p1, "view"    # Lcn/smssdk/gui/GroupListView;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/smssdk/gui/GroupListView$GroupAdapter;-><init>(Lcn/smssdk/gui/GroupListView;)V

    .line 35
    invoke-static {}, Lcn/smssdk/SMSSDK;->getGroupedCountryList()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/gui/CountryAdapter;->rawData:Ljava/util/HashMap;

    .line 36
    invoke-direct {p0}, Lcn/smssdk/gui/CountryAdapter;->initSearchEngine()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/smssdk/gui/CountryAdapter;->search(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private initSearchEngine()V
    .locals 7

    .prologue
    .line 41
    new-instance v4, Lcn/smssdk/gui/SearchEngine;

    invoke-direct {v4}, Lcn/smssdk/gui/SearchEngine;-><init>()V

    iput-object v4, p0, Lcn/smssdk/gui/CountryAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcn/smssdk/gui/CountryAdapter;->rawData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    iget-object v4, p0, Lcn/smssdk/gui/CountryAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    invoke-virtual {v4, v1}, Lcn/smssdk/gui/SearchEngine;->setIndex(Ljava/util/ArrayList;)V

    .line 50
    return-void

    .line 43
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/ArrayList<[Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 45
    .local v0, "cl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 46
    .local v3, "paire":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount(I)I
    .locals 3
    .param p1, "group"    # I

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Lcn/smssdk/gui/CountryAdapter;->countries:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    iget-object v2, p0, Lcn/smssdk/gui/CountryAdapter;->countries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 114
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcn/smssdk/gui/CountryAdapter;->titles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/CountryAdapter;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcn/smssdk/gui/CountryAdapter;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/smssdk/gui/CountryAdapter;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
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
    invoke-virtual {p0, p1, p2}, Lcn/smssdk/gui/CountryAdapter;->getItem(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(II)[Ljava/lang/String;
    .locals 4
    .param p1, "group"    # I
    .param p2, "position"    # I

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "countriesArray":[Ljava/lang/String;
    iget-object v3, p0, Lcn/smssdk/gui/CountryAdapter;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    :try_start_0
    iget-object v3, p0, Lcn/smssdk/gui/CountryAdapter;->countries:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v1

    .line 139
    :goto_1
    return-object v3

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "group"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 145
    if-nez p2, :cond_1

    .line 146
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 149
    move-object p2, v1

    .line 151
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v4, "tv":Landroid/widget/TextView;
    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v4, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "smssdk_lv_title_color"

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 155
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 158
    .local v0, "dp_6":I
    invoke-virtual {v4, v9, v0, v9, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 159
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    new-instance v5, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 164
    .local v5, "vDiv":Landroid/view/View;
    const v6, -0x1c1c1d

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .end local v0    # "dp_6":I
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "resId":I
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "vDiv":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1}, Lcn/smssdk/gui/CountryAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "title":Ljava/lang/String;
    move-object v6, p2

    .line 169
    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 170
    .restart local v4    # "tv":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object p2
.end method

.method public getView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "group"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 182
    if-nez p3, :cond_1

    .line 183
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 184
    .local v2, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 185
    move-object p3, v2

    .line 187
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "smssdk_lv_tv_color"

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->getColorRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 189
    .local v3, "resId":I
    if-lez v3, :cond_0

    .line 190
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    :cond_0
    const/4 v5, 0x2

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v1

    .line 194
    .local v1, "dp_16":I
    invoke-virtual {v4, v7, v1, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    const/4 v6, -0x2

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .end local v1    # "dp_16":I
    .end local v2    # "ll":Landroid/widget/LinearLayout;
    .end local v3    # "resId":I
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/smssdk/gui/CountryAdapter;->getItem(II)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "data":[Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object v5, p3

    .line 201
    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 202
    .restart local v4    # "tv":Landroid/widget/TextView;
    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_2
    return-object p3
.end method

.method public onGroupChange(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "titleView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 176
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1    # "titleView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 11
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v8, p0, Lcn/smssdk/gui/CountryAdapter;->sEngine:Lcn/smssdk/gui/SearchEngine;

    invoke-virtual {v8, p1}, Lcn/smssdk/gui/SearchEngine;->match(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 58
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 59
    .local v2, "isEmptyToken":Z
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 60
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .restart local v6    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 64
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v7, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 69
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcn/smssdk/gui/CountryAdapter;->titles:Ljava/util/ArrayList;

    .line 70
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcn/smssdk/gui/CountryAdapter;->countries:Ljava/util/ArrayList;

    .line 71
    iget-object v8, p0, Lcn/smssdk/gui/CountryAdapter;->rawData:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 102
    return-void

    .line 65
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 66
    .local v5, "r":Ljava/lang/String;
    invoke-virtual {v7, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    .end local v5    # "r":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/ArrayList<[Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 73
    .local v0, "cl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 79
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 80
    iget-object v9, p0, Lcn/smssdk/gui/CountryAdapter;->titles:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v9, p0, Lcn/smssdk/gui/CountryAdapter;->countries:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 75
    .local v4, "paire":[Ljava/lang/String;
    if-nez v2, :cond_7

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 76
    :cond_7
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
