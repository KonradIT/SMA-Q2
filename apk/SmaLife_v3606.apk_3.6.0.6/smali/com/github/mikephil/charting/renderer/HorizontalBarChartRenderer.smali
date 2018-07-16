.class public Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "HorizontalBarChartRenderer.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 32
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/BarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    .line 53
    .local v11, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarShadowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 56
    .local v9, "phaseX":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 58
    .local v10, "phaseY":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v7

    .line 61
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v6, v0, p3

    .line 62
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    invoke-virtual {v6, v9, v10}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 63
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarSpace(F)V

    .line 64
    invoke-virtual {v6, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 65
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 67
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Ljava/util/List;)V

    .line 69
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 71
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-lt v8, v0, :cond_1

    .line 92
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :goto_1
    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    .line 82
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v1, v8, 0x4

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    .line 90
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 89
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "valueText"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 262
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 263
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->passesCheck()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v5

    .line 101
    .local v5, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    const/high16 v31, 0x40a00000    # 5.0f

    invoke-static/range {v31 .. v31}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v26

    .line 102
    .local v26, "valueOffsetPlus":F
    const/16 v19, 0x0

    .line 103
    .local v19, "posOffset":F
    const/16 v17, 0x0

    .line 104
    .local v17, "negOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v6

    .line 106
    .local v6, "drawValueAboveBar":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v31

    move/from16 v0, v31

    if-lt v12, v0, :cond_1

    .line 259
    .end local v5    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    .end local v6    # "drawValueAboveBar":Z
    .end local v12    # "i":I
    .end local v17    # "negOffset":F
    .end local v19    # "posOffset":F
    .end local v26    # "valueOffsetPlus":F
    :cond_0
    return-void

    .line 108
    .restart local v5    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarDataSet;>;"
    .restart local v6    # "drawValueAboveBar":Z
    .restart local v12    # "i":I
    .restart local v17    # "negOffset":F
    .restart local v19    # "posOffset":F
    .restart local v26    # "valueOffsetPlus":F
    :cond_1
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 110
    .local v4, "dataSet":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarDataSet;->isDrawValuesEnabled()Z

    move-result v31

    if-eqz v31, :cond_2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryCount()I

    move-result v31

    if-nez v31, :cond_3

    .line 106
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 113
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v31, v0

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v14

    .line 116
    .local v14, "isInverted":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    const-string v32, "10"

    invoke-static/range {v31 .. v32}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v11, v31, v32

    .line 119
    .local v11, "halfTextHeight":F
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v10

    .line 121
    .local v10, "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    move-object/from16 v31, v0

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v21

    .line 123
    .local v21, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v8

    .line 125
    .local v8, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8, v12}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Ljava/util/List;I)[F

    move-result-object v27

    .line 128
    .local v27, "valuePoints":[F
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v31

    if-nez v31, :cond_a

    .line 130
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v33

    mul-float v32, v32, v33

    cmpg-float v31, v31, v32

    if-gez v31, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    add-int/lit8 v32, v15, 0x1

    aget v32, v27, v32

    invoke-virtual/range {v31 .. v32}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    aget v32, v27, v15

    invoke-virtual/range {v31 .. v32}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v31

    if-nez v31, :cond_5

    .line 130
    :cond_4
    :goto_2
    add-int/lit8 v15, v15, 0x2

    goto :goto_1

    .line 138
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    add-int/lit8 v32, v15, 0x1

    aget v32, v27, v32

    invoke-virtual/range {v31 .. v32}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 141
    div-int/lit8 v31, v15, 0x2

    move/from16 v0, v31

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 142
    .local v7, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v23

    .line 143
    .local v23, "val":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    move/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v10, v0, v7, v12, v1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v0, v9}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v28, v0

    .line 147
    .local v28, "valueTextWidth":F
    if-eqz v6, :cond_7

    move/from16 v19, v26

    .line 148
    :goto_3
    if-eqz v6, :cond_8

    add-float v31, v28, v26

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v17, v0

    .line 150
    :goto_4
    if-eqz v14, :cond_6

    .line 151
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v31, v0

    sub-float v19, v31, v28

    .line 152
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v31, v0

    sub-float v17, v31, v28

    .line 155
    :cond_6
    aget v32, v27, v15

    const/16 v31, 0x0

    cmpl-float v31, v23, v31

    if-ltz v31, :cond_9

    move/from16 v31, v19

    :goto_5
    add-float v31, v31, v32

    .line 156
    add-int/lit8 v32, v15, 0x1

    aget v32, v27, v32

    add-float v32, v32, v11

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_2

    .line 147
    :cond_7
    add-float v31, v28, v26

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v19, v0

    goto :goto_3

    :cond_8
    move/from16 v17, v26

    .line 148
    goto :goto_4

    :cond_9
    move/from16 v31, v17

    .line 155
    goto :goto_5

    .line 162
    .end local v7    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v9    # "formattedValue":Ljava/lang/String;
    .end local v15    # "j":I
    .end local v23    # "val":F
    .end local v28    # "valueTextWidth":F
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_6
    int-to-float v0, v15

    move/from16 v31, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v33

    mul-float v32, v32, v33

    cmpg-float v31, v31, v32

    if-gez v31, :cond_2

    .line 164
    div-int/lit8 v31, v15, 0x2

    move/from16 v0, v31

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 166
    .restart local v7    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v24

    .line 171
    .local v24, "vals":[F
    if-nez v24, :cond_11

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    add-int/lit8 v32, v15, 0x1

    aget v32, v27, v32

    invoke-virtual/range {v31 .. v32}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    aget v32, v27, v15

    invoke-virtual/range {v31 .. v32}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v31

    if-nez v31, :cond_c

    .line 162
    :cond_b
    :goto_7
    add-int/lit8 v15, v15, 0x2

    goto :goto_6

    .line 179
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    add-int/lit8 v32, v15, 0x1

    aget v32, v27, v32

    invoke-virtual/range {v31 .. v32}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 182
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v23

    .line 183
    .restart local v23    # "val":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    move/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v10, v0, v7, v12, v1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v9

    .line 186
    .restart local v9    # "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v0, v9}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v28, v0

    .line 187
    .restart local v28    # "valueTextWidth":F
    if-eqz v6, :cond_e

    move/from16 v19, v26

    .line 188
    :goto_8
    if-eqz v6, :cond_f

    add-float v31, v28, v26

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v17, v0

    .line 190
    :goto_9
    if-eqz v14, :cond_d

    .line 191
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v31, v0

    sub-float v19, v31, v28

    .line 192
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v31, v0

    sub-float v17, v31, v28

    .line 195
    :cond_d
    aget v32, v27, v15

    .line 196
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v31

    const/16 v33, 0x0

    cmpl-float v31, v31, v33

    if-ltz v31, :cond_10

    move/from16 v31, v19

    :goto_a
    add-float v31, v31, v32

    .line 197
    add-int/lit8 v32, v15, 0x1

    aget v32, v27, v32

    add-float v32, v32, v11

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_7

    .line 187
    :cond_e
    add-float v31, v28, v26

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v19, v0

    goto :goto_8

    :cond_f
    move/from16 v17, v26

    .line 188
    goto :goto_9

    :cond_10
    move/from16 v31, v17

    .line 196
    goto :goto_a

    .line 201
    .end local v9    # "formattedValue":Ljava/lang/String;
    .end local v23    # "val":F
    .end local v28    # "valueTextWidth":F
    :cond_11
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 203
    .local v22, "transformed":[F
    const/16 v20, 0x0

    .line 204
    .local v20, "posY":F
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v18, v0

    .line 206
    .local v18, "negY":F
    const/16 v16, 0x0

    .local v16, "k":I
    const/4 v13, 0x0

    .local v13, "idx":I
    :goto_b
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_14

    .line 222
    invoke-virtual/range {v21 .. v22}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 224
    const/16 v16, 0x0

    :goto_c
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 226
    div-int/lit8 v31, v16, 0x2

    aget v23, v24, v31

    .line 227
    .restart local v23    # "val":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    move/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v10, v0, v7, v12, v1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .restart local v9    # "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v0, v9}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v28, v0

    .line 231
    .restart local v28    # "valueTextWidth":F
    if-eqz v6, :cond_16

    move/from16 v19, v26

    .line 232
    :goto_d
    if-eqz v6, :cond_17

    add-float v31, v28, v26

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v17, v0

    .line 234
    :goto_e
    if-eqz v14, :cond_12

    .line 235
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v31, v0

    sub-float v19, v31, v28

    .line 236
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v31, v0

    sub-float v17, v31, v28

    .line 239
    :cond_12
    aget v32, v22, v16

    .line 240
    const/16 v31, 0x0

    cmpl-float v31, v23, v31

    if-ltz v31, :cond_18

    move/from16 v31, v19

    .line 239
    :goto_f
    add-float v29, v32, v31

    .line 241
    .local v29, "x":F
    add-int/lit8 v31, v15, 0x1

    aget v30, v27, v31

    .line 243
    .local v30, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v31

    if-nez v31, :cond_19

    .line 224
    :cond_13
    :goto_10
    add-int/lit8 v16, v16, 0x2

    goto :goto_c

    .line 208
    .end local v9    # "formattedValue":Ljava/lang/String;
    .end local v23    # "val":F
    .end local v28    # "valueTextWidth":F
    .end local v29    # "x":F
    .end local v30    # "y":F
    :cond_14
    aget v25, v24, v13

    .line 211
    .local v25, "value":F
    const/16 v31, 0x0

    cmpl-float v31, v25, v31

    if-ltz v31, :cond_15

    .line 212
    add-float v20, v20, v25

    .line 213
    move/from16 v30, v20

    .line 219
    .restart local v30    # "y":F
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v31

    mul-float v31, v31, v30

    aput v31, v22, v16

    .line 206
    add-int/lit8 v16, v16, 0x2

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 215
    .end local v30    # "y":F
    :cond_15
    move/from16 v30, v18

    .line 216
    .restart local v30    # "y":F
    sub-float v18, v18, v25

    goto :goto_11

    .line 231
    .end local v25    # "value":F
    .end local v30    # "y":F
    .restart local v9    # "formattedValue":Ljava/lang/String;
    .restart local v23    # "val":F
    .restart local v28    # "valueTextWidth":F
    :cond_16
    add-float v31, v28, v26

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v19, v0

    goto :goto_d

    :cond_17
    move/from16 v17, v26

    .line 232
    goto :goto_e

    :cond_18
    move/from16 v31, v17

    .line 240
    goto :goto_f

    .line 249
    .restart local v29    # "x":F
    .restart local v30    # "y":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 252
    add-float v31, v30, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_10
.end method

.method public getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Ljava/util/List;I)[F
    .locals 2
    .param p1, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p3, "dataSetIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/utils/Transformer;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;I)[F"
        }
    .end annotation

    .prologue
    .line 282
    .line 283
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 282
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesHorizontalBarChart(Ljava/util/List;ILcom/github/mikephil/charting/data/BarData;F)[F

    move-result-object v0

    return-object v0
.end method

.method public initBuffers()V
    .locals 9

    .prologue
    .line 38
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 39
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 47
    return-void

    .line 42
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 43
    .local v2, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->getStackSize()I

    move-result v6

    mul-int/2addr v5, v6

    .line 44
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    .line 45
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v7

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;-><init>(IFIZ)V

    .line 43
    aput-object v4, v3, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected passesCheck()Z
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getYValCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    .line 289
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    .line 288
    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "barspaceHalf"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 269
    sub-float v4, p1, v5

    add-float v3, v4, p4

    .line 270
    .local v3, "top":F
    add-float v4, p1, v5

    sub-float v0, v4, p4

    .line 271
    .local v0, "bottom":F
    move v1, p2

    .line 272
    .local v1, "left":F
    move v2, p3

    .line 274
    .local v2, "right":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 276
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    invoke-virtual {p5, v4, v5}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixelHorizontal(Landroid/graphics/RectF;F)V

    .line 277
    return-void
.end method
