.class public Lcom/igexin/getuiext/ui/promotion/UrlImageView;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, v0}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setImageResource(I)V

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/igexin/getuiext/ui/promotion/o;-><init>(Lcom/igexin/getuiext/ui/promotion/UrlImageView;Lcom/igexin/getuiext/ui/promotion/n;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/promotion/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
