.class public Lcom/igexin/getuiext/activity/GetuiExtActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/igexin/getuiext/ui/f;

.field private f:Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;

.field private g:Lcom/igexin/getuiext/ui/promotion/c;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/igexin/getuiext/data/a/e;

.field private j:I

.field private k:Lcom/igexin/getuiext/ui/d;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/igexin/getuiext/ui/d;->a:Lcom/igexin/getuiext/ui/d;

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->k:Lcom/igexin/getuiext/ui/d;

    return-void
.end method

.method static synthetic a(Lcom/igexin/getuiext/activity/GetuiExtActivity;)I
    .locals 1

    iget v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    return v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/igexin/getuiext/data/a/e;
    .locals 4

    new-instance v0, Lcom/igexin/getuiext/data/a/e;

    invoke-direct {v0}, Lcom/igexin/getuiext/data/a/e;-><init>()V

    const-string v1, "logo_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->f:Ljava/lang/String;

    const-string v1, "sendId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->j:Ljava/lang/String;

    const-string v1, "taskid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->k:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->a:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->g:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->r:Ljava/lang/String;

    const-string v1, "diffSize"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/igexin/getuiext/data/a/e;->o:J

    const-string v1, "fullSize"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/igexin/getuiext/data/a/e;->i:J

    const-string v1, "originalUrl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->h:Ljava/lang/String;

    const-string v1, "pkgname"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->b:Ljava/lang/String;

    const-string v1, "updateType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/getuiext/data/a/f;->a(Ljava/lang/String;)Lcom/igexin/getuiext/data/a/f;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->n:Lcom/igexin/getuiext/data/a/f;

    const-string v1, "versionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/igexin/getuiext/data/a/e;->d:I

    const-string v1, "versionName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/e;->c:Ljava/lang/String;

    const-string v1, "previous_version_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/igexin/getuiext/data/a/e;->m:I

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/getuiext/activity/GetuiExtActivity;Lcom/igexin/getuiext/ui/d;)Lcom/igexin/getuiext/ui/d;
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->k:Lcom/igexin/getuiext/ui/d;

    return-object p1
.end method

.method static synthetic a(Lcom/igexin/getuiext/activity/GetuiExtActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/igexin/getuiext/activity/GetuiExtActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)Lcom/igexin/getuiext/ui/promotion/c;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/m;->d:Lcom/igexin/getuiext/ui/promotion/m;

    const-string v2, "recommendType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "img"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/m;->b:Lcom/igexin/getuiext/ui/promotion/m;

    :cond_0
    :goto_0
    sget-object v2, Lcom/igexin/getuiext/ui/promotion/m;->d:Lcom/igexin/getuiext/ui/promotion/m;

    if-eq v0, v2, :cond_3

    invoke-static {p0, v0}, Lcom/igexin/getuiext/ui/promotion/g;->a(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)Lcom/igexin/getuiext/ui/promotion/c;

    move-result-object v0

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v2, v2, Lcom/igexin/getuiext/data/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/igexin/getuiext/ui/promotion/c;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v2, v2, Lcom/igexin/getuiext/data/a/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/igexin/getuiext/ui/promotion/c;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "promotion_attrs"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/igexin/getuiext/ui/promotion/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_1
    const-string v3, "app"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/m;->a:Lcom/igexin/getuiext/ui/promotion/m;

    goto :goto_0

    :cond_2
    const-string v3, "txt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/m;->c:Lcom/igexin/getuiext/ui/promotion/m;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/getuiext/ui/f;->a(Landroid/content/Context;)Lcom/igexin/getuiext/ui/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p0, v0}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->d:I

    return-void
.end method

.method static synthetic c(Lcom/igexin/getuiext/activity/GetuiExtActivity;)Lcom/igexin/getuiext/ui/promotion/c;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->g:Lcom/igexin/getuiext/ui/promotion/c;

    return-object v0
.end method

