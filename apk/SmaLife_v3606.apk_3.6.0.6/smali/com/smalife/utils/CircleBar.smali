.class public Lcom/smalife/utils/CircleBar;
.super Landroid/view/View;
.source "CircleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/utils/CircleBar$BarAnimation;
    }
.end annotation


# instance fields
.field private Text_y:F

.field private anim:Lcom/smalife/utils/CircleBar$BarAnimation;

.field private circleStrokeWidth:F

.field private fnum:Ljava/text/DecimalFormat;

.field private mColorWheelPaint:Landroid/graphics/Paint;

.field private mColorWheelPaintCentre:Landroid/graphics/Paint;

.field private mColorWheelRectangle:Landroid/graphics/RectF;

.field private mDefaultWheelPaint:Landroid/graphics/Paint;

.field private mPercent:I

.field private mPercent_y:F

.field private mSweepAnglePer:F

.field private mTextP:Landroid/graphics/Paint;

.field private mTextch:Landroid/graphics/Paint;

.field private mTextnum:Landroid/graphics/Paint;

.field private pressExtraStrokeWidth:F

.field private stepnumber:I

.field private stepnumber_y:F

.field private stepnumbermax:I

.field private stepnumbernow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 27
    iput v1, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    .line 29
    const/16 v0, 0x28

    iput v0, p0, Lcom/smalife/utils/CircleBar;->stepnumbernow:I

    .line 32
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/smalife/utils/CircleBar;->stepnumbermax:I

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/smalife/utils/CircleBar;->init(Landroid/util/AttributeSet;ILandroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 27
    iput v1, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    .line 29
    const/16 v0, 0x28

    iput v0, p0, Lcom/smalife/utils/CircleBar;->stepnumbernow:I

    .line 32
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/smalife/utils/CircleBar;->stepnumbermax:I

    .line 43
    invoke-direct {p0, p2, v1, p1}, Lcom/smalife/utils/CircleBar;->init(Landroid/util/AttributeSet;ILandroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    .line 29
    const/16 v0, 0x28

    iput v0, p0, Lcom/smalife/utils/CircleBar;->stepnumbernow:I

    .line 32
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/smalife/utils/CircleBar;->stepnumbermax:I

    .line 48
    invoke-direct {p0, p2, p3, p1}, Lcom/smalife/utils/CircleBar;->init(Landroid/util/AttributeSet;ILandroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/utils/CircleBar;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/smalife/utils/CircleBar;->stepnumber:I

    return v0
.end method

.method static synthetic access$1(Lcom/smalife/utils/CircleBar;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/smalife/utils/CircleBar;->stepnumbermax:I

    return v0
.end method

.method static synthetic access$2(Lcom/smalife/utils/CircleBar;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/utils/CircleBar;F)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/smalife/utils/CircleBar;->mSweepAnglePer:F

    return-void
.end method

.method static synthetic access$4(Lcom/smalife/utils/CircleBar;I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/smalife/utils/CircleBar;->stepnumbernow:I

    return-void
.end method

.method private init(Landroid/util/AttributeSet;ILandroid/content/Context;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 52
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->fnum:Ljava/text/DecimalFormat;

    .line 53
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->fnum:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v6, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaintCentre:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaintCentre:Landroid/graphics/Paint;

    const/16 v1, 0x11

    const/16 v2, 0x75

    const/16 v3, 0xd5

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaintCentre:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaintCentre:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 64
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaintCentre:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mDefaultWheelPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mDefaultWheelPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v7, v1, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mDefaultWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mDefaultWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 70
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mDefaultWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextP:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextP:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextP:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextch:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextch:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mTextch:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    new-instance v0, Lcom/smalife/utils/CircleBar$BarAnimation;

    invoke-direct {v0, p0}, Lcom/smalife/utils/CircleBar$BarAnimation;-><init>(Lcom/smalife/utils/CircleBar;)V

    iput-object v0, p0, Lcom/smalife/utils/CircleBar;->anim:Lcom/smalife/utils/CircleBar$BarAnimation;

    .line 85
    return-void
.end method


# virtual methods
.method public Textscale(FF)F
    .locals 1
    .param p1, "n"    # F
    .param p2, "m"    # F

    .prologue
    .line 189
    const/high16 v0, 0x43fa0000    # 500.0f

    div-float v0, p1, v0

    mul-float/2addr v0, p2

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v7, 0x7f090060

    const v3, 0x43b38000    # 359.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 89
    iget-object v1, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/smalife/utils/CircleBar;->mDefaultWheelPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    iget-object v1, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 91
    iget-object v5, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaintCentre:Landroid/graphics/Paint;

    move-object v0, p1

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 92
    iget-object v1, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, p0, Lcom/smalife/utils/CircleBar;->mSweepAnglePer:F

    .line 93
    iget-object v5, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 94
    iget v0, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    if-ltz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    .line 99
    iget v3, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 97
    sub-float/2addr v1, v2

    .line 100
    iget-object v2, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 101
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    iget v4, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v6

    .line 100
    add-float/2addr v2, v3

    .line 102
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mTextP:Landroid/graphics/Paint;

    .line 95
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 104
    const-string v0, "%"

    .line 105
    iget-object v1, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    .line 107
    iget v3, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 105
    add-float/2addr v1, v2

    .line 108
    iget-object v2, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 109
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    iget v4, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v6

    .line 108
    add-float/2addr v2, v3

    .line 110
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p0}, Lcom/smalife/utils/CircleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 114
    iget-object v2, p0, Lcom/smalife/utils/CircleBar;->mTextch:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/smalife/utils/CircleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 115
    const/high16 v3, 0x40000000    # 2.0f

    .line 114
    div-float/2addr v2, v3

    .line 113
    sub-float/2addr v1, v2

    .line 115
    iget v2, p0, Lcom/smalife/utils/CircleBar;->Text_y:F

    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mTextch:Landroid/graphics/Paint;

    .line 111
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/smalife/utils/CircleBar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/smalife/utils/CircleBar;->getDefaultSize(II)I

    move-result v0

    .line 123
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/smalife/utils/CircleBar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, p1}, Lcom/smalife/utils/CircleBar;->getDefaultSize(II)I

    move-result v2

    .line 124
    .local v2, "width":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 125
    .local v1, "min":I
    invoke-virtual {p0, v1, v1}, Lcom/smalife/utils/CircleBar;->setMeasuredDimension(II)V

    .line 126
    const/high16 v3, 0x41200000    # 10.0f

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v3

    iput v3, p0, Lcom/smalife/utils/CircleBar;->circleStrokeWidth:F

    .line 127
    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {p0, v3, v4}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v3

    iput v3, p0, Lcom/smalife/utils/CircleBar;->pressExtraStrokeWidth:F

    .line 128
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v4, p0, Lcom/smalife/utils/CircleBar;->circleStrokeWidth:F

    iget v5, p0, Lcom/smalife/utils/CircleBar;->pressExtraStrokeWidth:F

    add-float/2addr v4, v5

    .line 129
    iget v5, p0, Lcom/smalife/utils/CircleBar;->circleStrokeWidth:F

    iget v6, p0, Lcom/smalife/utils/CircleBar;->pressExtraStrokeWidth:F

    add-float/2addr v5, v6

    int-to-float v6, v1

    .line 130
    iget v7, p0, Lcom/smalife/utils/CircleBar;->circleStrokeWidth:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/smalife/utils/CircleBar;->pressExtraStrokeWidth:F

    sub-float/2addr v6, v7

    int-to-float v7, v1

    .line 131
    iget v8, p0, Lcom/smalife/utils/CircleBar;->circleStrokeWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/smalife/utils/CircleBar;->pressExtraStrokeWidth:F

    sub-float/2addr v7, v8

    .line 128
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mTextP:Landroid/graphics/Paint;

    const/high16 v4, 0x43200000    # 160.0f

    int-to-float v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mTextnum:Landroid/graphics/Paint;

    const/high16 v4, 0x42a00000    # 80.0f

    int-to-float v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mTextch:Landroid/graphics/Paint;

    const/high16 v4, 0x41f00000    # 30.0f

    int-to-float v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    const/high16 v3, 0x433e0000    # 190.0f

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v3

    iput v3, p0, Lcom/smalife/utils/CircleBar;->mPercent_y:F

    .line 136
    const/high16 v3, 0x43a50000    # 330.0f

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v3

    iput v3, p0, Lcom/smalife/utils/CircleBar;->stepnumber_y:F

    .line 137
    const/high16 v3, 0x43c80000    # 400.0f

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v3

    iput v3, p0, Lcom/smalife/utils/CircleBar;->Text_y:F

    .line 138
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/smalife/utils/CircleBar;->circleStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaintCentre:Landroid/graphics/Paint;

    iget v4, p0, Lcom/smalife/utils/CircleBar;->circleStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v3, p0, Lcom/smalife/utils/CircleBar;->mDefaultWheelPaint:Landroid/graphics/Paint;

    .line 141
    iget v4, p0, Lcom/smalife/utils/CircleBar;->circleStrokeWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    int-to-float v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/smalife/utils/CircleBar;->Textscale(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    return-void
.end method

.method public setAnimationTime(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->anim:Lcom/smalife/utils/CircleBar$BarAnimation;

    iget v1, p0, Lcom/smalife/utils/CircleBar;->stepnumber:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/smalife/utils/CircleBar;->stepnumbermax:I

    div-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/smalife/utils/CircleBar$BarAnimation;->setDuration(J)V

    .line 245
    return-void
.end method

.method public setColor(III)V
    .locals 2
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/smalife/utils/CircleBar;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    return-void
.end method

.method public setMaxstepnumber(I)V
    .locals 0
    .param p1, "Maxstepnumber"    # I

    .prologue
    .line 213
    if-gtz p1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iput p1, p0, Lcom/smalife/utils/CircleBar;->stepnumbermax:I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 225
    return-void
.end method

.method public update(II)V
    .locals 2
    .param p1, "stepnumber"    # I
    .param p2, "time"    # I

    .prologue
    .line 201
    mul-int/lit8 v0, p1, 0x64

    iget v1, p0, Lcom/smalife/utils/CircleBar;->stepnumbermax:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/smalife/utils/CircleBar;->mPercent:I

    .line 202
    mul-int/lit16 v0, p1, 0x168

    iget v1, p0, Lcom/smalife/utils/CircleBar;->stepnumbermax:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/smalife/utils/CircleBar;->mSweepAnglePer:F

    .line 203
    iput p1, p0, Lcom/smalife/utils/CircleBar;->stepnumbernow:I

    .line 204
    invoke-virtual {p0}, Lcom/smalife/utils/CircleBar;->postInvalidate()V

    .line 205
    return-void
.end method
