.class public Lcom/linj/imageloader/ImageSizeUtil;
.super Ljava/lang/Object;
.source "ImageSizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/imageloader/ImageSizeUtil$ImageSize;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static caculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 27
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 28
    .local v3, "width":I
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 30
    .local v0, "height":I
    const/4 v2, 0x1

    .line 32
    .local v2, "inSampleSize":I
    if-gt v3, p1, :cond_0

    if-le v0, p2, :cond_1

    .line 34
    :cond_0
    int-to-float v5, v3

    mul-float/2addr v5, v7

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 35
    .local v4, "widthRadio":I
    int-to-float v5, v0

    mul-float/2addr v5, v7

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 37
    .local v1, "heightRadio":I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 40
    .end local v1    # "heightRadio":I
    .end local v4    # "widthRadio":I
    :cond_1
    return v2
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 111
    .local v2, "value":I
    :try_start_0
    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 112
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    .local v1, "fieldValue":I
    if-lez v1, :cond_0

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_0

    .line 116
    move v2, v1

    .line 121
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldValue":I
    :cond_0
    :goto_0
    return v2

    .line 118
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getImageViewSize(Landroid/widget/ImageView;)Lcom/linj/imageloader/ImageSizeUtil$ImageSize;
    .locals 6
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 52
    new-instance v2, Lcom/linj/imageloader/ImageSizeUtil$ImageSize;

    invoke-direct {v2}, Lcom/linj/imageloader/ImageSizeUtil$ImageSize;-><init>()V

    .line 53
    .local v2, "imageSize":Lcom/linj/imageloader/ImageSizeUtil$ImageSize;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 54
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 57
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 59
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 60
    .local v4, "width":I
    if-gtz v4, :cond_0

    .line 62
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    :cond_0
    if-gtz v4, :cond_1

    .line 67
    const-string v5, "mMaxWidth"

    invoke-static {p0, v5}, Lcom/linj/imageloader/ImageSizeUtil;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    .line 69
    :cond_1
    if-gtz v4, :cond_2

    .line 71
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 75
    .local v1, "height":I
    if-gtz v1, :cond_3

    .line 77
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    :cond_3
    if-gtz v1, :cond_4

    .line 81
    const-string v5, "mMaxHeight"

    invoke-static {p0, v5}, Lcom/linj/imageloader/ImageSizeUtil;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 83
    :cond_4
    if-gtz v1, :cond_5

    .line 85
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 87
    :cond_5
    iput v4, v2, Lcom/linj/imageloader/ImageSizeUtil$ImageSize;->width:I

    .line 88
    iput v1, v2, Lcom/linj/imageloader/ImageSizeUtil$ImageSize;->height:I

    .line 90
    return-object v2
.end method
