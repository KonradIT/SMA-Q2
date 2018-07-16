.class public Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "CandleStickChartRenderer.java"


# instance fields
.field private mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

.field private mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/CandleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 32
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 33
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    .line 34
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 54
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    return-void

    .line 54
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 56
    .local v1, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 57
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/CandleDataSet;)V

    goto :goto_0
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/CandleDataSet;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/CandleDataSet;

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v27

    .line 65
    .local v27, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v22

    .line 66
    .local v22, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v23

    .line 68
    .local v23, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/data/CandleData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v16

    .line 70
    .local v16, "dataSetIndex":I
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getYVals()Ljava/util/List;

    move-result-object v18

    .line 72
    .local v18, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    const/4 v9, 0x0

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 73
    .local v21, "minx":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMaxX:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 75
    .local v20, "maxx":I
    sub-int v4, v20, v21

    mul-int/lit8 v24, v4, 0x4

    .line 76
    .local v24, "range":I
    sub-int v4, v20, v21

    int-to-float v4, v4

    mul-float v4, v4, v22

    move/from16 v0, v21

    int-to-float v9, v0

    add-float/2addr v4, v9

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v26, v0

    .line 78
    .local v26, "to":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    aget-object v15, v4, v16

    .line 79
    .local v15, "bodyBuffer":Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getBodySpace()F

    move-result v4

    invoke-virtual {v15, v4}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->setBodySpace(F)V

    .line 80
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->setPhases(FF)V

    .line 81
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->limitFrom(I)V

    .line 82
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->limitTo(I)V

    .line 83
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->feed(Ljava/util/List;)V

    .line 85
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 87
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    aget-object v25, v4, v16

    .line 88
    .local v25, "shadowBuffer":Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;
    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->setPhases(FF)V

    .line 89
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->limitFrom(I)V

    .line 90
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->limitTo(I)V

    .line 91
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->feed(Ljava/util/List;)V

    .line 93
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowWidth()F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 179
    return-void

    .line 101
    :cond_0
    div-int/lit8 v4, v19, 0x4

    add-int v4, v4, v21

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 103
    .local v17, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    int-to-float v9, v9

    move/from16 v0, v26

    int-to-float v10, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v10}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->fitsBounds(FFF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    :goto_1
    add-int/lit8 v19, v19, 0x4

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColorSameAsCandle()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 108
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_3

    .line 109
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    .line 111
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v4

    .line 109
    :goto_2
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    aget v5, v4, v19

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v19, 0x1

    aget v6, v4, v9

    .line 141
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v19, 0x2

    aget v7, v4, v9

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v19, 0x3

    aget v8, v4, v9

    .line 142
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    .line 140
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 144
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    aget v5, v4, v19

    .line 145
    .local v5, "leftBody":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v19, 0x1

    aget v8, v4, v9

    .line 146
    .local v8, "open":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v19, 0x2

    aget v7, v4, v9

    .line 147
    .local v7, "rightBody":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v19, 0x3

    aget v6, v4, v9

    .line 150
    .local v6, "close":F
    cmpl-float v4, v8, v6

    if-lez v4, :cond_a

    .line 152
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_9

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v19, 0x4

    add-int v9, v9, v21

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 112
    .end local v5    # "leftBody":F
    .end local v6    # "close":F
    .end local v7    # "rightBody":F
    .end local v8    # "open":F
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v4

    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v9

    cmpg-float v4, v4, v9

    if-gez v4, :cond_5

    .line 116
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_4

    .line 118
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v4

    .line 116
    :goto_5
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 119
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v4

    goto :goto_5

    .line 123
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_6

    .line 125
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v4

    .line 123
    :goto_6
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 126
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    goto :goto_6

    .line 130
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_8

    .line 132
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v4

    .line 130
    :goto_7
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 133
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v4

    goto :goto_7

    .line 155
    .restart local v5    # "leftBody":F
    .restart local v6    # "close":F
    .restart local v7    # "rightBody":F
    .restart local v8    # "open":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getDecreasingColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 162
    :cond_a
    cmpg-float v4, v8, v6

    if-gez v4, :cond_c

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_b

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v19, 0x4

    add-int v9, v9, v21

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/CandleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 167
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getIncreasingColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 175
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getShadowColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 272
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, p2

    if-lt v2, v10, :cond_0

    .line 310
    return-void

    .line 279
    :cond_0
    aget-object v10, p2, v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v8

    .line 282
    .local v8, "xIndex":I
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v10

    .line 283
    aget-object v11, p2, v2

    invoke-virtual {v11}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v11

    .line 282
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 285
    .local v7, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->isHighlightEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 277
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 290
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v10

    if-ne v10, v8, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float v3, v10, v11

    .line 294
    .local v3, "low":F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float v1, v10, v11

    .line 295
    .local v1, "high":F
    add-float v10, v3, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v9, v10, v11

    .line 297
    .local v9, "y":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getYChartMin()F

    move-result v5

    .line 298
    .local v5, "min":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getYChartMax()F

    move-result v4

    .line 301
    .local v4, "max":F
    const/4 v10, 0x2

    new-array v6, v10, [F

    const/4 v10, 0x0

    .line 302
    int-to-float v11, v8

    aput v11, v6, v10

    const/4 v10, 0x1

    aput v9, v6, v10

    .line 305
    .local v6, "pts":[F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 308
    invoke-virtual {p0, p1, v6, v7}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;)V

    goto :goto_1
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleData;->getYValCount()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getMaxVisibleCount()I

    move-result v4

    int-to-float v4, v4

    .line 225
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v7

    mul-float/2addr v4, v7

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v16

    .line 229
    .local v16, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleDataSet;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-lt v12, v3, :cond_1

    .line 268
    .end local v12    # "i":I
    .end local v16    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleDataSet;>;"
    :cond_0
    return-void

    .line 231
    .restart local v12    # "i":I
    .restart local v16    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleDataSet;>;"
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 233
    .local v15, "dataSet":Lcom/github/mikephil/charting/data/CandleDataSet;
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/CandleDataSet;->isDrawValuesEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/CandleDataSet;->getEntryCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 229
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 237
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/CandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    .line 241
    .local v1, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/CandleDataSet;->getYVals()Ljava/util/List;

    move-result-object v2

    .line 243
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 244
    .local v5, "minx":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMaxX:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 247
    .local v6, "maxx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    .line 246
    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesCandle(Ljava/util/List;FFII)[F

    move-result-object v18

    .line 249
    .local v18, "positions":[F
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v20

    .line 251
    .local v20, "yOffset":F
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    move-object/from16 v0, v18

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_2

    .line 253
    aget v13, v18, v17

    .line 254
    .local v13, "x":F
    add-int/lit8 v3, v17, 0x1

    aget v19, v18, v3

    .line 256
    .local v19, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 251
    :cond_4
    :goto_2
    add-int/lit8 v17, v17, 0x2

    goto :goto_1

    .line 262
    :cond_5
    div-int/lit8 v3, v17, 0x2

    add-int/2addr v3, v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 264
    .local v11, "entry":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v9

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v10

    sub-float v14, v19, v20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_2
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 38
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 39
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    .line 40
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 47
    return-void

    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/CandleDataSet;

    .line 44
    .local v2, "set":Lcom/github/mikephil/charting/data/CandleDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 45
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CandleDataSet;->getValueCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
