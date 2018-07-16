.class public Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;
.super Ljava/lang/Object;
.source "MatrixImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/album/view/MatrixImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatrixTouchListener"
.end annotation


# static fields
.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_UNABLE:I = 0x3

.field private static final MODE_ZOOM:I = 0x2


# instance fields
.field private mCurrentMatrix:Landroid/graphics/Matrix;

.field mDobleClickScale:F

.field mFirstMove:Z

.field mLeftDragable:Z

.field mMaxScale:F

.field private mMode:I

.field mRightDragable:Z

.field private mStartDis:F

.field private mStartPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/linj/album/view/MatrixImageView;


# direct methods
.method public constructor <init>(Lcom/linj/album/view/MatrixImageView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iput-object p1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMaxScale:F

    .line 111
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mDobleClickScale:F

    .line 112
    iput v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 124
    iput-boolean v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    .line 125
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    return-void
.end method

.method private checkDragable()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 184
    iput-boolean v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mLeftDragable:Z

    .line 185
    iput-boolean v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mRightDragable:Z

    .line 186
    iput-boolean v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    .line 187
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 188
    .local v0, "values":[F
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/linj/album/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 190
    aget v1, v0, v4

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 191
    iput-boolean v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mRightDragable:Z

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v1}, Lcom/linj/album/view/MatrixImageView;->access$2(Lcom/linj/album/view/MatrixImageView;)F

    move-result v1

    aget v2, v0, v3

    mul-float/2addr v1, v2

    aget v2, v0, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 194
    iput-boolean v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mLeftDragable:Z

    .line 196
    :cond_1
    return-void
.end method

.method private checkDxBound([FFF)F
    .locals 7
    .param p1, "values"    # [F
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v6, 0x1

    const v3, 0x3ecccccd    # 0.4f

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v0, v2

    .line 262
    .local v0, "width":F
    iget-boolean v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mLeftDragable:Z

    if-nez v2, :cond_1

    cmpg-float v2, p2, v1

    if-gez v2, :cond_1

    .line 264
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    if-eqz v2, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    iget-boolean v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mRightDragable:Z

    if-nez v2, :cond_2

    cmpl-float v2, p2, v1

    if-lez v2, :cond_2

    .line 271
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    if-eqz v2, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    goto :goto_0

    .line 276
    :cond_2
    iput-boolean v6, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mLeftDragable:Z

    .line 277
    iput-boolean v6, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mRightDragable:Z

    .line 278
    iget-boolean v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mFirstMove:Z

    .line 279
    :cond_3
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v2}, Lcom/linj/album/view/MatrixImageView;->access$2(Lcom/linj/album/view/MatrixImageView;)F

    move-result v2

    aget v3, p1, v4

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_0

    .line 283
    aget v2, p1, v5

    add-float/2addr v2, p2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_5

    .line 284
    aget v1, p1, v5

    neg-float p2, v1

    :cond_4
    :goto_1
    move v1, p2

    .line 289
    goto :goto_0

    .line 286
    :cond_5
    aget v1, p1, v5

    add-float/2addr v1, p2

    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v2}, Lcom/linj/album/view/MatrixImageView;->access$2(Lcom/linj/album/view/MatrixImageView;)F

    move-result v2

    aget v3, p1, v4

    mul-float/2addr v2, v3

    sub-float/2addr v2, v0

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 287
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v1}, Lcom/linj/album/view/MatrixImageView;->access$2(Lcom/linj/album/view/MatrixImageView;)F

    move-result v1

    aget v2, p1, v4

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    neg-float v1, v1

    aget v2, p1, v5

    sub-float p2, v1, v2

    goto :goto_1
.end method

.method private checkDyBound([FF)F
    .locals 6
    .param p1, "values"    # [F
    .param p2, "dy"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x5

    .line 244
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/linj/album/view/MatrixImageView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 245
    .local v0, "height":F
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v2}, Lcom/linj/album/view/MatrixImageView;->access$4(Lcom/linj/album/view/MatrixImageView;)F

    move-result v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 251
    :goto_0
    return v1

    .line 247
    :cond_0
    aget v2, p1, v4

    add-float/2addr v2, p2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 248
    aget v1, p1, v4

    neg-float p2, v1

    :cond_1
    :goto_1
    move v1, p2

    .line 251
    goto :goto_0

    .line 249
    :cond_2
    aget v1, p1, v4

    add-float/2addr v1, p2

    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v2}, Lcom/linj/album/view/MatrixImageView;->access$4(Lcom/linj/album/view/MatrixImageView;)F

    move-result v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v2, v0

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v1}, Lcom/linj/album/view/MatrixImageView;->access$4(Lcom/linj/album/view/MatrixImageView;)F

    move-result v1

    aget v2, p1, v5

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    neg-float v1, v1

    aget v2, p1, v4

    sub-float p2, v1, v2

    goto :goto_1
.end method

