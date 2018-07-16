.class public Lcom/tencent/connect/avatar/c;
.super Landroid/widget/ImageView;
.source "ProGuard"


# instance fields
.field final a:Ljava/lang/String;

.field public b:Z

.field private c:Landroid/graphics/Matrix;

.field private d:Landroid/graphics/Matrix;

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:F

.field private k:F

.field private l:Landroid/graphics/PointF;

.field private m:Landroid/graphics/PointF;

.field private n:F

.field private o:F

.field private p:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    .line 28
    iput v2, p0, Lcom/tencent/connect/avatar/c;->e:I

    .line 29
    iput v1, p0, Lcom/tencent/connect/avatar/c;->f:F

    .line 30
    iput v1, p0, Lcom/tencent/connect/avatar/c;->g:F

    .line 32
    iput-boolean v2, p0, Lcom/tencent/connect/avatar/c;->i:Z

    .line 34
    const-string v0, "TouchView"

    iput-object v0, p0, Lcom/tencent/connect/avatar/c;->a:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/avatar/c;->l:Landroid/graphics/PointF;

    .line 37
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    .line 38
    iput v1, p0, Lcom/tencent/connect/avatar/c;->n:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/connect/avatar/c;->o:F

    .line 41
    iput-boolean v2, p0, Lcom/tencent/connect/avatar/c;->b:Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    .line 52
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/c;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 53
    invoke-direct {p0}, Lcom/tencent/connect/avatar/c;->a()V

    .line 54
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 95
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 113
    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 114
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 115
    const/4 v2, 0x2

    aget v2, v0, v2

    .line 116
    const/4 v3, 0x5

    aget v3, v0, v3

    .line 117
    const/4 v4, 0x0

    aget v0, v0, v4

    .line 118
    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 119
    iget-object v5, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 120
    mul-float/2addr v4, v0

    .line 121
    mul-float/2addr v5, v0

    .line 122
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    .line 123
    cmpg-float v6, v0, v1

    if-gtz v6, :cond_1

    move v0, v1

    .line 126
    :cond_1
    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 127
    cmpg-float v4, v2, v1

    if-gtz v4, :cond_2

    move v2, v1

    .line 130
    :cond_2
    add-float/2addr v2, v0

    .line 131
    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    .line 132
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v4, v0, v2

    .line 133
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v2, v0, v3

    .line 134
    add-float v0, v3, v5

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 135
    cmpg-float v3, v2, v1

    if-gtz v3, :cond_3

    move v2, v1

    .line 138
    :cond_3
    cmpg-float v3, v0, v1

    if-gtz v3, :cond_4

    .line 141
    :goto_1
    add-float v0, v2, v1

    .line 142
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    .line 143
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 144
    invoke-virtual {p1, v4, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/c;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tencent/connect/avatar/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/c;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/tencent/connect/avatar/c;->i:Z

    return p1
.end method

.method private b()V
    .locals 12

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    .line 206
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    .line 208
    const/16 v0, 0x9

    new-array v6, v0, [F

    .line 209
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 210
    const/4 v0, 0x2

    aget v3, v6, v0

    .line 211
    const/4 v0, 0x5

    aget v2, v6, v0

    .line 212
    const/4 v0, 0x0

    aget v7, v6, v0

    .line 213
    const/4 v0, 0x0

    .line 214
    iget v1, p0, Lcom/tencent/connect/avatar/c;->f:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_2

    .line 215
    iget v0, p0, Lcom/tencent/connect/avatar/c;->f:F

    div-float/2addr v0, v7

    iput v0, p0, Lcom/tencent/connect/avatar/c;->o:F

    .line 216
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/tencent/connect/avatar/c;->o:F

    iget v2, p0, Lcom/tencent/connect/avatar/c;->o:F

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 217
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 218
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/tencent/connect/avatar/c;->o:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/tencent/connect/avatar/c;->o:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 267
    :goto_1
    if-eqz v0, :cond_0

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/connect/avatar/c;->i:Z

    .line 269
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 270
    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/c;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/connect/avatar/c$1;

    invoke-direct {v1, p0}, Lcom/tencent/connect/avatar/c$1;-><init>(Lcom/tencent/connect/avatar/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 221
    :cond_2
    iget v1, p0, Lcom/tencent/connect/avatar/c;->g:F

    cmpg-float v1, v7, v1

    if-gez v1, :cond_3

    .line 222
    iget v0, p0, Lcom/tencent/connect/avatar/c;->g:F

    div-float/2addr v0, v7

    iput v0, p0, Lcom/tencent/connect/avatar/c;->o:F

    .line 223
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/tencent/connect/avatar/c;->o:F

    iget v2, p0, Lcom/tencent/connect/avatar/c;->o:F

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 224
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/tencent/connect/avatar/c;->o:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/tencent/connect/avatar/c;->o:F

    iget-object v5, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_1

    .line 227
    :cond_3
    const/4 v1, 0x0

    .line 228
    iget-object v8, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    .line 229
    iget-object v9, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v7, v9

    .line 230
    iget-object v9, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v9, v3

    .line 231
    iget-object v10, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, v2

    .line 232
    const/4 v11, 0x0

    cmpg-float v11, v9, v11

    if-gez v11, :cond_4

    .line 233
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    .line 234
    const/4 v1, 0x1

    .line 236
    :cond_4
    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_5

    .line 237
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    .line 238
    const/4 v1, 0x1

    .line 240
    :cond_5
    sub-float v9, v8, v9

    .line 241
    sub-float v10, v7, v10

    .line 243
    cmpg-float v9, v9, v4

    if-gez v9, :cond_6

    .line 244
    sub-float v1, v8, v4

    .line 245
    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 246
    const/4 v1, 0x1

    .line 248
    :cond_6
    cmpg-float v4, v10, v5

    if-gez v4, :cond_7

    .line 249
    sub-float v1, v7, v5

    .line 250
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 251
    const/4 v1, 0x1

    .line 253
    :cond_7
    if-eqz v1, :cond_8

    .line 254
    const/4 v0, 0x2

    aget v0, v6, v0

    sub-float v1, v0, v3

    .line 255
    const/4 v0, 0x5

    aget v0, v6, v0

    sub-float v4, v0, v2

    .line 256
    const/4 v0, 0x2

    aput v3, v6, v0

    .line 257
    const/4 v0, 0x5

    aput v2, v6, v0

    .line 258
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 259
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 260
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_1

    .line 263
    :cond_8
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/tencent/connect/avatar/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_1
.end method

.method private c()V
    .locals 7

    .prologue
    const/high16 v6, 0x45000000    # 2048.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 294
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 297
    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 298
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 299
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 302
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/tencent/connect/avatar/c;->j:F

    .line 304
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/tencent/connect/avatar/c;->k:F

    .line 306
    const/4 v2, 0x2

    iget v3, p0, Lcom/tencent/connect/avatar/c;->j:F

    aput v3, v0, v2

    .line 307
    const/4 v2, 0x5

    iget v3, p0, Lcom/tencent/connect/avatar/c;->k:F

    aput v3, v0, v2

    .line 308
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v1, v0, v3

    aput v1, v0, v2

    .line 309
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 310
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v6, v0

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v6, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/connect/avatar/c;->f:F

    .line 315
    iput v1, p0, Lcom/tencent/connect/avatar/c;->g:F

    .line 316
    iget v0, p0, Lcom/tencent/connect/avatar/c;->f:F

    iget v1, p0, Lcom/tencent/connect/avatar/c;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 317
    iget v0, p0, Lcom/tencent/connect/avatar/c;->g:F

    iput v0, p0, Lcom/tencent/connect/avatar/c;->f:F

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    .line 103
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/tencent/connect/avatar/c;->c()V

    .line 106
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v4, 0x1

    .line 150
    iget-boolean v0, p0, Lcom/tencent/connect/avatar/c;->i:Z

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return v4

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_1
    :goto_1
    :pswitch_0
    iput-boolean v4, p0, Lcom/tencent/connect/avatar/c;->b:Z

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/tencent/connect/avatar/c;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 157
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->l:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 159
    iput v4, p0, Lcom/tencent/connect/avatar/c;->e:I

    goto :goto_1

    .line 163
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/tencent/connect/avatar/c;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/tencent/connect/avatar/c;->n:F

    .line 164
    iget v0, p0, Lcom/tencent/connect/avatar/c;->n:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/tencent/connect/avatar/c;->a(Landroid/graphics/PointF;)V

    .line 167
    iput v3, p0, Lcom/tencent/connect/avatar/c;->e:I

    goto :goto_1

    .line 173
    :pswitch_3
    invoke-direct {p0}, Lcom/tencent/connect/avatar/c;->b()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/connect/avatar/c;->e:I

    goto :goto_1

    .line 178
    :pswitch_4
    iget v0, p0, Lcom/tencent/connect/avatar/c;->e:I

    if-ne v0, v4, :cond_2

    .line 179
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->l:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->l:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 182
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 183
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 184
    :cond_2
    iget v0, p0, Lcom/tencent/connect/avatar/c;->e:I

    if-ne v0, v3, :cond_1

    .line 185
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/tencent/connect/avatar/c;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 187
    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 189
    iget v1, p0, Lcom/tencent/connect/avatar/c;->n:F

    div-float/2addr v0, v1

    .line 190
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/avatar/c;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    .line 86
    :cond_0
    return-void
.end method
