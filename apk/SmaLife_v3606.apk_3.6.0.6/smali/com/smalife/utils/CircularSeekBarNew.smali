.class public Lcom/smalife/utils/CircularSeekBarNew;
.super Landroid/view/View;
.source "CircularSeekBarNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;
    }
.end annotation


# instance fields
.field private CALLED_FROM_ANGLE:Z

.field private IS_PRESSED:Z

.field private SHOW_SEEKBAR:Z

.field private adjustmentFactor:F

.field private angle:I

.field private barWidth:I

.field private bottom:F

.field private cirX:F

.field private cirY:F

.field private circleColor:Landroid/graphics/Paint;

.field private circleRing:Landroid/graphics/Paint;

.field private cx:F

.field private cy:F

.field private dx:F

.field private dy:F

.field private height:I

.field private innerColor:Landroid/graphics/Paint;

.field private innerRadius:F

.field private left:F

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;

.field private markPointX:F

.field private markPointY:F

.field private maxProgress:I

.field private outerRadius:F

.field private progress:I

.field private progressMark:Landroid/graphics/Bitmap;

.field private progressMarkPressed:Landroid/graphics/Bitmap;

.field private progressPercent:I

.field private rect:Landroid/graphics/RectF;

.field private right:F

.field private startAngle:I

.field private startPointX:F

.field private startPointY:F

.field private top:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x78

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    iput v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    .line 41
    const/16 v0, 0x10e

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->startAngle:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->barWidth:I

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->maxProgress:I

    .line 114
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->adjustmentFactor:F

    .line 123
    iput-boolean v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->IS_PRESSED:Z

    .line 129
    iput-boolean v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->CALLED_FROM_ANGLE:Z

    .line 131
    iput-boolean v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->SHOW_SEEKBAR:Z

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->rect:Landroid/graphics/RectF;

    .line 137
    new-instance v0, Lcom/smalife/utils/CircularSeekBarNew$1;

    invoke-direct {v0, p0}, Lcom/smalife/utils/CircularSeekBarNew$1;-><init>(Lcom/smalife/utils/CircularSeekBarNew;)V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->mListener:Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    .line 147
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    const/16 v1, 0x8c

    const/16 v2, 0xff

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    iput-object p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->initDrawable()V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0x78

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    .line 41
    const/16 v0, 0x10e

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->startAngle:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->barWidth:I

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->maxProgress:I

    .line 114
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->adjustmentFactor:F

    .line 123
    iput-boolean v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->IS_PRESSED:Z

    .line 129
    iput-boolean v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->CALLED_FROM_ANGLE:Z

    .line 131
    iput-boolean v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->SHOW_SEEKBAR:Z

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->rect:Landroid/graphics/RectF;

    .line 137
    new-instance v0, Lcom/smalife/utils/CircularSeekBarNew$1;

    invoke-direct {v0, p0}, Lcom/smalife/utils/CircularSeekBarNew$1;-><init>(Lcom/smalife/utils/CircularSeekBarNew;)V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->mListener:Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    .line 147
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    const/16 v1, 0x8c

    const/16 v2, 0xff

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iput-object p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->initDrawable()V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v6, 0x78

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    .line 41
    const/16 v0, 0x10e

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->startAngle:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->barWidth:I

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->maxProgress:I

    .line 114
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->adjustmentFactor:F

    .line 123
    iput-boolean v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->IS_PRESSED:Z

    .line 129
    iput-boolean v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->CALLED_FROM_ANGLE:Z

    .line 131
    iput-boolean v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->SHOW_SEEKBAR:Z

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->rect:Landroid/graphics/RectF;

    .line 137
    new-instance v0, Lcom/smalife/utils/CircularSeekBarNew$1;

    invoke-direct {v0, p0}, Lcom/smalife/utils/CircularSeekBarNew$1;-><init>(Lcom/smalife/utils/CircularSeekBarNew;)V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->mListener:Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    .line 147
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    const/16 v1, 0x8c

    const/16 v2, 0xff

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iput-object p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->initDrawable()V

    .line 180
    return-void
.end method

