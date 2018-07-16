.class public Lcom/igexin/getuiext/ui/promotion/k;
.super Lcom/igexin/getuiext/ui/promotion/c;


# instance fields
.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Lcom/igexin/getuiext/ui/promotion/a;

.field private n:Ljava/lang/String;

.field private o:Lcom/igexin/getuiext/data/a/d;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V
    .locals 2

    const/high16 v1, -0x1000000

    invoke-direct {p0, p1, p2}, Lcom/igexin/getuiext/ui/promotion/c;-><init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V

    const/16 v0, 0xf

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->g:I

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->j:Ljava/lang/String;

    const/16 v0, 0xc

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->k:I

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->l:I

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/a;->c:Lcom/igexin/getuiext/ui/promotion/a;

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->m:Lcom/igexin/getuiext/ui/promotion/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->p:I

    return-void
.end method


# virtual methods
.method public a(II)Landroid/view/View;
    .locals 9

    const/16 v8, 0x65

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/igexin/getuiext/ui/promotion/k;->c:I

    iget v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->d:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->h:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->g:I

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->i:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setId(I)V

    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->l:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->k:I

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v4, p0, Lcom/igexin/getuiext/ui/promotion/k;->d:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/k;->a()Lcom/igexin/getuiext/ui/promotion/m;

    move-result-object v2

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v6, v3, v4}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/k;->a()Lcom/igexin/getuiext/ui/promotion/m;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/l;->a:[I

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->m:Lcom/igexin/getuiext/ui/promotion/a;

    invoke-virtual {v1}, Lcom/igexin/getuiext/ui/promotion/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->o:Lcom/igexin/getuiext/data/a/d;

    iget-object v0, v0, Lcom/igexin/getuiext/data/a/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->o:Lcom/igexin/getuiext/data/a/d;

    invoke-static {v0, v1, v5}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;Z)I

    move-result v0

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->p:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->b:Landroid/content/Context;

    const-string v1, "\u5e94\u7528\u4e0b\u8f7d\u5df2\u7ecf\u5f00\u59cb\uff0c\u8bf7\u67e5\u770b\u901a\u77e5\u680f\u8fdb\u5ea6\u3002"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->n:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->n:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->n:Ljava/lang/String;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->b:Landroid/content/Context;

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
    .locals 4

    const/high16 v3, -0x1000000

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->f:Ljava/lang/String;

    :cond_0
    const-string v1, "titleFontSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "titleFontSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->g:I

    :cond_1
    const-string v1, "titleFontColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "titleFontColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string v1, "titleAlign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "titleAlign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x5

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->i:I

    :cond_3
    :goto_1
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->j:Ljava/lang/String;

    :cond_4
    const-string v1, "contentFontSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "contentFontSize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->k:I

    :cond_5
    const-string v1, "contentFontColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_1
    const-string v1, "contentFontColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/a;->a:Lcom/igexin/getuiext/ui/promotion/a;

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->m:Lcom/igexin/getuiext/ui/promotion/a;

    :cond_7
    :goto_3
    const-string v1, "linkUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "linkUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->n:Ljava/lang/String;

    :cond_8
    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->m:Lcom/igexin/getuiext/ui/promotion/a;

    sget-object v2, Lcom/igexin/getuiext/ui/promotion/a;->a:Lcom/igexin/getuiext/ui/promotion/a;

    invoke-virtual {v1, v2}, Lcom/igexin/getuiext/ui/promotion/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/igexin/getuiext/data/a/d;

    invoke-direct {v1}, Lcom/igexin/getuiext/data/a/d;-><init>()V

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->o:Lcom/igexin/getuiext/data/a/d;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->o:Lcom/igexin/getuiext/data/a/d;

    const-string v2, "linkAppName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/igexin/getuiext/data/a/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->o:Lcom/igexin/getuiext/data/a/d;

    const-string v2, "linkAppLogo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/igexin/getuiext/data/a/d;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->o:Lcom/igexin/getuiext/data/a/d;

    const-string v2, "linkAppPkg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/igexin/getuiext/data/a/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/k;->o:Lcom/igexin/getuiext/data/a/d;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/getuiext/data/a/d;->g:Ljava/lang/String;

    :cond_9
    return-void

    :catch_0
    move-exception v1

    iput v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->h:I

    goto/16 :goto_0

    :cond_a
    const-string v2, "center"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x11

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->i:I

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x3

    iput v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->i:I

    goto/16 :goto_1

    :catch_1
    move-exception v1

    iput v3, p0, Lcom/igexin/getuiext/ui/promotion/k;->l:I

    goto :goto_2

    :cond_c
    sget-object v1, Lcom/igexin/getuiext/ui/promotion/a;->b:Lcom/igexin/getuiext/ui/promotion/a;

    iput-object v1, p0, Lcom/igexin/getuiext/ui/promotion/k;->m:Lcom/igexin/getuiext/ui/promotion/a;

    goto :goto_3
.end method
