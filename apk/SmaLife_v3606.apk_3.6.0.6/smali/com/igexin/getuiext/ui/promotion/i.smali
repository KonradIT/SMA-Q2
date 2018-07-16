.class public Lcom/igexin/getuiext/ui/promotion/i;
.super Lcom/igexin/getuiext/ui/promotion/c;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/igexin/getuiext/ui/promotion/a;

.field private j:Lcom/igexin/getuiext/data/a/d;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/igexin/getuiext/ui/promotion/c;-><init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/a;->c:Lcom/igexin/getuiext/ui/promotion/a;

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->i:Lcom/igexin/getuiext/ui/promotion/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->k:I

    return-void
.end method


# virtual methods
.method public a(II)Landroid/view/View;
    .locals 6

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/i;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/igexin/getuiext/ui/promotion/i;->d:I

    iget v3, p0, Lcom/igexin/getuiext/ui/promotion/i;->d:I

    iget v4, p0, Lcom/igexin/getuiext/ui/promotion/i;->d:I

    iget v5, p0, Lcom/igexin/getuiext/ui/promotion/i;->d:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setPadding(IIII)V

    invoke-virtual {v1, p0}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/i;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/i;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/i;->a()Lcom/igexin/getuiext/ui/promotion/m;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/i;->a()Lcom/igexin/getuiext/ui/promotion/m;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/j;->a:[I

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->i:Lcom/igexin/getuiext/ui/promotion/a;

    invoke-virtual {v1}, Lcom/igexin/getuiext/ui/promotion/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->j:Lcom/igexin/getuiext/data/a/d;

    iget-object v0, v0, Lcom/igexin/getuiext/data/a/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->j:Lcom/igexin/getuiext/data/a/d;

    invoke-static {v0, v1, v5}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;Z)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->k:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->b:Landroid/content/Context;

    const-string v1, "\u5e94\u7528\u4e0b\u8f7d\u5df2\u7ecf\u5f00\u59cb\uff0c\u8bf7\u67e5\u770b\u901a\u77e5\u680f\u8fdb\u5ea6\u3002"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->h:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->h:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->h:Ljava/lang/String;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "imgUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "imgUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->f:Ljava/lang/String;

    :cond_0
    const-string v1, "linkUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "linkUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->h:Ljava/lang/String;

    :cond_1
    const-string v1, "imgPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "imgPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->g:Ljava/lang/String;

    :cond_2
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/getuiext/ui/promotion/a;->a(Ljava/lang/String;)Lcom/igexin/getuiext/ui/promotion/a;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->i:Lcom/igexin/getuiext/ui/promotion/a;

    :cond_3
    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->i:Lcom/igexin/getuiext/ui/promotion/a;

    sget-object v2, Lcom/igexin/getuiext/ui/promotion/a;->a:Lcom/igexin/getuiext/ui/promotion/a;

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/promotion/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/igexin/getuiext/data/a/d;

    invoke-direct {v1}, Lcom/igexin/getuiext/data/a/d;-><init>()V

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->j:Lcom/igexin/getuiext/data/a/d;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->j:Lcom/igexin/getuiext/data/a/d;

    const-string v2, "linkAppName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/igexin/getuiext/data/a/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->j:Lcom/igexin/getuiext/data/a/d;

    const-string v2, "linkAppPkg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/igexin/getuiext/data/a/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->j:Lcom/igexin/getuiext/data/a/d;

    const-string v2, "linkAppLogo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/igexin/getuiext/data/a/d;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/i;->j:Lcom/igexin/getuiext/data/a/d;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/i;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/d;->g:Ljava/lang/String;

    :cond_4
    return-void
.end method
