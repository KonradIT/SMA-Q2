.class public Lcn/sharesdk/framework/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/sharesdk/framework/l;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    iput-object p2, p0, Lcn/sharesdk/framework/l;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Ldalvik/system/DexFile;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :try_start_1
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "cn.sharesdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v3, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcn/sharesdk/framework/CustomPlatform;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private d()Landroid/content/pm/PackageInfo;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstalledPackages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x2000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private e()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x24

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "cn.sharesdk.douban.Douban"

    aput-object v1, v2, v0

    const-string v1, "cn.sharesdk.evernote.Evernote"

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, "cn.sharesdk.facebook.Facebook"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "cn.sharesdk.renren.Renren"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "cn.sharesdk.sina.weibo.SinaWeibo"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "cn.sharesdk.kaixin.KaiXin"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "cn.sharesdk.linkedin.LinkedIn"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "cn.sharesdk.system.email.Email"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "cn.sharesdk.system.text.ShortMessage"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "cn.sharesdk.tencent.qq.QQ"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "cn.sharesdk.tencent.qzone.QZone"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "cn.sharesdk.tencent.weibo.TencentWeibo"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "cn.sharesdk.twitter.Twitter"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, "cn.sharesdk.wechat.friends.Wechat"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string v3, "cn.sharesdk.wechat.moments.WechatMoments"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    const-string v3, "cn.sharesdk.wechat.favorite.WechatFavorite"

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-string v3, "cn.sharesdk.youdao.YouDao"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-string v3, "cn.sharesdk.google.GooglePlus"

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v3, "cn.sharesdk.foursquare.FourSquare"

    aput-object v3, v2, v1

    const/16 v1, 0x13

    const-string v3, "cn.sharesdk.pinterest.Pinterest"

    aput-object v3, v2, v1

    const/16 v1, 0x14

    const-string v3, "cn.sharesdk.flickr.Flickr"

    aput-object v3, v2, v1

    const/16 v1, 0x15

    const-string v3, "cn.sharesdk.tumblr.Tumblr"

    aput-object v3, v2, v1

    const/16 v1, 0x16

    const-string v3, "cn.sharesdk.dropbox.Dropbox"

    aput-object v3, v2, v1

    const/16 v1, 0x17

    const-string v3, "cn.sharesdk.vkontakte.VKontakte"

    aput-object v3, v2, v1

    const/16 v1, 0x18

    const-string v3, "cn.sharesdk.instagram.Instagram"

    aput-object v3, v2, v1

    const/16 v1, 0x19

    const-string v3, "cn.sharesdk.yixin.friends.Yixin"

    aput-object v3, v2, v1

    const/16 v1, 0x1a

    const-string v3, "cn.sharesdk.yixin.moments.YixinMoments"

    aput-object v3, v2, v1

    const/16 v1, 0x1b

    const-string v3, "cn.sharesdk.mingdao.Mingdao"

    aput-object v3, v2, v1

    const/16 v1, 0x1c

    const-string v3, "cn.sharesdk.line.Line"

    aput-object v3, v2, v1

    const/16 v1, 0x1d

    const-string v3, "cn.sharesdk.kakao.story.KakaoStory"

    aput-object v3, v2, v1

    const/16 v1, 0x1e

    const-string v3, "cn.sharesdk.kakao.talk.KakaoTalk"

    aput-object v3, v2, v1

    const/16 v1, 0x1f

    const-string v3, "cn.sharesdk.whatsapp.WhatsApp"

    aput-object v3, v2, v1

    const/16 v1, 0x20

    const-string v3, "cn.sharesdk.pocket.Pocket"

    aput-object v3, v2, v1

    const/16 v1, 0x21

    const-string v3, "cn.sharesdk.instapaper.Instapaper"

    aput-object v3, v2, v1

    const/16 v1, 0x22

    const-string v3, "cn.sharesdk.facebookmessenger.FacebookMessenger"

    aput-object v3, v2, v1

    const/16 v1, 0x23

    const-string v3, "cn.sharesdk.alipay.share.Alipay"

    aput-object v3, v2, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v2, v1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    return-object v3
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/sharesdk/framework/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/a;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/sharesdk/framework/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/sharesdk/framework/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcn/sharesdk/framework/l;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/sharesdk/framework/l;->e()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/l;->a(Ljava/util/ArrayList;)V

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/framework/l;->d()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcn/sharesdk/framework/l;->a(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(ILcn/sharesdk/framework/Platform;)V
    .locals 3

    new-instance v0, Lcn/sharesdk/framework/b/b/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/d;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v1

    iput v1, v0, Lcn/sharesdk/framework/b/b/d;->b:I

    :cond_0
    iget-object v1, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcn/sharesdk/framework/l;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/sharesdk/framework/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/b/d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    :cond_1
    return-void

    :pswitch_0
    const-string v1, "SHARESDK_ENTER_SHAREMENU"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v1, "SHARESDK_CANCEL_SHAREMENU"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v1, "SHARESDK_EDIT_SHARE"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v1, "SHARESDK_FAILED_SHARE"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string v1, "SHARESDK_CANCEL_SHARE"

    iput-object v1, v0, Lcn/sharesdk/framework/b/b/d;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/os/Handler;ZI)V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/sharesdk/framework/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/d;->a(Landroid/os/Handler;)V

    invoke-virtual {v0, p2}, Lcn/sharesdk/framework/b/d;->a(Z)V

    invoke-virtual {v0, p3}, Lcn/sharesdk/framework/b/d;->a(I)V

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/d;->startThread()V

    :cond_0
    return-void
.end method

.method public a(Lcn/sharesdk/framework/n;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/sharesdk/framework/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcn/sharesdk/framework/b/b/a;

    invoke-direct {v1}, Lcn/sharesdk/framework/b/b/a;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/framework/b/b/a;->b:Ljava/lang/String;

    iput p2, v1, Lcn/sharesdk/framework/b/b/a;->a:I

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/sharesdk/framework/m;

    invoke-direct {v0, p0}, Lcn/sharesdk/framework/m;-><init>(Lcn/sharesdk/framework/l;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public a(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "fakelist"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "ShareSDK"

    const-string v3, "parseDevInfo"

    invoke-static {v1, v3}, Lcom/mob/commons/eventrecoder/EventRecorder;->addBegin(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    const-string v1, "snsplat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/R;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    if-eq v1, v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_2

    :cond_4
    const-string v0, "ShareSDK"

    const-string v1, "parseDevInfo"

    invoke-static {v0, v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->addEnd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/sharesdk/framework/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/sharesdk/framework/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/d;->stopThread()V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "2.7.7"

    return-object v0
.end method
