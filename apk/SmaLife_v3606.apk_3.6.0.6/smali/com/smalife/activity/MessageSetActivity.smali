.class public Lcom/smalife/activity/MessageSetActivity;
.super Landroid/app/Activity;
.source "MessageSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/MessageSetActivity$MyAdapter;,
        Lcom/smalife/activity/MessageSetActivity$ViewHodler;
    }
.end annotation


# static fields
.field private static final SUCCESS:I = 0x1


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private appInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smalife/entity/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private applist_lv:Landroid/widget/ListView;

.field private dao:Lcom/smalife/db/SmaDao;

.field private handler:Landroid/os/Handler;

.field private listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private loading:Landroid/widget/ImageView;

.field private msg_back_btn:Landroid/widget/ImageButton;

.field private pm:Landroid/content/pm/PackageManager;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    new-instance v0, Lcom/smalife/activity/MessageSetActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/MessageSetActivity$1;-><init>(Lcom/smalife/activity/MessageSetActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->handler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/smalife/activity/MessageSetActivity$2;

    invoke-direct {v0, p0}, Lcom/smalife/activity/MessageSetActivity$2;-><init>(Lcom/smalife/activity/MessageSetActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/MessageSetActivity;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/smalife/activity/MessageSetActivity;->initData()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/MessageSetActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->appInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/MessageSetActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3(Lcom/smalife/activity/MessageSetActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/smalife/activity/MessageSetActivity;->isSelect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/MessageSetActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity;->appInfos:Ljava/util/List;

    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 86
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->loading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->appInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->appInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->applist_lv:Landroid/widget/ListView;

    new-instance v1, Lcom/smalife/activity/MessageSetActivity$MyAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/smalife/activity/MessageSetActivity$MyAdapter;-><init>(Lcom/smalife/activity/MessageSetActivity;Lcom/smalife/activity/MessageSetActivity$MyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 55
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MessageSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->loading:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0e0137

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MessageSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->applist_lv:Landroid/widget/ListView;

    .line 57
    const v0, 0x7f0e0136

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MessageSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->msg_back_btn:Landroid/widget/ImageButton;

    .line 58
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->msg_back_btn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/smalife/activity/MessageSetActivity$3;

    invoke-direct {v1, p0}, Lcom/smalife/activity/MessageSetActivity$3;-><init>(Lcom/smalife/activity/MessageSetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    .line 66
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 65
    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->animation:Landroid/view/animation/RotateAnimation;

    .line 67
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 68
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->animation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 69
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 70
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->loading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smalife/activity/MessageSetActivity;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    return-void
.end method

.method private isSelect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x1

    .line 258
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppInfos()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smalife/entity/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/smalife/entity/AppInfo;>;"
    iget-object v8, p0, Lcom/smalife/activity/MessageSetActivity;->pm:Landroid/content/pm/PackageManager;

    .line 223
    const/16 v9, 0x2000

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 224
    .local v3, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 251
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 252
    .local v6, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v6, Landroid/os/Message;->what:I

    .line 253
    iget-object v8, p0, Lcom/smalife/activity/MessageSetActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    return-object v5

    .line 224
    .end local v6    # "msg":Landroid/os/Message;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 225
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v0, Lcom/smalife/entity/AppInfo;

    invoke-direct {v0}, Lcom/smalife/entity/AppInfo;-><init>()V

    .line 227
    .local v0, "appInfo":Lcom/smalife/entity/AppInfo;
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "packageName":Ljava/lang/String;
    const-string v9, "com.smalife.watch"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 233
    invoke-virtual {v0, v7}, Lcom/smalife/entity/AppInfo;->setPackagename(Ljava/lang/String;)V

    .line 236
    iget-object v9, p0, Lcom/smalife/activity/MessageSetActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    .local v1, "app_icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/smalife/entity/AppInfo;->setApp_icon(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v9, p0, Lcom/smalife/activity/MessageSetActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "app_name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/smalife/entity/AppInfo;->setApp_name(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, v4}, Lcom/smalife/activity/MessageSetActivity;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 245
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "packageName = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",app_name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MessageSetActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/smalife/activity/MessageSetActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->pm:Landroid/content/pm/PackageManager;

    .line 49
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->dao:Lcom/smalife/db/SmaDao;

    .line 50
    const-string v0, "sma"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smalife/activity/MessageSetActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/MessageSetActivity;->preferences:Landroid/content/SharedPreferences;

    .line 51
    invoke-direct {p0}, Lcom/smalife/activity/MessageSetActivity;->initView()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smalife/activity/MessageSetActivity$4;

    invoke-direct {v1, p0}, Lcom/smalife/activity/MessageSetActivity$4;-><init>(Lcom/smalife/activity/MessageSetActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void
.end method
