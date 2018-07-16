.class public Lcom/github/mikephil/charting/charts/HorizontalBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "HorizontalBarChart.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected calcModulus()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 162
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 163
    .local v0, "values":[F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 165
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getXValCount()I

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    .line 166
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentHeight()F

    move-result v3

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    div-float/2addr v1, v3

    float-to-double v4, v1

    .line 165
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    .line 168
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    if-ge v1, v6, :cond_0

    .line 169
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iput v6, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisLabelModulus:I

    .line 170
    :cond_0
    return-void
.end method

.method public calculateOffsets()V
    .locals 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 62
    const/4 v2, 0x0

    .local v2, "offsetLeft":F
    const/4 v3, 0x0

    .local v3, "offsetRight":F
    const/4 v4, 0x0

    .local v4, "offsetTop":F
    const/4 v1, 0x0

    .line 65
    .local v1, "offsetBottom":F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v7, v8, :cond_6

    .line 69
    :cond_0
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 70
    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v8

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    add-float/2addr v3, v7

    .line 103
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredHeightSpace(Landroid/graphics/Paint;)F

    move-result v7

    add-float/2addr v4, v7

    .line 107
    :cond_2
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 108
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredHeightSpace(Landroid/graphics/Paint;)F

    move-result v7

    add-float/2addr v1, v7

    .line 111
    :cond_3
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v7, v7, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    int-to-float v5, v7

    .line 113
    .local v5, "xlabelwidth":F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 116
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v7, v8, :cond_c

    .line 118
    add-float/2addr v2, v5

    .line 131
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getExtraTopOffset()F

    move-result v7

    add-float/2addr v4, v7

    .line 132
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getExtraRightOffset()F

    move-result v7

    add-float/2addr v3, v7

    .line 133
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getExtraBottomOffset()F

    move-result v7

    add-float/2addr v1, v7

    .line 134
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getExtraLeftOffset()F

    move-result v7

    add-float/2addr v2, v7

    .line 136
    iget v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mMinOffset:F

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    .line 138
    .local v0, "minOffset":F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 139
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 140
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 141
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 138
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 144
    iget-boolean v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLogEnabled:Z

    if-eqz v7, :cond_5

    .line 145
    const-string v7, "MPAndroidChart"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "offsetLeft: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", offsetTop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", offsetRight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", offsetBottom: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 146
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v7, "MPAndroidChart"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Content: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->prepareOffsetMatrix()V

    .line 151
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->prepareValuePxMatrix()V

    .line 152
    return-void

    .line 72
    .end local v0    # "minOffset":F
    .end local v5    # "xlabelwidth":F
    :cond_6
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v7, v8, :cond_7

    .line 73
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v7, v8, :cond_8

    .line 75
    :cond_7
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 76
    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v8

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    add-float/2addr v2, v7

    .line 78
    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v7, v8, :cond_9

    .line 79
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v7, v8, :cond_9

    .line 80
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v7, v8, :cond_a

    .line 85
    :cond_9
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    mul-float v6, v7, v10

    .line 87
    .local v6, "yOffset":F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    add-float/2addr v7, v6

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    add-float/2addr v1, v7

    .line 89
    goto/16 :goto_0

    .end local v6    # "yOffset":F
    :cond_a
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v7, v8, :cond_b

    .line 90
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-eq v7, v8, :cond_b

    .line 91
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->ABOVE_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    if-ne v7, v8, :cond_1

    .line 96
    :cond_b
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    mul-float v6, v7, v10

    .line 98
    .restart local v6    # "yOffset":F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    add-float/2addr v7, v6

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    add-float/2addr v4, v7

    goto/16 :goto_0

    .line 120
    .end local v6    # "yOffset":F
    .restart local v5    # "xlabelwidth":F
    :cond_c
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v7, v8, :cond_d

    .line 122
    add-float/2addr v3, v5

    .line 124
    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v7

    sget-object v8, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v7, v8, :cond_4

    .line 126
    add-float/2addr v2, v5

    .line 127
    add-float/2addr v3, v5

    goto/16 :goto_1
.end method

.method public getBarBounds(Lcom/github/mikephil/charting/data/BarEntry;)Landroid/graphics/RectF;
    .locals 12
    .param p1, "e"    # Lcom/github/mikephil/charting/data/BarEntry;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 175
    iget-object v10, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v10, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v10, p1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 177
    .local v5, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    if-nez v5, :cond_0

    .line 178
    const/4 v2, 0x0

    .line 195
    :goto_0
    return-object v2

    .line 180
    :cond_0
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v0

    .line 181
    .local v0, "barspace":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v9

    .line 182
    .local v9, "y":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v10

    int-to-float v8, v10

    .line 184
    .local v8, "x":F
    const/high16 v10, 0x40000000    # 2.0f

    div-float v6, v0, v10

    .line 186
    .local v6, "spaceHalf":F
    sub-float v10, v8, v11

    add-float v7, v10, v6

    .line 187
    .local v7, "top":F
    add-float v10, v8, v11

    sub-float v1, v10, v6

    .line 188
    .local v1, "bottom":F
    cmpl-float v10, v9, v4

    if-ltz v10, :cond_2

    move v3, v9

    .line 189
    .local v3, "left":F
    :goto_1
    cmpg-float v10, v9, v4

    if-gtz v10, :cond_1

    move v4, v9

    .line 191
    .local v4, "right":F
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v7, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 193
    .local v2, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    goto :goto_0

    .end local v2    # "bounds":Landroid/graphics/RectF;
    .end local v3    # "left":F
    .end local v4    # "right":F
    :cond_2
    move v3, v4

    .line 188
    goto :goto_1
.end method

.method public getHighestVisibleXIndex()I
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 254
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    int-to-float v2, v3

    .line 255
    .local v2, "step":F
    cmpg-float v3, v2, v0

    if-gtz v3, :cond_0

    .line 257
    .local v0, "div":F
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v4

    aput v4, v1, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v3

    aput v3, v1, v5

    .line 259
    .local v1, "pts":[F
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 260
    aget v3, v1, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getXChartMax()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getXChartMax()F

    move-result v3

    div-float/2addr v3, v0

    :goto_1
    float-to-int v3, v3

    return v3

    .line 255
    .end local v0    # "div":F
    .end local v1    # "pts":[F
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v3

    add-float v0, v2, v3

    goto :goto_0

    .line 260
    .restart local v0    # "div":F
    .restart local v1    # "pts":[F
    :cond_1
    aget v3, v1, v5

    div-float/2addr v3, v0

    goto :goto_1
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mDataNotSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    invoke-virtual {v0, p2, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    goto :goto_0
.end method

.method public getLowestVisibleXIndex()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 237
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    int-to-float v2, v3

    .line 238
    .local v2, "step":F
    cmpg-float v3, v2, v4

    if-gtz v3, :cond_0

    move v0, v4

    .line 240
    .local v0, "div":F
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [F

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v6

    aput v6, v1, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v3

    aput v3, v1, v7

    .line 242
    .local v1, "pts":[F
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 243
    aget v3, v1, v7

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    move v3, v5

    :goto_1
    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 238
    .end local v0    # "div":F
    .end local v1    # "pts":[F
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v3

    add-float v0, v2, v3

    goto :goto_0

    .line 243
    .restart local v0    # "div":F
    .restart local v1    # "pts":[F
    :cond_1
    aget v3, v1, v7

    div-float/2addr v3, v0

    goto :goto_1
.end method

.method public getPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Landroid/graphics/PointF;
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    if-nez p1, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 208
    :goto_0
    return-object v1

    .line 204
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v3

    .line 206
    .local v0, "vals":[F
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 208
    new-instance v1, Landroid/graphics/PointF;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarChart;->init()V

    .line 48
    new-instance v0, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 49
    new-instance v0, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/TransformerHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 51
    new-instance v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 52
    new-instance v0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    .line 54
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 55
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 56
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/BarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 57
    return-void
.end method

.method protected prepareValuePxMatrix()V
    .locals 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    iget v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mDeltaX:F

    iget v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXChartMin:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 157
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    iget v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mDeltaX:F

    iget v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->mXChartMin:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 158
    return-void
.end method
