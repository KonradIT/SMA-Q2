.class public Lcom/github/mikephil/charting/components/YAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "YAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/YAxis$AxisDependency;,
        Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    }
.end annotation


# instance fields
.field private mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field public mAxisMaximum:F

.field public mAxisMinimum:F

.field public mAxisRange:F

.field protected mCustomAxisMax:F

.field protected mCustomAxisMin:F

.field public mDecimals:I

.field private mDrawTopYLabelEntry:Z

.field public mEntries:[F

.field public mEntryCount:I

.field protected mForceLabels:Z

.field protected mInverted:Z

.field private mLabelCount:I

.field private mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field protected mShowOnlyMinMax:Z

.field protected mSpacePercentBottom:F

.field protected mSpacePercentTop:F

.field protected mStartAtZero:Z

.field protected mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x7fc00000    # NaNf

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 24
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 36
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 39
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 42
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 45
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mStartAtZero:Z

    .line 48
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mForceLabels:Z

    .line 51
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    .line 54
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    .line 59
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 64
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 66
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 67
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 70
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 73
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 94
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 95
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYOffset:F

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 6
    .param p1, "position"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x7fc00000    # NaNf

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 24
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 36
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 39
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 42
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 45
    iput-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mStartAtZero:Z

    .line 48
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mForceLabels:Z

    .line 51
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    .line 54
    iput v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    .line 59
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 64
    iput v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 66
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 67
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 70
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 73
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 100
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 101
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYOffset:F

    .line 102
    return-void
.end method


# virtual methods
.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getAxisMaxValue()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    return v0
.end method

.method public getAxisMinValue()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    return v0
.end method

.method public getFormattedLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 359
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 360
    :cond_0
    const-string v0, ""

    .line 362
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getValueFormatter()Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v1, v1, p1

    invoke-interface {v0, v1, p0}, Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/YAxis;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabelCount()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    return v0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method

.method public getLongestLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 338
    const-string v1, ""

    .line 340
    .local v1, "longest":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 347
    return-object v1

    .line 341
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 344
    move-object v1, v2

    .line 340
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRequiredHeightSpace(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 329
    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method public getRequiredWidthSpace(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 321
    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 323
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getXOffset()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public getSpaceBottom()F
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    return v0
.end method

.method public getSpaceTop()F
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    return v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;

    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDecimals:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    return-object v0
.end method

.method public isDrawTopYLabelEntryEnabled()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    return v0
.end method

.method public isForceLabelsEnabled()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mForceLabels:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    return v0
.end method

.method public isShowOnlyMinMaxEnabled()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    return v0
.end method

.method public isStartAtZeroEnabled()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mStartAtZero:Z

    return v0
.end method

.method public needsDefaultFormatter()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 399
    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    if-nez v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    instance-of v1, v1, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-nez v1, :cond_0

    .line 404
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsOffset()Z
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v0, v1, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetAxisMaxValue()V
    .locals 1

    .prologue
    .line 280
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    .line 281
    return-void
.end method

.method public resetAxisMinValue()V
    .locals 1

    .prologue
    .line 258
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    .line 259
    return-void
.end method

.method public setAxisMaxValue(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 272
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:F

    .line 273
    return-void
.end method

.method public setAxisMinValue(F)V
    .locals 0
    .param p1, "min"    # F

    .prologue
    .line 250
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:F

    .line 251
    return-void
.end method

.method public setDrawTopYLabelEntry(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 141
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 209
    return-void
.end method

.method public setLabelCount(IZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "force"    # Z

    .prologue
    .line 155
    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    .line 156
    const/16 p1, 0x19

    .line 157
    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 158
    const/4 p1, 0x2

    .line 160
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mLabelCount:I

    .line 161
    iput-boolean p2, p0, Lcom/github/mikephil/charting/components/YAxis;->mForceLabels:Z

    .line 162
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 122
    return-void
.end method

.method public setShowOnlyMinMax(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mShowOnlyMinMax:Z

    .line 190
    return-void
.end method

.method public setSpaceBottom(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 307
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 308
    return-void
.end method

.method public setSpaceTop(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 289
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 290
    return-void
.end method

.method public setStartAtZero(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mStartAtZero:Z

    .line 227
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;)V
    .locals 2
    .param p1, "f"    # Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;

    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDecimals:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultYAxisValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    .line 378
    :goto_0
    return-void

    .line 377
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYAxisValueFormatter:Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;

    goto :goto_0
.end method
