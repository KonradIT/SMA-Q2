.class public Lcom/smalife/country/CountryActivity;
.super Landroid/app/Activity;
.source "CountryActivity.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private adapter:Lcom/smalife/country/CountrySortAdapter;

.field private characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

.field private countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

.field private country_lv_countryList:Landroid/widget/ListView;

.field private dialog:Landroid/widget/TextView;

.field private iv_back:Landroid/widget/ImageView;

.field private mAllCountryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smalife/country/CountrySortModel;",
            ">;"
        }
    .end annotation
.end field

.field private pinyinComparator:Lcom/smalife/country/CountryComparator;

.field private sideBar:Lcom/smalife/country/SideBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, "CountryActivity"

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/country/CountryActivity;)Lcom/smalife/country/CountrySortAdapter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->adapter:Lcom/smalife/country/CountrySortAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/country/CountryActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/country/CountryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    return-object v0
.end method

.method private getCountryList()V
    .locals 12

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/smalife/country/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0021

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "countryList":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v1

    .local v7, "length":I
    :goto_0
    if-lt v6, v7, :cond_0

    .line 188
    iget-object v9, p0, Lcom/smalife/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    iget-object v10, p0, Lcom/smalife/country/CountryActivity;->pinyinComparator:Lcom/smalife/country/CountryComparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    iget-object v9, p0, Lcom/smalife/country/CountryActivity;->adapter:Lcom/smalife/country/CountrySortAdapter;

    iget-object v10, p0, Lcom/smalife/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-virtual {v9, v10}, Lcom/smalife/country/CountrySortAdapter;->updateListView(Ljava/util/List;)V

    .line 190
    iget-object v9, p0, Lcom/smalife/country/CountryActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "changdu"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/smalife/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 171
    :cond_0
    aget-object v9, v1, v6

    const-string v10, "\\*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "country":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v2, v0, v9

    .line 174
    .local v2, "countryName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v3, v0, v9

    .line 175
    .local v3, "countryNumber":Ljava/lang/String;
    iget-object v9, p0, Lcom/smalife/country/CountryActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    invoke-virtual {v9, v2}, Lcom/smalife/country/CharacterParserUtil;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "countrySortKey":Ljava/lang/String;
    new-instance v5, Lcom/smalife/country/CountrySortModel;

    invoke-direct {v5, v2, v3, v4}, Lcom/smalife/country/CountrySortModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v5, "countrySortModel":Lcom/smalife/country/CountrySortModel;
    iget-object v9, p0, Lcom/smalife/country/CountryActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    invoke-virtual {v9, v4}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "sortLetter":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 181
    iget-object v9, p0, Lcom/smalife/country/CountryActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    invoke-virtual {v9, v2}, Lcom/smalife/country/GetCountryNameSort;->getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    :cond_1
    iput-object v8, v5, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    .line 185
    iget-object v9, p0, Lcom/smalife/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/smalife/country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    .line 95
    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/smalife/country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->dialog:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcom/smalife/country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smalife/country/SideBar;

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->sideBar:Lcom/smalife/country/SideBar;

    .line 97
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->sideBar:Lcom/smalife/country/SideBar;

    iget-object v1, p0, Lcom/smalife/country/CountryActivity;->dialog:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/smalife/country/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 98
    const v0, 0x7f0e0076

    invoke-virtual {p0, v0}, Lcom/smalife/country/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->iv_back:Landroid/widget/ImageView;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/smalife/country/CountryComparator;

    invoke-direct {v0}, Lcom/smalife/country/CountryComparator;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->pinyinComparator:Lcom/smalife/country/CountryComparator;

    .line 102
    new-instance v0, Lcom/smalife/country/GetCountryNameSort;

    invoke-direct {v0}, Lcom/smalife/country/GetCountryNameSort;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->countryChangeUtil:Lcom/smalife/country/GetCountryNameSort;

    .line 103
    new-instance v0, Lcom/smalife/country/CharacterParserUtil;

    invoke-direct {v0}, Lcom/smalife/country/CharacterParserUtil;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->characterParserUtil:Lcom/smalife/country/CharacterParserUtil;

    .line 106
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    iget-object v1, p0, Lcom/smalife/country/CountryActivity;->pinyinComparator:Lcom/smalife/country/CountryComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    new-instance v0, Lcom/smalife/country/CountrySortAdapter;

    iget-object v1, p0, Lcom/smalife/country/CountryActivity;->mAllCountryList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/smalife/country/CountrySortAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/smalife/country/CountryActivity;->adapter:Lcom/smalife/country/CountrySortAdapter;

    .line 108
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smalife/country/CountryActivity;->adapter:Lcom/smalife/country/CountrySortAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->sideBar:Lcom/smalife/country/SideBar;

    new-instance v1, Lcom/smalife/country/CountryActivity$1;

    invoke-direct {v1, p0}, Lcom/smalife/country/CountryActivity$1;-><init>(Lcom/smalife/country/CountryActivity;)V

    invoke-virtual {v0, v1}, Lcom/smalife/country/SideBar;->setOnTouchingLetterChangedListener(Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;)V

    .line 133
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->country_lv_countryList:Landroid/widget/ListView;

    new-instance v1, Lcom/smalife/country/CountryActivity$2;

    invoke-direct {v1, p0}, Lcom/smalife/country/CountryActivity$2;-><init>(Lcom/smalife/country/CountryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/smalife/country/CountryActivity;->iv_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/smalife/country/CountryActivity$3;

    invoke-direct {v1, p0}, Lcom/smalife/country/CountryActivity$3;-><init>(Lcom/smalife/country/CountryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smalife/country/CountryActivity;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0}, Lcom/smalife/country/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 79
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/smalife/country/CountryActivity;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/smalife/country/CountryActivity;->initView()V

    .line 83
    invoke-direct {p0}, Lcom/smalife/country/CountryActivity;->setListener()V

    .line 85
    invoke-direct {p0}, Lcom/smalife/country/CountryActivity;->getCountryList()V

    .line 87
    return-void
.end method