.method private c()V
    .locals 6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    int-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->q:I

    const/4 v0, -0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private d()V
    .locals 6

    const/16 v4, 0x3f4

    const/high16 v3, 0x43120000    # 146.0f

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->g:Lcom/igexin/getuiext/ui/promotion/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->g:Lcom/igexin/getuiext/ui/promotion/c;

    const/high16 v1, 0x43c10000    # 386.0f

    invoke-static {p0, v1}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/igexin/getuiext/ui/promotion/c;->a(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GetuiExt-UpgradeActivity"

    const-string v1, "No Promotion Applications, Hide Promotion View"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {p0, v3}, Lcom/igexin/getuiext/ui/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:I

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:I

    iget v5, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const-string v0, "package"

    const-string v0, "com.android.settings.ApplicationPkgName"

    const-string v0, "pkg"

    const-string v0, "com.android.settings"

    const-string v0, "com.android.settings.InstalledAppDetails"

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package"

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v2, v2, Lcom/igexin/getuiext/data/a/e;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const-string v0, "pkg"

    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v2, v2, Lcom/igexin/getuiext/data/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method private f()Landroid/widget/RelativeLayout;
    .locals 12

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, -0x2

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3f4

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v3, "inc_icon_close.png"

    invoke-virtual {v0, v3}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:I

    mul-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:I

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x3e9

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v2, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v3, v3, Lcom/igexin/getuiext/data/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u6b63\u5728\u5347\u7ea7"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x3e9

    invoke-virtual {v0, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x3e8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0xff0100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->d:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0, v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v5, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x3ea

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    invoke-direct {v2, p0}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v3, v3, Lcom/igexin/getuiext/data/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->a(Ljava/lang/String;)V

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/igexin/getuiext/data/a/f;->b:Lcom/igexin/getuiext/data/a/f;

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v3, v3, Lcom/igexin/getuiext/data/a/e;->n:Lcom/igexin/getuiext/data/a/f;

    invoke-virtual {v2, v3}, Lcom/igexin/getuiext/data/a/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v4, "inc_province.png"

    invoke-virtual {v3, v4}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x8

    const/16 v5, 0x3ed

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x6

    const/16 v5, 0x3ed

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x5

    const/16 v5, 0x3ed

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x7

    const/16 v5, 0x3ed

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3f3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v5, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v5, "inc_pause.png"

    invoke-virtual {v4, v5}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    const/16 v4, 0x3f8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const-string v4, "\u6682\u505c"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const/16 v4, 0x3f9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x3f8

    invoke-virtual {v3, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v5, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v9, v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v5, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v6, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    const/16 v5, 0x3ed

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x3f3

    invoke-virtual {v3, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v5, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v3, v3, Lcom/igexin/getuiext/data/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEms(I)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v3, 0x3ee

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7248\u672c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v4, v4, Lcom/igexin/getuiext/data/a/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x3ef

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c:I

    iget v5, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v4, 0x1

    const/16 v5, 0x3ee

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x4

    const/16 v5, 0x3ee

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x3f0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v3, v3, Lcom/igexin/getuiext/data/a/e;->n:Lcom/igexin/getuiext/data/a/f;

    sget-object v4, Lcom/igexin/getuiext/data/a/f;->b:Lcom/igexin/getuiext/data/a/f;

    invoke-virtual {v3, v4}, Lcom/igexin/getuiext/data/a/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_1
    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-wide v4, v3, Lcom/igexin/getuiext/data/a/e;->i:J

    long-to-float v3, v4

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5927\u5c0f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x3ee

    invoke-virtual {v3, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x5

    const/16 v5, 0x3ee

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v3, 0x3f1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-wide v4, v3, Lcom/igexin/getuiext/data/a/e;->o:J

    long-to-float v3, v4

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53ea\u9700:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    const/16 v5, 0x3f0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x4

    const/16 v5, 0x3f0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c:I

    iget v5, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v3, v3, Lcom/igexin/getuiext/data/a/e;->n:Lcom/igexin/getuiext/data/a/f;

    sget-object v4, Lcom/igexin/getuiext/data/a/f;->a:Lcom/igexin/getuiext/data/a/f;

    invoke-virtual {v3, v4}, Lcom/igexin/getuiext/data/a/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->l:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->l:Landroid/widget/ProgressBar;

    const/16 v3, 0x3f2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setId(I)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, -0x100

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->l:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x3f0

    invoke-virtual {v0, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x5

    const/16 v4, 0x3f0

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66f4\u65b0\u8bf4\u660e\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v3, v3, Lcom/igexin/getuiext/data/a/e;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3f5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    const/16 v4, 0x3eb

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x3eb

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    const-string v2, "#8a8a8a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    const/16 v2, 0x3fa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x3f5

    invoke-virtual {v0, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u8fd8\u53ef\u4ee5\u8fdb\u884c\u4e0b\u5217\u64cd\u4f5c\uff1a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x3fe

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v3, "inc_btn_normal.png"

    invoke-virtual {v2, v3}, Lcom/igexin/getuiext/ui/f;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->q:I

    div-int/lit8 v2, v2, 0x9

    const-string v3, "\u7ba1\u7406\u6b64\u5e94\u7528"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    invoke-virtual {v0, v8, v11}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 v3, 0x3fb

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v4, v2, 0x3

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v4, 0x3fe

    invoke-virtual {v3, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v4, "inc_btn_emphasize_normal.png"

    invoke-virtual {v3, v4}, Lcom/igexin/getuiext/ui/f;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v3, "WiFi\u4e0b\u4e0b\u8f7d"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    invoke-virtual {v0, v8, v11}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 v3, 0x3fc

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v4, v2, 0x3

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v4, 0x3fe

    invoke-virtual {v3, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->d:I

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    const/16 v5, 0x3fb

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x3fc

    invoke-virtual {v3, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x3fe

    invoke-virtual {v3, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    const-string v3, "\u4e0b\u6b21\u518d\u8bf4"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v3, 0x3fd

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v0, v8, v11}, Landroid/widget/Button;->setTextSize(IF)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x3fc

    invoke-virtual {v3, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v3, "inc_more.9.png"

    invoke-virtual {v2, v3}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x3f6

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x3fa

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v4, "inc_click_down.png"

    invoke-virtual {v3, v4}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v3, 0x3f7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x20

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/igexin/getuiext/activity/a;->a:[I

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->k:Lcom/igexin/getuiext/ui/d;

    invoke-virtual {v1}, Lcom/igexin/getuiext/ui/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v2, "inc_update.png"

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v2, "inc_pause.png"

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v2, "inc_update.png"

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v2, "inc_setup.png"

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const-string v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v2, "inc_open.png"

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->n:Landroid/widget/TextView;

    const-string v1, "\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v2, "inc_icon_close.png"

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->finish()V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/igexin/getuiext/activity/a;->a:[I

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->k:Lcom/igexin/getuiext/ui/d;

    invoke-virtual {v1}, Lcom/igexin/getuiext/ui/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a()V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/igexin/getuiext/ui/d;->b:Lcom/igexin/getuiext/ui/d;

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->k:Lcom/igexin/getuiext/ui/d;

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    invoke-static {p0, v0, v2}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;Z)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;ILcom/igexin/getuiext/data/a/d;)V

    sget-object v0, Lcom/igexin/getuiext/ui/d;->c:Lcom/igexin/getuiext/ui/d;

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->k:Lcom/igexin/getuiext/ui/d;

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;ILcom/igexin/getuiext/data/a/a;)V

    sget-object v0, Lcom/igexin/getuiext/ui/d;->b:Lcom/igexin/getuiext/ui/d;

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->k:Lcom/igexin/getuiext/ui/d;

    :pswitch_3
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    shl-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->p:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    invoke-static {p0, v0, v1, v2}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Ljava/lang/String;ILcom/igexin/getuiext/data/a/a;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    iget-object v0, v0, Lcom/igexin/getuiext/data/a/e;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->finish()V

    goto :goto_1

    :pswitch_5
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/widget/ImageView;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v2, "inc_click_up.png"

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_1
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v2, "inc_click_down.png"

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/f;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :sswitch_3
    invoke-direct {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e()V

    goto/16 :goto_0

    :sswitch_4
    iget v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/igexin/getuiext/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;Z)I

    :cond_2
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->finish()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->finish()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3f7 -> :sswitch_2
        0x3f8 -> :sswitch_1
        0x3fb -> :sswitch_3
        0x3fc -> :sswitch_4
        0x3fd -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b()V

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a(Landroid/os/Bundle;)Lcom/igexin/getuiext/data/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    invoke-direct {p0, v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b(Landroid/os/Bundle;)Lcom/igexin/getuiext/ui/promotion/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->g:Lcom/igexin/getuiext/ui/promotion/c;

    invoke-direct {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c()V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    iput v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    invoke-static {p0}, Lcom/igexin/getuiext/util/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/getuiext/ui/d;->b:Lcom/igexin/getuiext/ui/d;

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->k:Lcom/igexin/getuiext/ui/d;

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;Z)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->j:I

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v1, "inc_bg.9.png"

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->f()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->g:Lcom/igexin/getuiext/ui/promotion/c;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->d()V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->i:Lcom/igexin/getuiext/data/a/e;

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->f:Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;

    invoke-virtual {p0, v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->f:Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->f:Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;

    invoke-direct {v0, p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;-><init>(Lcom/igexin/getuiext/activity/GetuiExtActivity;)V

    iput-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->f:Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.igexin.getuiext.ui.upgrade_progress"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->f:Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v1, "inc_btn_pressed.png"

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/f;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v1, "inc_btn_normal.png"

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/f;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v1, "inc_btn_emphasize_pressed.png"

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/f;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->e:Lcom/igexin/getuiext/ui/f;

    const-string v1, "inc_btn_emphasize_normal.png"

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/f;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3fb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
