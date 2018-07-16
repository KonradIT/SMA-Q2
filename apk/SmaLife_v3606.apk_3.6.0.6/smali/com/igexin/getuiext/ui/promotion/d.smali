.class public Lcom/igexin/getuiext/ui/promotion/d;
.super Lcom/igexin/getuiext/ui/promotion/c;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Ljava/util/ArrayList;

.field private m:Landroid/util/SparseArray;

.field private n:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/igexin/getuiext/ui/promotion/c;-><init>(Landroid/content/Context;Lcom/igexin/getuiext/ui/promotion/m;)V

    const-string v0, "GetuiExt-PromotionApp"

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->f:Ljava/lang/String;

    const/16 v0, 0xc9

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->g:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->h:I

    const/16 v0, 0x136

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->i:I

    const/16 v0, 0x140

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->j:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->l:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->m:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(II)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    move v1, v0

    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    iget v2, p0, Lcom/igexin/getuiext/ui/promotion/d;->c:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u731c\u4f60\u559c\u6b22"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/igexin/getuiext/ui/promotion/d;->c:I

    mul-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const/16 v4, 0xc9

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/igexin/getuiext/ui/promotion/d;->c:I

    iget v4, p0, Lcom/igexin/getuiext/ui/promotion/d;->c:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/ui/promotion/f;

    invoke-static {}, Lcom/igexin/getuiext/service/c;->a()Lcom/igexin/getuiext/service/c;

    move-result-object v4

    iget-object v5, v0, Lcom/igexin/getuiext/ui/promotion/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/igexin/getuiext/service/c;->a(Ljava/lang/String;Lcom/igexin/getuiext/data/a/d;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    iget-object v6, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lcom/igexin/getuiext/ui/promotion/f;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->a(Ljava/lang/String;)V

    add-int/lit16 v6, v2, 0x12c

    invoke-virtual {v5, v6}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    mul-int/lit8 v7, v7, 0x10

    iget v8, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    mul-int/lit8 v8, v8, 0x10

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v7, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    iget v8, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    iget v9, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    iget v10, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "\u70b9\u51fb\u4e0b\u8f7d"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    add-int/lit16 v7, v2, 0x136

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v7, p0, Lcom/igexin/getuiext/ui/promotion/d;->e:Lcom/igexin/getuiext/ui/f;

    const-string v8, "inc_setup_bg.png"

    invoke-virtual {v7, v8}, Lcom/igexin/getuiext/ui/f;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x8

    invoke-virtual {v5}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->getId()I

    move-result v5

    invoke-virtual {v7, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v5, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v5, 0xe

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    const/4 v8, 0x0

    const v9, 0x1010078

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    add-int/lit16 v7, v2, 0x140

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setId(I)V

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v8, -0x100

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    mul-int/lit8 v8, v8, 0xc

    iget v9, p0, Lcom/igexin/getuiext/ui/promotion/d;->d:I

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x3

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xe

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v0, Lcom/igexin/getuiext/ui/promotion/f;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x3

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getId()I

    move-result v5

    invoke-virtual {v7, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xe

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/d;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/igexin/getuiext/ui/promotion/f;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/igexin/getuiext/ui/promotion/d;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/igexin/getuiext/ui/promotion/f;->k:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/igexin/getuiext/ui/promotion/f;->m:I

    iget-object v4, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/igexin/getuiext/service/a;->a(Lcom/igexin/getuiext/data/a/a;I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "3"

    invoke-static {v4, v0, v5}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_1
    move v1, v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    goto/16 :goto_0
.end method

.method public a(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/ui/promotion/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x64

    if-ge p2, v2, :cond_2

    add-int/lit16 v0, v1, 0x140

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object p3, v0, Lcom/igexin/getuiext/ui/promotion/f;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/d;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object v2, Lcom/igexin/getuiext/ui/d;->d:Lcom/igexin/getuiext/ui/d;

    iput-object v2, v0, Lcom/igexin/getuiext/ui/promotion/f;->n:Lcom/igexin/getuiext/ui/d;

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    add-int/lit16 v2, v1, 0x140

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    add-int/lit16 v1, v1, 0x136

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/igexin/getuiext/ui/promotion/f;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/igexin/getuiext/ui/promotion/f;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    add-int/lit16 v3, v2, 0x136

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/d;->n:Landroid/widget/RelativeLayout;

    add-int/lit16 v2, v2, 0x140

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    sget-object v3, Lcom/igexin/getuiext/ui/promotion/e;->a:[I

    iget-object v4, v0, Lcom/igexin/getuiext/ui/promotion/f;->n:Lcom/igexin/getuiext/ui/d;

    invoke-virtual {v4}, Lcom/igexin/getuiext/ui/d;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/d;->b:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;Z)I

    move-result v3

    iput v3, v0, Lcom/igexin/getuiext/ui/promotion/f;->l:I

    iget-object v4, p0, Lcom/igexin/getuiext/ui/promotion/d;->m:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/c;->b:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    sget-object v3, Lcom/igexin/getuiext/ui/d;->b:Lcom/igexin/getuiext/ui/d;

    iput-object v3, v0, Lcom/igexin/getuiext/ui/promotion/f;->n:Lcom/igexin/getuiext/ui/d;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "\u70b9\u51fb\u6682\u505c"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/d;->b:Landroid/content/Context;

    iget v3, v0, Lcom/igexin/getuiext/ui/promotion/f;->l:I

    invoke-static {v2, v3, v0}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;ILcom/igexin/getuiext/data/a/d;)V

    sget-object v2, Lcom/igexin/getuiext/ui/d;->c:Lcom/igexin/getuiext/ui/d;

    iput-object v2, v0, Lcom/igexin/getuiext/ui/promotion/f;->n:Lcom/igexin/getuiext/ui/d;

    const-string v0, "\u70b9\u51fb\u7ee7\u7eed"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/igexin/getuiext/ui/promotion/d;->b:Landroid/content/Context;

    iget v3, v0, Lcom/igexin/getuiext/ui/promotion/f;->l:I

    invoke-static {v2, v3, v0}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;ILcom/igexin/getuiext/data/a/a;)V

    sget-object v2, Lcom/igexin/getuiext/ui/d;->b:Lcom/igexin/getuiext/ui/d;

    iput-object v2, v0, Lcom/igexin/getuiext/ui/promotion/f;->n:Lcom/igexin/getuiext/ui/d;

    const-string v0, "\u70b9\u51fb\u6682\u505c"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, v0, Lcom/igexin/getuiext/ui/promotion/f;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/d;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/igexin/getuiext/ui/promotion/f;->e:Ljava/lang/String;

    iget v3, v0, Lcom/igexin/getuiext/ui/promotion/f;->l:I

    invoke-static {v1, v2, v3, v0}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Ljava/lang/String;ILcom/igexin/getuiext/data/a/a;)V

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/d;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget v0, v0, Lcom/igexin/getuiext/ui/promotion/f;->l:I

    shl-int/lit8 v0, v0, 0xb

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pkgname"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/igexin/getuiext/ui/promotion/d;->b:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/igexin/getuiext/util/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/igexin/getuiext/ui/promotion/f;

    invoke-direct {v5}, Lcom/igexin/getuiext/ui/promotion/f;-><init>()V

    iput-object v4, v5, Lcom/igexin/getuiext/ui/promotion/f;->b:Ljava/lang/String;

    const-string v4, "logo_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/igexin/getuiext/ui/promotion/f;->f:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/igexin/getuiext/ui/promotion/f;->a:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/igexin/getuiext/ui/promotion/f;->g:Ljava/lang/String;

    const-string v4, "size"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/igexin/getuiext/ui/promotion/f;->i:J

    iget-object v3, p0, Lcom/igexin/getuiext/ui/promotion/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method
