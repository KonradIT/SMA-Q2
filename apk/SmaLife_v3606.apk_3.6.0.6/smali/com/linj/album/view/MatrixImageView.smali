.class public Lcom/linj/album/view/MatrixImageView;
.super Landroid/widget/ImageView;
.source "MatrixImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/album/view/MatrixImageView$GestureListener;,
        Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;,
        Lcom/linj/album/view/MatrixImageView$OnMovingListener;,
        Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MatrixImageView"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageHeight:F

.field private mImageWidth:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mScale:F

.field private moveListener:Lcom/linj/album/view/MatrixImageView$OnMovingListener;

.field private singleTapListener:Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/linj/album/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;

    invoke-direct {v0, p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;-><init>(Lcom/linj/album/view/MatrixImageView;)V

    .line 52
    .local v0, "mListener":Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;
    invoke-virtual {p0, v0}, Lcom/linj/album/view/MatrixImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/linj/album/view/MatrixImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/linj/album/view/MatrixImageView$GestureListener;

    invoke-direct {v3, p0, v0}, Lcom/linj/album/view/MatrixImageView$GestureListener;-><init>(Lcom/linj/album/view/MatrixImageView;Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/linj/album/view/MatrixImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 55
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/linj/album/view/MatrixImageView;->setBackgroundColor(I)V

    .line 57
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/linj/album/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/linj/album/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;

    invoke-direct {v0, p0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;-><init>(Lcom/linj/album/view/MatrixImageView;)V

    .line 42
    .local v0, "mListener":Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;
    invoke-virtual {p0, v0}, Lcom/linj/album/view/MatrixImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/linj/album/view/MatrixImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/linj/album/view/MatrixImageView$GestureListener;

    invoke-direct {v3, p0, v0}, Lcom/linj/album/view/MatrixImageView$GestureListener;-><init>(Lcom/linj/album/view/MatrixImageView;Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/linj/album/view/MatrixImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 45
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/linj/album/view/MatrixImageView;->setBackgroundColor(I)V

    .line 47
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/linj/album/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/linj/album/view/MatrixImageView;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/linj/album/view/MatrixImageView;)Lcom/linj/album/view/MatrixImageView$OnMovingListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView;->moveListener:Lcom/linj/album/view/MatrixImageView$OnMovingListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/linj/album/view/MatrixImageView;)F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/linj/album/view/MatrixImageView;->mImageWidth:F

    return v0
.end method

.method static synthetic access$3(Lcom/linj/album/view/MatrixImageView;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/linj/album/view/MatrixImageView;->mScale:F

    return v0
.end method

.method static synthetic access$4(Lcom/linj/album/view/MatrixImageView;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/linj/album/view/MatrixImageView;->mImageHeight:F

    return v0
.end method

.method static synthetic access$5(Lcom/linj/album/view/MatrixImageView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$6(Lcom/linj/album/view/MatrixImageView;)Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView;->singleTapListener:Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/linj/album/view/MatrixImageView;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView;->initData()V

    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/linj/album/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 93
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 94
    .local v0, "values":[F
    iget-object v1, p0, Lcom/linj/album/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 96
    invoke-virtual {p0}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    aget v2, v0, v4

    div-float/2addr v1, v2

    iput v1, p0, Lcom/linj/album/view/MatrixImageView;->mImageWidth:F

    .line 97
    invoke-virtual {p0}, Lcom/linj/album/view/MatrixImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x4

    aget v2, v0, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/linj/album/view/MatrixImageView;->mImageHeight:F

    .line 98
    aget v1, v0, v4

    iput v1, p0, Lcom/linj/album/view/MatrixImageView;->mScale:F

    .line 99
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    invoke-virtual {p0}, Lcom/linj/album/view/MatrixImageView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/linj/album/view/MatrixImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 72
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/linj/album/view/MatrixImageView$1;

    invoke-direct {v1, p0}, Lcom/linj/album/view/MatrixImageView$1;-><init>(Lcom/linj/album/view/MatrixImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 85
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/linj/album/view/MatrixImageView;->initData()V

    goto :goto_0
.end method

.method public setOnMovingListener(Lcom/linj/album/view/MatrixImageView$OnMovingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/linj/album/view/MatrixImageView$OnMovingListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/linj/album/view/MatrixImageView;->moveListener:Lcom/linj/album/view/MatrixImageView$OnMovingListener;

    .line 61
    return-void
.end method

.method public setOnSingleTapListener(Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;)V
    .locals 0
    .param p1, "onSingleTapListener"    # Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/linj/album/view/MatrixImageView;->singleTapListener:Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    .line 64
    return-void
.end method