.method private checkMaxScale(F[F)F
    .locals 3
    .param p1, "scale"    # F
    .param p2, "values"    # [F

    .prologue
    const/4 v2, 0x0

    .line 342
    aget v0, p2, v2

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMaxScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 343
    iget v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMaxScale:F

    aget v1, p2, v2

    div-float p1, v0, v1

    .line 344
    :cond_0
    return p1
.end method

.method private checkRest()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 377
    const/16 v3, 0x9

    new-array v1, v3, [F

    .line 378
    .local v1, "values":[F
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 380
    aget v0, v1, v2

    .line 382
    .local v0, "scale":F
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v3}, Lcom/linj/album/view/MatrixImageView;->access$3(Lcom/linj/album/view/MatrixImageView;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 403
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 404
    .local v0, "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 406
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private getCenter(F[F)Landroid/graphics/PointF;
    .locals 6
    .param p1, "scale"    # F
    .param p2, "values"    # [F

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 321
    aget v2, p2, v4

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v3}, Lcom/linj/album/view/MatrixImageView;->access$3(Lcom/linj/album/view/MatrixImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 322
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/linj/album/view/MatrixImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 332
    :goto_0
    return-object v2

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 325
    .local v0, "cx":F
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/linj/album/view/MatrixImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 327
    .local v1, "cy":F
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aget v3, p2, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 328
    const/4 v0, 0x0

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v2}, Lcom/linj/album/view/MatrixImageView;->access$2(Lcom/linj/album/view/MatrixImageView;)F

    move-result v2

    aget v3, p2, v4

    mul-float/2addr v2, v3

    aget v3, p2, v5

    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v0, v2

    .line 332
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private isMatrixEnable()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/linj/album/view/MatrixImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/linj/album/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMode:I

    goto :goto_0
.end method

.method private isZoomChanged()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 229
    const/16 v3, 0x9

    new-array v1, v3, [F

    .line 230
    .local v1, "values":[F
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 232
    aget v0, v1, v2

    .line 234
    .local v0, "scale":F
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v3}, Lcom/linj/album/view/MatrixImageView;->access$3(Lcom/linj/album/view/MatrixImageView;)F

    move-result v3

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private reSetMatrix()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 351
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->checkRest()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v4}, Lcom/linj/album/view/MatrixImageView;->access$5(Lcom/linj/album/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 353
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Lcom/linj/album/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 357
    .local v2, "values":[F
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 358
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v3}, Lcom/linj/album/view/MatrixImageView;->access$4(Lcom/linj/album/view/MatrixImageView;)F

    move-result v3

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float v0, v3, v4

    .line 359
    .local v0, "height":F
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 362
    .local v1, "topMargin":F
    aget v3, v2, v5

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/linj/album/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 364
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    aget v5, v2, v5

    sub-float v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 365
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Lcom/linj/album/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private setZoomMatrix(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-direct {p0, p1}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v1

    .line 300
    .local v1, "endDis":F
    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 301
    iget v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    div-float v2, v1, v4

    .line 302
    .local v2, "scale":F
    iput v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    .line 303
    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/linj/album/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 304
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 305
    .local v3, "values":[F
    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 306
    invoke-direct {p0, v2, v3}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->checkMaxScale(F[F)F

    move-result v2

    .line 307
    invoke-direct {p0, v2, v3}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->getCenter(F[F)Landroid/graphics/PointF;

    move-result-object v0

    .line 308
    .local v0, "centerF":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 309
    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    iget-object v5, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Lcom/linj/album/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v0}, Lcom/linj/album/view/MatrixImageView;->access$1(Lcom/linj/album/view/MatrixImageView;)Lcom/linj/album/view/MatrixImageView$OnMovingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v0}, Lcom/linj/album/view/MatrixImageView;->access$1(Lcom/linj/album/view/MatrixImageView;)Lcom/linj/album/view/MatrixImageView$OnMovingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/linj/album/view/MatrixImageView$OnMovingListener;->startDrag()V

    .line 172
    :cond_0
    return-void
.end method

.method private stopDrag()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v0}, Lcom/linj/album/view/MatrixImageView;->access$1(Lcom/linj/album/view/MatrixImageView;)Lcom/linj/album/view/MatrixImageView$OnMovingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v0}, Lcom/linj/album/view/MatrixImageView;->access$1(Lcom/linj/album/view/MatrixImageView;)Lcom/linj/album/view/MatrixImageView$OnMovingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/linj/album/view/MatrixImageView$OnMovingListener;->stopDrag()V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleClick()V
    .locals 4

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->isZoomChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 414
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v2}, Lcom/linj/album/view/MatrixImageView;->access$5(Lcom/linj/album/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 415
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/linj/album/view/MatrixImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 416
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    iget-object v2, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/linj/album/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 417
    return-void

    .line 413
    .end local v0    # "scale":F
    :cond_0
    iget v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mDobleClickScale:F

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 163
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v0}, Lcom/linj/album/view/MatrixImageView;->access$0(Lcom/linj/album/view/MatrixImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0

    .line 132
    :pswitch_1
    iput v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 133
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 134
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->isMatrixEnable()V

    .line 135
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->startDrag()V

    .line 136
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->checkDragable()V

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->reSetMatrix()V

    .line 141
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    goto :goto_0

    .line 144
    :pswitch_3
    iget v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne v1, v3, :cond_1

    .line 145
    invoke-direct {p0, p2}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->setZoomMatrix(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 146
    :cond_1
    iget v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne v1, v0, :cond_2

    .line 147
    invoke-virtual {p0, p2}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->setDragMatrix(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    goto :goto_0

    .line 153
    :pswitch_4
    iget v1, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 154
    iput v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 155
    invoke-direct {p0, p2}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public setDragMatrix(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->isZoomChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v4

    .line 205
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 207
    .local v1, "dy":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 210
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/linj/album/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 211
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 212
    .local v2, "values":[F
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 213
    invoke-direct {p0, v2, v1}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->checkDyBound([FF)F

    move-result v1

    .line 214
    invoke-direct {p0, v2, v0, v1}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->checkDxBound([FFF)F

    move-result v0

    .line 216
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 217
    iget-object v3, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    iget-object v4, p0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Lcom/linj/album/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 222
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "values":[F
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->stopDrag()V

    goto :goto_0
.end method