.method private moved(FFZ)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "up"    # Z

    .prologue
    .line 539
    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    sub-float v4, p2, v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 540
    .local v1, "distance":F
    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    iget v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->adjustmentFactor:F

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerRadius:F

    iget v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->adjustmentFactor:F

    sub-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    if-nez p3, :cond_1

    .line 541
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->IS_PRESSED:Z

    .line 543
    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    float-to-double v2, v2

    iget v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    float-to-double v4, v4

    iget v6, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    sub-float v6, p1, v6

    float-to-double v6, v6

    iget v8, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    sub-float/2addr v8, p2

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->markPointX:F

    .line 544
    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    float-to-double v2, v2

    iget v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    float-to-double v4, v4

    iget v6, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    sub-float v6, p1, v6

    float-to-double v6, v6

    iget v8, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    sub-float/2addr v8, p2

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->markPointY:F

    .line 546
    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    iget v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    sub-float/2addr v4, p2

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v2, v2

    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v2, v4

    double-to-float v0, v2

    .line 548
    .local v0, "degrees":F
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 549
    float-to-double v2, v0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 552
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/smalife/utils/CircularSeekBarNew;->setAngle(I)V

    .line 553
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->invalidate()V

    .line 560
    .end local v0    # "degrees":F
    :goto_0
    return-void

    .line 556
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->IS_PRESSED:Z

    .line 557
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public ShowSeekBar()V
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->SHOW_SEEKBAR:Z

    .line 586
    return-void
.end method

