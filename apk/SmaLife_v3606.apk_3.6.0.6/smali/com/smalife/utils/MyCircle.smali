.class public Lcom/smalife/utils/MyCircle;
.super Landroid/widget/ImageView;
.source "MyCircle.java"


# instance fields
.field private angle:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/MyCircle;->angle:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smalife/utils/MyCircle;->bitmap:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 27
    const v0, 0x7f02001e

    invoke-virtual {p0, v0}, Lcom/smalife/utils/MyCircle;->setBackgroundResource(I)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/MyCircle;->paint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lcom/smalife/utils/MyCircle;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcom/smalife/utils/MyCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/smalife/utils/MyCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020257

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/utils/MyCircle;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/smalife/utils/MyCircle;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/smalife/utils/MyCircle;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 33
    .local v1, "oval":Landroid/graphics/RectF;
    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/smalife/utils/MyCircle;->angle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/smalife/utils/MyCircle;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 34
    iget-object v0, p0, Lcom/smalife/utils/MyCircle;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/smalife/utils/MyCircle;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/smalife/utils/MyCircle;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/smalife/utils/MyCircle;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/smalife/utils/MyCircle;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/smalife/utils/MyCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35
    return-void
.end method

.method public redraw(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/smalife/utils/MyCircle;->angle:I

    .line 38
    invoke-virtual {p0}, Lcom/smalife/utils/MyCircle;->invalidate()V

    .line 39
    return-void
.end method
