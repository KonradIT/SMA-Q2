.class public Lcom/smalife/activity/RankActivity;
.super Landroid/app/Activity;
.source "RankActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/RankActivity$RankAdapter;
    }
.end annotation


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private lv:Landroid/widget/ListView;

.field private mAdapter:Lcom/smalife/activity/RankActivity$RankAdapter;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mSmaDao:Lcom/smalife/db/SmaDao;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/smalife/activity/RankActivity;->mMap:Ljava/util/WeakHashMap;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/RankActivity;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->mMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/RankActivity;)Lcom/android/volley/toolbox/ImageLoader;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/RankActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->lv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/RankActivity;)Lcom/smalife/activity/RankActivity$RankAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->mAdapter:Lcom/smalife/activity/RankActivity$RankAdapter;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/smalife/activity/RankActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/RankActivity;->application:Lcom/smalife/MyApplication;

    .line 56
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/RankActivity;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 57
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/smalife/activity/RankActivity;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/smalife/activity/RankActivity$1;

    invoke-direct {v2, p0}, Lcom/smalife/activity/RankActivity$1;-><init>(Lcom/smalife/activity/RankActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v0, p0, Lcom/smalife/activity/RankActivity;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 68
    new-instance v0, Lcom/smalife/activity/RankActivity$RankAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/smalife/activity/RankActivity$RankAdapter;-><init>(Lcom/smalife/activity/RankActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/smalife/activity/RankActivity;->mAdapter:Lcom/smalife/activity/RankActivity$RankAdapter;

    .line 69
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/RankActivity;->mSmaDao:Lcom/smalife/db/SmaDao;

    .line 70
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f0e0011

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/smalife/activity/RankActivity;->lv:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smalife/activity/RankActivity;->mAdapter:Lcom/smalife/activity/RankActivity$RankAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->lv:Landroid/widget/ListView;

    const v1, 0x7f0e0010

    invoke-virtual {p0, v1}, Lcom/smalife/activity/RankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0}, Lcom/smalife/activity/RankActivity;->finish()V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0006
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/smalife/activity/RankActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/smalife/activity/RankActivity;->init()V

    .line 51
    invoke-direct {p0}, Lcom/smalife/activity/RankActivity;->initView()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/smalife/activity/RankActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "account":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "date":Ljava/lang/String;
    const/4 v10, 0x0

    .line 88
    .local v10, "steps":I
    invoke-static {p0}, Lcom/bestmafen/utils/NetWorkManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getHasLogin()Z

    move-result v9

    .line 90
    .local v9, "hasLogin":Z
    if-eqz v9, :cond_0

    .line 91
    iget-object v0, p0, Lcom/smalife/activity/RankActivity;->mSmaDao:Lcom/smalife/db/SmaDao;

    invoke-virtual {v0, v7, v8}, Lcom/smalife/db/SmaDao;->getTodaySteps(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "steps = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/accloud/cloudservice/AC;->rankingMgr()Lcom/accloud/service/ACRankingMgr;

    move-result-object v0

    const-string v1, "china"

    const-wide/16 v2, 0x0

    int-to-double v4, v10

    new-instance v6, Lcom/smalife/activity/RankActivity$2;

    invoke-direct {v6, p0}, Lcom/smalife/activity/RankActivity$2;-><init>(Lcom/smalife/activity/RankActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/accloud/service/ACRankingMgr;->set(Ljava/lang/String;JDLcom/accloud/cloudservice/VoidCallback;)V

    .line 129
    .end local v9    # "hasLogin":Z
    :cond_0
    return-void
.end method
