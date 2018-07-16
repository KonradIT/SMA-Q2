.class public Lcom/smalife/utils/CircularSeekBar;
.super Landroid/view/View;
.source "CircularSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/utils/CircularSeekBar$OnCircleSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final STATE_ANGLE:Ljava/lang/String; = "angle"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"


# instance fields
.field private arc_finish_radians:I

.field private block_end:Z

.field private block_start:Z

.field private color_attr:Ljava/lang/String;

.field private conversion:I

.field private end_wheel:I

.field private init_position:I

.field private lastX:F

.field private last_radians:I

.field private mAngle:F

.field private mArcColor:Landroid/graphics/Paint;

.field private mColorCenterHalo:Landroid/graphics/Paint;

.field private mColorCenterHaloRectangle:Landroid/graphics/RectF;

.field private mColorWheelPaint:Landroid/graphics/Paint;

.field private mColorWheelRadius:F

.field private mColorWheelRectangle:Landroid/graphics/RectF;

.field private final mColorWheelStrokeWidth:I

.field private mOnCircleSeekBarChangeListener:Lcom/smalife/utils/CircularSeekBar$OnCircleSeekBarChangeListener;

.field private mPointerColor:Landroid/graphics/Paint;

.field private mPointerHaloPaint:Landroid/graphics/Paint;

.field private final mPointerRadius:I

.field private mTranslationOffset:F

.field private mUserIsMovingPointer:Z

.field private max:I

.field private pointerBitmap:Landroid/graphics/Bitmap;

