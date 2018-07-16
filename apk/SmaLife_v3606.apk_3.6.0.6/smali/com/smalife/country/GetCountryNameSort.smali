.class public Lcom/smalife/country/GetCountryNameSort;
.super Ljava/lang/Object;
.source "GetCountryNameSort.java"


# instance fields
.field chReg:Ljava/lang/String;

.field characterParser:Lcom/smalife/country/CharacterParserUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/smalife/country/CharacterParserUtil;->getInstance()Lcom/smalife/country/CharacterParserUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/country/GetCountryNameSort;->characterParser:Lcom/smalife/country/CharacterParserUtil;

    .line 33
    const-string v0, "[\\u4E00-\\u9FA5]+"

    iput-object v0, p0, Lcom/smalife/country/GetCountryNameSort;->chReg:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getSortLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "#"

    .line 44
    .local v0, "letter":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 57
    .end local v0    # "letter":Ljava/lang/String;
    .local v1, "letter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 49
    .end local v1    # "letter":Ljava/lang/String;
    .restart local v0    # "letter":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/smalife/country/GetCountryNameSort;->characterParser:Lcom/smalife/country/CharacterParserUtil;

    invoke-virtual {v4, p1}, Lcom/smalife/country/CharacterParserUtil;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "pinyin":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "sortString":Ljava/lang/String;
    const-string v4, "[A-Z]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 57
    .end local v0    # "letter":Ljava/lang/String;
    .restart local v1    # "letter":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 80
    :cond_1
    :goto_0
    return-object v0

    .line 72
    :cond_2
    const-string v0, "#"

    .line 74
    .local v0, "letter":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "sortString":Ljava/lang/String;
    const-string v2, "[A-Z]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/country/CountrySortModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/country/CountrySortModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/country/CountrySortModel;>;"
    const-string v3, "^([0-9]|[/+]).*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    const-string v3, "\\-|\\s"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "simpleStr":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    .end local v2    # "simpleStr":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 99
    .restart local v2    # "simpleStr":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/country/CountrySortModel;

    .line 101
    .local v0, "contact":Lcom/smalife/country/CountrySortModel;
    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->simpleCountryNumber:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 112
    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0    # "contact":Lcom/smalife/country/CountrySortModel;
    .end local v2    # "simpleStr":Ljava/lang/String;
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/country/CountrySortModel;

    .line 126
    .restart local v0    # "contact":Lcom/smalife/country/CountrySortModel;
    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->countryNumber:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 129
    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->countryName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 130
    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 130
    if-nez v4, :cond_6

    .line 131
    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->countrySortKey:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 132
    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 133
    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->sortToken:Lcom/smalife/country/CountrySortToken;

    iget-object v4, v4, Lcom/smalife/country/CountrySortToken;->simpleSpell:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 134
    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 134
    if-nez v4, :cond_6

    .line 135
    iget-object v4, v0, Lcom/smalife/country/CountrySortModel;->sortToken:Lcom/smalife/country/CountrySortToken;

    iget-object v4, v4, Lcom/smalife/country/CountrySortToken;->wholeSpell:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 136
    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 136
    if-eqz v4, :cond_5

    .line 138
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
