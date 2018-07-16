.class public Lcom/smalife/country/CountrySortAdapter;
.super Landroid/widget/BaseAdapter;
.source "CountrySortAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/country/CountrySortAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smalife/country/CountrySortModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/country/CountrySortModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/smalife/country/CountrySortAdapter;->mContext:Landroid/content/Context;

    .line 58
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-object p2, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "section"    # I

    .prologue
    const/4 v4, 0x0

    .line 129
    const/16 v3, 0x2a

    if-eq p1, v3, :cond_2

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smalife/country/CountrySortAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 146
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 133
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smalife/country/CountrySortModel;

    iget-object v2, v3, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    .line 134
    .local v2, "sortStr":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
    .local v0, "firstChar":C
    if-eq v0, p1, :cond_0

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "firstChar":C
    .end local v1    # "i":I
    .end local v2    # "sortStr":Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 143
    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/country/CountrySortModel;

    iget-object v0, v0, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "viewHolder":Lcom/smalife/country/CountrySortAdapter$ViewHolder;
    iget-object v3, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/country/CountrySortModel;

    .line 92
    .local v0, "mContent":Lcom/smalife/country/CountrySortModel;
    if-nez p2, :cond_0

    .line 94
    new-instance v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;

    .end local v2    # "viewHolder":Lcom/smalife/country/CountrySortAdapter$ViewHolder;
    invoke-direct {v2}, Lcom/smalife/country/CountrySortAdapter$ViewHolder;-><init>()V

    .line 95
    .restart local v2    # "viewHolder":Lcom/smalife/country/CountrySortAdapter$ViewHolder;
    iget-object v3, p0, Lcom/smalife/country/CountrySortAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    const v3, 0x7f0e007b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;->country_sortName:Landroid/widget/TextView;

    .line 97
    const v3, 0x7f0e007c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;->country_name:Landroid/widget/TextView;

    .line 98
    const v3, 0x7f0e007d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;->country_number:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_0
    invoke-virtual {p0, p1}, Lcom/smalife/country/CountrySortAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 110
    .local v1, "section":I
    invoke-virtual {p0, v1}, Lcom/smalife/country/CountrySortAdapter;->getPositionForSection(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 112
    iget-object v3, v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;->country_sortName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v3, v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;->country_sortName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    iget-object v4, v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;->country_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smalife/country/CountrySortModel;

    iget-object v3, v3, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;->country_number:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smalife/country/CountrySortModel;

    iget-object v3, v3, Lcom/smalife/country/CountrySortModel;->countryNumber:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-object p2

    .line 103
    .end local v1    # "section":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewHolder":Lcom/smalife/country/CountrySortAdapter$ViewHolder;
    check-cast v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/smalife/country/CountrySortAdapter$ViewHolder;
    goto :goto_0

    .line 117
    .restart local v1    # "section":I
    :cond_1
    iget-object v3, v2, Lcom/smalife/country/CountrySortAdapter$ViewHolder;->country_sortName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/country/CountrySortModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/smalife/country/CountrySortAdapter;->notifyDataSetChanged()V

    .line 177
    return-void

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/smalife/country/CountrySortAdapter;->mList:Ljava/util/List;

    goto :goto_0
.end method