.method public drawMarkerAtProgress(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->IS_PRESSED:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressMarkPressed:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->dx:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->dy:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressMark:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->dx:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->dy:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAdjustmentFactor()F
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->adjustmentFactor:F

    return v0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->barWidth:I

    return v0
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->maxProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->progress:I

    return v0
.end method

.method public getProgressPercent()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressPercent:I

    return v0
.end method

.method public getSeekBarChangeListener()Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->mListener:Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;

    return-object v0
.end method

.method public getXFromAngle()F
    .locals 6

    .prologue
    .line 299
    iget-object v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressMark:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 300
    .local v1, "size1":I
    iget-object v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressMarkPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 301
    .local v2, "size2":I
    if-le v1, v2, :cond_0

    move v0, v1

    .line 302
    .local v0, "adjust":I
    :goto_0
    iget v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->markPointX:F

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 303
    .local v3, "x":F
    return v3

    .end local v0    # "adjust":I
    .end local v3    # "x":F
    :cond_0
    move v0, v2

    .line 301
    goto :goto_0
.end method

.method public getYFromAngle()F
    .locals 6

    .prologue
    .line 313
    iget-object v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressMark:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 314
    .local v1, "size1":I
    iget-object v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressMarkPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 315
    .local v2, "size2":I
    if-le v1, v2, :cond_0

    move v0, v1

    .line 316
    .local v0, "adjust":I
    :goto_0
    iget v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->markPointY:F

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 317
    .local v3, "y":F
    return v3

    .end local v0    # "adjust":I
    .end local v3    # "y":F
    :cond_0
    move v0, v2

    .line 315
    goto :goto_0
.end method

.method public hideSeekBar()V
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->SHOW_SEEKBAR:Z

    .line 593
    return-void
.end method

.method public initDrawable()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020182

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressMark:Landroid/graphics/Bitmap;

    .line 213
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    const v1, 0x7f020183

    .line 213
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressMarkPressed:Landroid/graphics/Bitmap;

    .line 215
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 268
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    iget-object v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 269
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->startAngle:I

    int-to-float v2, v0

    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 270
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerRadius:F

    iget-object v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 272
    iget-boolean v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->SHOW_SEEKBAR:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/smalife/utils/CircularSeekBarNew;->drawMarkerAtProgress(Landroid/graphics/Canvas;)V

    .line 275
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 276
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 224
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 225
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/smalife/utils/CircularSeekBarNew;->getDefaultSize(II)I

    move-result v1

    .line 226
    div-int/lit8 v1, v1, 0x2

    .line 225
    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->height:I

    .line 227
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/smalife/utils/CircularSeekBarNew;->getDefaultSize(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->width:I

    .line 229
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->width:I

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->height:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->height:I

    .line 234
    .local v0, "size":I
    :goto_0
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->width:I

    int-to-float v1, v1

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    .line 235
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->width:I

    int-to-float v1, v1

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    .line 236
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    .line 238
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->barWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerRadius:F

    .line 240
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->left:F

    .line 241
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->right:F

    .line 242
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->top:F

    .line 243
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->bottom:F

    .line 245
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cx:F

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->startPointX:F

    .line 246
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cy:F

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->startPointY:F

    .line 247
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->startPointX:F

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->markPointX:F

    .line 248
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->startPointY:F

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->markPointY:F

    .line 251
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->getXFromAngle()F

    move-result v1

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cirX:F

    .line 252
    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->getYFromAngle()F

    move-result v1

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cirY:F

    .line 255
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cirX:F

    float-to-double v2, v1

    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    float-to-double v4, v1

    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    rsub-int/lit8 v1, v1, 0x5a

    int-to-double v6, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->dx:F

    .line 256
    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->cirY:F

    float-to-double v2, v1

    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->outerRadius:F

    float-to-double v4, v1

    iget v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    rsub-int/lit8 v1, v1, 0x5a

    int-to-double v6, v1

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->dy:F

    .line 258
    iget-object v1, p0, Lcom/smalife/utils/CircularSeekBarNew;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->left:F

    iget v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->top:F

    iget v4, p0, Lcom/smalife/utils/CircularSeekBarNew;->right:F

    iget v5, p0, Lcom/smalife/utils/CircularSeekBarNew;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 259
    return-void

    .line 229
    .end local v0    # "size":I
    :cond_0
    iget v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->width:I

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 511
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 512
    .local v2, "y":F
    const/4 v0, 0x0

    .line 513
    .local v0, "up":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 525
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 515
    :pswitch_0
    invoke-direct {p0, v1, v2, v0}, Lcom/smalife/utils/CircularSeekBarNew;->moved(FFZ)V

    goto :goto_0

    .line 518
    :pswitch_1
    invoke-direct {p0, v1, v2, v0}, Lcom/smalife/utils/CircularSeekBarNew;->moved(FFZ)V

    goto :goto_0

    .line 521
    :pswitch_2
    const/4 v0, 0x1

    .line 522
    invoke-direct {p0, v1, v2, v0}, Lcom/smalife/utils/CircularSeekBarNew;->moved(FFZ)V

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdjustmentFactor(F)V
    .locals 0
    .param p1, "adjustmentFactor"    # F

    .prologue
    .line 578
    iput p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->adjustmentFactor:F

    .line 579
    return-void
.end method

.method public setAngle(I)V
    .locals 5
    .param p1, "angle"    # I

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 336
    iput p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    .line 337
    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->angle:I

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    mul-float v0, v2, v4

    .line 338
    .local v0, "donePercent":F
    div-float v2, v0, v4

    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->getMaxProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 339
    .local v1, "progress":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/smalife/utils/CircularSeekBarNew;->setProgressPercent(I)V

    .line 340
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->CALLED_FROM_ANGLE:Z

    .line 341
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/smalife/utils/CircularSeekBarNew;->setProgress(I)V

    .line 342
    return-void
.end method

.method public setBackGroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 490
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0
    .param p1, "barWidth"    # I

    .prologue
    .line 379
    iput p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->barWidth:I

    .line 380
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 422
    iput p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->maxProgress:I

    .line 423
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 441
    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->progress:I

    if-eq v2, p1, :cond_1

    .line 442
    iput p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->progress:I

    .line 443
    iget-boolean v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->CALLED_FROM_ANGLE:Z

    if-nez v2, :cond_0

    .line 444
    iget v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->progress:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/smalife/utils/CircularSeekBarNew;->maxProgress:I

    div-int v1, v2, v3

    .line 445
    .local v1, "newPercent":I
    mul-int/lit16 v2, v1, 0x168

    div-int/lit8 v0, v2, 0x64

    .line 446
    .local v0, "newAngle":I
    invoke-virtual {p0, v0}, Lcom/smalife/utils/CircularSeekBarNew;->setAngle(I)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/smalife/utils/CircularSeekBarNew;->setProgressPercent(I)V

    .line 449
    .end local v0    # "newAngle":I
    .end local v1    # "newPercent":I
    :cond_0
    iget-object v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->mListener:Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;

    invoke-virtual {p0}, Lcom/smalife/utils/CircularSeekBarNew;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;->onProgressChange(Lcom/smalife/utils/CircularSeekBarNew;I)V

    .line 450
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/smalife/utils/CircularSeekBarNew;->CALLED_FROM_ANGLE:Z

    .line 452
    :cond_1
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    return-void
.end method

.method public setProgressPercent(I)V
    .locals 0
    .param p1, "progressPercent"    # I

    .prologue
    .line 470
    iput p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->progressPercent:I

    .line 471
    return-void
.end method

.method public setRingBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/smalife/utils/CircularSeekBarNew;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    return-void
.end method

.method public setSeekBarChangeListener(Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/smalife/utils/CircularSeekBarNew;->mListener:Lcom/smalife/utils/CircularSeekBarNew$OnSeekChangeListener;

    .line 352
    return-void
.end method