.field private pointerPosition:[F

.field private pointer_color_attr:Ljava/lang/String;

.field private pointer_halo_color_attr:Ljava/lang/String;

.field private s:Landroid/graphics/SweepGradient;

.field private show_text:Z

.field private start_arc:I

.field private text:Ljava/lang/String;

.field private wheel_color_attr:Ljava/lang/String;

.field private wheel_unactive_color_attr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelStrokeWidth:I

    .line 61
    const/16 v0, 0x50

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerRadius:I

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 73
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->mUserIsMovingPointer:Z

    .line 87
    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->conversion:I

    .line 88
    const/16 v0, 0x64

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->max:I

    .line 95
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->block_end:Z

    .line 97
    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->last_radians:I

    .line 98
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->block_start:Z

    .line 100
    const/16 v0, 0x10e

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 102
    const/16 v0, 0x87

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorCenterHaloRectangle:Landroid/graphics/RectF;

    .line 110
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->show_text:Z

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smalife/utils/CircularSeekBar;->init(Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelStrokeWidth:I

    .line 61
    const/16 v0, 0x50

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerRadius:I

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 73
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->mUserIsMovingPointer:Z

    .line 87
    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->conversion:I

    .line 88
    const/16 v0, 0x64

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->max:I

    .line 95
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->block_end:Z

    .line 97
    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->last_radians:I

    .line 98
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->block_start:Z

    .line 100
    const/16 v0, 0x10e

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 102
    const/16 v0, 0x87

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorCenterHaloRectangle:Landroid/graphics/RectF;

    .line 110
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->show_text:Z

    .line 119
    invoke-direct {p0, p2, v1}, Lcom/smalife/utils/CircularSeekBar;->init(Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelStrokeWidth:I

    .line 61
    const/16 v0, 0x50

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerRadius:I

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 73
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->mUserIsMovingPointer:Z

    .line 87
    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->conversion:I

    .line 88
    const/16 v0, 0x64

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->max:I

    .line 95
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->block_end:Z

    .line 97
    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->last_radians:I

    .line 98
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->block_start:Z

    .line 100
    const/16 v0, 0x10e

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 102
    const/16 v0, 0x87

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->mColorCenterHaloRectangle:Landroid/graphics/RectF;

    .line 110
    iput-boolean v1, p0, Lcom/smalife/utils/CircularSeekBar;->show_text:Z

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/smalife/utils/CircularSeekBar;->init(Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method private calculateAngleFromRadians(I)F
    .locals 4
    .param p1, "radians"    # I

    .prologue
    .line 349
    add-int/lit16 v0, p1, 0x10e

    int-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calculateAngleFromText(I)D
    .locals 10
    .param p1, "position"    # I

    .prologue
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 324
    if-eqz p1, :cond_0

    iget v6, p0, Lcom/smalife/utils/CircularSeekBar;->max:I

    if-lt p1, v6, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-wide v0

    .line 327
    :cond_1
    iget v6, p0, Lcom/smalife/utils/CircularSeekBar;->max:I

    int-to-double v6, v6

    int-to-double v8, p1

    div-double v2, v6, v8

    .line 329
    .local v2, "f":D
    const-wide v6, 0x4076800000000000L    # 360.0

    div-double v4, v6, v2

    .line 331
    .local v4, "f_r":D
    add-double/2addr v0, v4

    .line 333
    .local v0, "ang":D
    goto :goto_0
.end method

.method private calculatePointerPosition(F)[F
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 417
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 418
    .local v0, "x":F
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 419
    .local v1, "y":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private calculateRadiansFromAngle(F)I
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 338
    float-to-double v2, p1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 339
    .local v1, "unit":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 340
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 342
    :cond_0
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x43870000    # 270.0f

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 343
    .local v0, "radians":I
    if-gez v0, :cond_1

    .line 344
    add-int/lit16 v0, v0, 0x168

    .line 345
    :cond_1
    return v0
.end method

.method private calculateTextFromAngle(F)I
    .locals 4
    .param p1, "angle"    # F

    .prologue
    .line 308
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    int-to-float v2, v2

    sub-float v1, p1, v2

    .line 310
    .local v1, "m":F
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v2, v1

    .line 312
    .local v0, "f":F
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->max:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method private calculateTextFromStartAngle(F)I
    .locals 4
    .param p1, "angle"    # F

    .prologue
    .line 316
    move v1, p1

    .line 318
    .local v1, "m":F
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v2, v1

    .line 320
    .local v0, "f":F
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->max:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0x8c

    const/16 v5, 0x78

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    sget-object v2, Lcom/smalife/watch/R$styleable;->HoloCircleSeekBar:[I

    .line 128
    invoke-virtual {v1, p1, v2, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/smalife/utils/CircularSeekBar;->initAttributes(Landroid/content/res/TypedArray;)V

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->s:Landroid/graphics/SweepGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorCenterHalo:Landroid/graphics/Paint;

    .line 143
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorCenterHalo:Landroid/graphics/Paint;

    invoke-static {v4, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorCenterHalo:Landroid/graphics/Paint;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-static {v4, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020183

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->pointerBitmap:Landroid/graphics/Bitmap;

    .line 152
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerColor:Landroid/graphics/Paint;

    .line 153
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerColor:Landroid/graphics/Paint;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerColor:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mArcColor:Landroid/graphics/Paint;

    .line 160
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mArcColor:Landroid/graphics/Paint;

    invoke-static {v4, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mArcColor:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mArcColor:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->init_position:I

    invoke-direct {p0, v1}, Lcom/smalife/utils/CircularSeekBar;->calculateAngleFromText(I)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, -0x5a

    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 166
    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    if-le v1, v2, :cond_0

    .line 167
    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 168
    :cond_0
    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/smalife/utils/CircularSeekBar;->calculateAngleFromRadians(I)F

    move-result v1

    iput v1, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    .line 170
    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/smalife/utils/CircularSeekBar;->calculateTextFromAngle(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->text:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->invalidate()V

    .line 173
    return-void

    .line 169
    :cond_1
    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    goto :goto_0
.end method

.method private initAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 177
    const/4 v0, 0x2

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->max:I

    .line 179
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->color_attr:Ljava/lang/String;

    .line 181
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->wheel_color_attr:Ljava/lang/String;

    .line 183
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->wheel_unactive_color_attr:Ljava/lang/String;

    .line 185
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->pointer_color_attr:Ljava/lang/String;

    .line 187
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->pointer_halo_color_attr:Ljava/lang/String;

    .line 189
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 191
    const/4 v0, 0x6

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 194
    const/4 v0, 0x7

    .line 193
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->init_position:I

    .line 196
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    .line 197
    const/4 v0, 0x5

    const/16 v1, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    .line 199
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smalife/utils/CircularSeekBar;->show_text:Z

    .line 201
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->last_radians:I

    .line 203
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->init_position:I

    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    if-ge v0, v1, :cond_0

    .line 204
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/smalife/utils/CircularSeekBar;->calculateTextFromStartAngle(F)I

    move-result v0

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->init_position:I

    .line 206
    :cond_0
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->init_position:I

    invoke-direct {p0, v0}, Lcom/smalife/utils/CircularSeekBar;->calculateAngleFromText(I)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    .line 208
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->color_attr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->color_attr:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->color_attr:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->wheel_color_attr:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->wheel_color_attr:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 225
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->wheel_unactive_color_attr:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 227
    :try_start_2
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->wheel_unactive_color_attr:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 234
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->pointer_color_attr:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 236
    :try_start_3
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->pointer_color_attr:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 243
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->pointer_halo_color_attr:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 245
    :try_start_4
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->pointer_halo_color_attr:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    :cond_5
    :goto_4
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_4

    .line 237
    :catch_1
    move-exception v0

    goto :goto_3

    .line 228
    :catch_2
    move-exception v0

    goto :goto_2

    .line 220
    :catch_3
    move-exception v0

    goto :goto_1

    .line 211
    :catch_4
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->conversion:I

    return v0
.end method

.method public initAngle(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 277
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 278
    const v0, 0x4096cbe4

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    .line 282
    :goto_0
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    invoke-direct {p0, v0}, Lcom/smalife/utils/CircularSeekBar;->calculateRadiansFromAngle(F)I

    move-result v0

    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 283
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->invalidate()V

    .line 284
    return-void

    .line 280
    :cond_0
    iput p1, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 256
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->mTranslationOffset:F

    iget v1, p0, Lcom/smalife/utils/CircularSeekBar;->mTranslationOffset:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    add-int/lit16 v0, v0, 0x10e

    int-to-float v2, v0

    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    .line 260
    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 259
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 263
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    add-int/lit16 v0, v0, 0x10e

    int-to-float v2, v0

    .line 264
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    if-le v0, v3, :cond_0

    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    sub-int/2addr v0, v3

    :goto_0
    int-to-float v3, v0

    .line 265
    iget-object v5, p0, Lcom/smalife/utils/CircularSeekBar;->mArcColor:Landroid/graphics/Paint;

    move-object v0, p1

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 267
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->pointerPosition:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->pointerPosition:[F

    aget v1, v1, v6

    .line 268
    const/high16 v2, 0x40800000    # 4.0f

    iget-object v3, p0, Lcom/smalife/utils/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 267
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 271
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBar;->pointerBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBar;->pointerPosition:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->pointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 272
    iget-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->pointerPosition:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/smalife/utils/CircularSeekBar;->pointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    return-void

    .line 265
    :cond_0
    iget v0, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->start_arc:I

    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 287
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/smalife/utils/CircularSeekBar;->getDefaultSize(II)I

    move-result v0

    .line 289
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, p1}, Lcom/smalife/utils/CircularSeekBar;->getDefaultSize(II)I

    move-result v2

    .line 290
    .local v2, "width":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 291
    .local v1, "min":I
    invoke-virtual {p0, v1, v1}, Lcom/smalife/utils/CircularSeekBar;->setMeasuredDimension(II)V

    .line 293
    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/smalife/utils/CircularSeekBar;->mTranslationOffset:F

    .line 294
    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->mTranslationOffset:F

    const/high16 v4, 0x42a00000    # 80.0f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    .line 296
    iget-object v3, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v4, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    neg-float v4, v4

    iget v5, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    neg-float v5, v5

    .line 297
    iget v6, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    iget v7, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    .line 296
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    iget-object v3, p0, Lcom/smalife/utils/CircularSeekBar;->mColorCenterHaloRectangle:Landroid/graphics/RectF;

    iget v4, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    neg-float v4, v4

    div-float/2addr v4, v8

    .line 300
    iget v5, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    neg-float v5, v5

    div-float/2addr v5, v8

    iget v6, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    div-float/2addr v6, v8

    .line 301
    iget v7, p0, Lcom/smalife/utils/CircularSeekBar;->mColorWheelRadius:F

    div-float/2addr v7, v8

    .line 299
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 303
    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    invoke-direct {p0, v3}, Lcom/smalife/utils/CircularSeekBar;->calculatePointerPosition(F)[F

    move-result-object v3

    iput-object v3, p0, Lcom/smalife/utils/CircularSeekBar;->pointerPosition:[F

    .line 305
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 435
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 437
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 438
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 440
    const-string v2, "angle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    .line 441
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    invoke-direct {p0, v2}, Lcom/smalife/utils/CircularSeekBar;->calculateRadiansFromAngle(F)I

    move-result v2

    iput v2, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 442
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/smalife/utils/CircularSeekBar;->calculateTextFromAngle(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->text:Ljava/lang/String;

    .line 443
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    invoke-direct {p0, v2}, Lcom/smalife/utils/CircularSeekBar;->calculatePointerPosition(F)[F

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->pointerPosition:[F

    .line 445
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 424
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 426
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v0, "state":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 428
    const-string v2, "angle"

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 430
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->mTranslationOffset:F

    sub-float v0, v2, v3

    .line 360
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->mTranslationOffset:F

    sub-float v1, v2, v3

    .line 362
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 402
    :cond_1
    iput v0, p0, Lcom/smalife/utils/CircularSeekBar;->lastX:F

    .line 403
    return v6

    .line 365
    :pswitch_1
    float-to-double v2, v1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    .line 367
    iput-boolean v7, p0, Lcom/smalife/utils/CircularSeekBar;->block_end:Z

    .line 368
    iput-boolean v7, p0, Lcom/smalife/utils/CircularSeekBar;->block_start:Z

    .line 369
    iput-boolean v6, p0, Lcom/smalife/utils/CircularSeekBar;->mUserIsMovingPointer:Z

    .line 371
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    invoke-direct {p0, v2}, Lcom/smalife/utils/CircularSeekBar;->calculateRadiansFromAngle(F)I

    move-result v2

    iput v2, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 373
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    iget v3, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    if-le v2, v3, :cond_2

    .line 374
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->end_wheel:I

    iput v2, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 375
    iput-boolean v6, p0, Lcom/smalife/utils/CircularSeekBar;->block_end:Z

    .line 378
    :cond_2
    iget-boolean v2, p0, Lcom/smalife/utils/CircularSeekBar;->block_end:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/smalife/utils/CircularSeekBar;->block_start:Z

    if-nez v2, :cond_3

    .line 379
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/smalife/utils/CircularSeekBar;->calculateTextFromAngle(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->text:Ljava/lang/String;

    .line 380
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    invoke-direct {p0, v2}, Lcom/smalife/utils/CircularSeekBar;->calculatePointerPosition(F)[F

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->pointerPosition:[F

    .line 381
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->invalidate()V

    .line 385
    :cond_3
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    invoke-direct {p0, v2}, Lcom/smalife/utils/CircularSeekBar;->calculateRadiansFromAngle(F)I

    move-result v2

    iput v2, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    .line 386
    iget v2, p0, Lcom/smalife/utils/CircularSeekBar;->arc_finish_radians:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/smalife/utils/CircularSeekBar;->calculateTextFromAngle(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->text:Ljava/lang/String;

    .line 387
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBar;->invalidate()V

    .line 388
    iget-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->mOnCircleSeekBarChangeListener:Lcom/smalife/utils/CircularSeekBar$OnCircleSeekBarChangeListener;

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/smalife/utils/CircularSeekBar;->mOnCircleSeekBarChangeListener:Lcom/smalife/utils/CircularSeekBar$OnCircleSeekBarChangeListener;

    .line 390
    iget-object v3, p0, Lcom/smalife/utils/CircularSeekBar;->text:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/smalife/utils/CircularSeekBar;->mAngle:F

    .line 389
    invoke-interface {v2, p0, v3, v6, v4}, Lcom/smalife/utils/CircularSeekBar$OnCircleSeekBarChangeListener;->onProgressChanged(Lcom/smalife/utils/CircularSeekBar;IZF)V

    goto/16 :goto_0

    .line 396
    :pswitch_2
    iput-boolean v7, p0, Lcom/smalife/utils/CircularSeekBar;->mUserIsMovingPointer:Z

    goto/16 :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Lcom/smalife/utils/CircularSeekBar$OnCircleSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smalife/utils/CircularSeekBar$OnCircleSeekBarChangeListener;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/smalife/utils/CircularSeekBar;->mOnCircleSeekBarChangeListener:Lcom/smalife/utils/CircularSeekBar$OnCircleSeekBarChangeListener;

    .line 449
    return-void
.end method
