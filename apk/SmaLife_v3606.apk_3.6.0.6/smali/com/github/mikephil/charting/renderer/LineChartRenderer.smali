.class public Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "LineChartRenderer.java"


# instance fields
.field protected cubicFillPath:Landroid/graphics/Path;

.field protected cubicPath:Landroid/graphics/Path;

.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

.field protected mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

.field protected mCirclePaintInner:Landroid/graphics/Paint;

.field protected mDrawBitmap:Landroid/graphics/Bitmap;

.field protected mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/LineDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 54
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 55
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    return-void
.end method

.method private generateFilledPath(Ljava/util/List;FII)Landroid/graphics/Path;
    .locals 8
    .param p2, "fillMin"    # F
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;FII)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    .line 386
    .local v3, "phaseX":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    .line 388
    .local v4, "phaseY":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 389
    .local v2, "filled":Landroid/graphics/Path;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 390
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v7, v6

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    add-int/lit8 v5, p3, 0x1

    .local v5, "x":I
    sub-int v6, p4, p3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    int-to-float v7, p3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .local v0, "count":I
    :goto_0
    if-lt v5, v0, :cond_0

    .line 403
    sub-int v6, p4, p3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    int-to-float v7, p3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x1

    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 403
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 404
    const/4 v7, 0x0

    .line 402
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 401
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    .line 404
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v6, v6

    .line 400
    invoke-virtual {v2, v6, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 406
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 408
    return-object v2

    .line 395
    :cond_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 396
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected drawCircles(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v20

    .line 480
    .local v20, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v21

    .line 482
    .local v21, "phaseY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v10

    .line 484
    .local v10, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 541
    return-void

    .line 486
    :cond_0
    move/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 488
    .local v9, "dataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCirclesEnabled()Z

    move-result v25

    if-nez v25, :cond_2

    .line 484
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 491
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleHoleColor()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    move-object/from16 v25, v0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v22

    .line 494
    .local v22, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getYVals()Ljava/util/List;

    move-result-object v12

    .line 496
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move/from16 v25, v0

    if-gez v25, :cond_4

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    .line 497
    .local v13, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    .line 499
    .local v14, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    if-ne v13, v14, :cond_5

    const/4 v11, 0x1

    .line 500
    .local v11, "diff":I
    :goto_2
    invoke-virtual {v9, v13}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v25

    sub-int v25, v25, v11

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 502
    .local v19, "minx":I
    add-int/lit8 v25, v19, 0x2

    invoke-virtual {v9, v14}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    .line 501
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 502
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v26

    .line 501
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 504
    .local v18, "maxx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    move-object/from16 v25, v0

    aget-object v6, v25, v16

    .line 505
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->setPhases(FF)V

    .line 506
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->limitFrom(I)V

    .line 507
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->limitTo(I)V

    .line 508
    invoke-virtual {v6, v12}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->feed(Ljava/util/List;)V

    .line 510
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 512
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v15, v25, v26

    .line 514
    .local v15, "halfsize":F
    const/16 v17, 0x0

    .local v17, "j":I
    sub-int v25, v18, v19

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    mul-int/lit8 v8, v25, 0x2

    .local v8, "count":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v8, :cond_1

    .line 516
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v25, v0

    aget v23, v25, v17

    .line 517
    .local v23, "x":F
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v25, v0

    add-int/lit8 v26, v17, 0x1

    aget v24, v25, v26

    .line 519
    .local v24, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v25

    if-nez v25, :cond_6

    .line 514
    :cond_3
    :goto_4
    add-int/lit8 v17, v17, 0x2

    goto :goto_3

    .line 496
    .end local v6    # "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    .end local v8    # "count":I
    .end local v11    # "diff":I
    .end local v13    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v14    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v15    # "halfsize":F
    .end local v17    # "j":I
    .end local v18    # "maxx":I
    .end local v19    # "minx":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move/from16 v25, v0

    goto/16 :goto_1

    .line 499
    .restart local v13    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v14    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 527
    .restart local v6    # "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    .restart local v8    # "count":I
    .restart local v11    # "diff":I
    .restart local v15    # "halfsize":F
    .restart local v17    # "j":I
    .restart local v18    # "maxx":I
    .restart local v19    # "minx":I
    .restart local v23    # "x":F
    .restart local v24    # "y":F
    :cond_6
    div-int/lit8 v25, v17, 0x2

    add-int v25, v25, v19

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleColor(I)I

    move-result v7

    .line 529
    .local v7, "circleColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v25

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    .line 531
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 534
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCircleHoleEnabled()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Paint;->getColor()I

    move-result v25

    move/from16 v0, v25

    if-eq v7, v0, :cond_3

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 536
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method protected drawCubic(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V
    .locals 29
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v28

    .line 141
    .local v28, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    .line 142
    .local v14, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v15

    .line 144
    .local v15, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    if-ne v14, v15, :cond_2

    const/4 v13, 0x1

    .line 145
    .local v13, "diff":I
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    sub-int/2addr v2, v13

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 147
    .local v19, "minx":I
    add-int/lit8 v2, v19, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 147
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 149
    .local v18, "maxx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v21

    .line 150
    .local v21, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v22

    .line 152
    .local v22, "phaseY":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getCubicIntensity()F

    move-result v16

    .line 154
    .local v16, "intensity":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 156
    sub-int v2, v18, v19

    int-to-float v2, v2

    mul-float v2, v2, v21

    move/from16 v0, v19

    int-to-float v3, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v27, v0

    .line 158
    .local v27, "size":I
    sub-int v2, v27, v19

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 160
    const/16 v24, 0x0

    .line 161
    .local v24, "prevDx":F
    const/16 v25, 0x0

    .line 162
    .local v25, "prevDy":F
    const/4 v11, 0x0

    .line 163
    .local v11, "curDx":F
    const/4 v12, 0x0

    .line 165
    .local v12, "curDy":F
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/github/mikephil/charting/data/Entry;

    .line 166
    .local v26, "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/github/mikephil/charting/data/Entry;

    .line 167
    .local v23, "prev":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/Entry;

    .line 168
    .local v10, "cur":Lcom/github/mikephil/charting/data/Entry;
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/github/mikephil/charting/data/Entry;

    .line 171
    .local v20, "next":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    mul-float v4, v4, v22

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v24, v2, v16

    .line 174
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v25, v2, v16

    .line 176
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v16

    .line 177
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v16

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v24

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v25

    mul-float v4, v4, v22

    .line 181
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    .line 182
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v22

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v22

    .line 180
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 184
    add-int/lit8 v17, v19, 0x1

    .local v17, "j":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .local v9, "count":I
    :goto_1
    move/from16 v0, v17

    if-lt v0, v9, :cond_3

    .line 201
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v27

    if-le v0, v2, :cond_0

    .line 203
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    :goto_2
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    check-cast v26, Lcom/github/mikephil/charting/data/Entry;

    .line 205
    .restart local v26    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "prev":Lcom/github/mikephil/charting/data/Entry;
    check-cast v23, Lcom/github/mikephil/charting/data/Entry;

    .line 206
    .restart local v23    # "prev":Lcom/github/mikephil/charting/data/Entry;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    check-cast v10, Lcom/github/mikephil/charting/data/Entry;

    .line 207
    .restart local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v20, v10

    .line 209
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v24, v2, v16

    .line 210
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v25, v2, v16

    .line 211
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v16

    .line 212
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v16

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v24

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v25

    mul-float v4, v4, v22

    .line 216
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    .line 217
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v22

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v22

    .line 215
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 222
    .end local v9    # "count":I
    .end local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    .end local v11    # "curDx":F
    .end local v12    # "curDy":F
    .end local v17    # "j":I
    .end local v20    # "next":Lcom/github/mikephil/charting/data/Entry;
    .end local v23    # "prev":Lcom/github/mikephil/charting/data/Entry;
    .end local v24    # "prevDx":F
    .end local v25    # "prevDy":F
    .end local v26    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawFilledEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 228
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    add-int v8, v2, v27

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, v28

    .line 227
    invoke-virtual/range {v2 .. v8}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;II)V

    .line 231
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 240
    return-void

    .line 144
    .end local v13    # "diff":I
    .end local v16    # "intensity":F
    .end local v18    # "maxx":I
    .end local v19    # "minx":I
    .end local v21    # "phaseX":F
    .end local v22    # "phaseY":F
    .end local v27    # "size":I
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 186
    .restart local v9    # "count":I
    .restart local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    .restart local v11    # "curDx":F
    .restart local v12    # "curDy":F
    .restart local v13    # "diff":I
    .restart local v16    # "intensity":F
    .restart local v17    # "j":I
    .restart local v18    # "maxx":I
    .restart local v19    # "minx":I
    .restart local v20    # "next":Lcom/github/mikephil/charting/data/Entry;
    .restart local v21    # "phaseX":F
    .restart local v22    # "phaseY":F
    .restart local v23    # "prev":Lcom/github/mikephil/charting/data/Entry;
    .restart local v24    # "prevDx":F
    .restart local v25    # "prevDy":F
    .restart local v26    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    .restart local v27    # "size":I
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    check-cast v26, Lcom/github/mikephil/charting/data/Entry;

    .line 187
    .restart local v26    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "prev":Lcom/github/mikephil/charting/data/Entry;
    check-cast v23, Lcom/github/mikephil/charting/data/Entry;

    .line 188
    .restart local v23    # "prev":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    check-cast v10, Lcom/github/mikephil/charting/data/Entry;

    .line 189
    .restart local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "next":Lcom/github/mikephil/charting/data/Entry;
    check-cast v20, Lcom/github/mikephil/charting/data/Entry;

    .line 191
    .restart local v20    # "next":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v24, v2, v16

    .line 192
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v25, v2, v16

    .line 193
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v16

    .line 194
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v16

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v24

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v25

    mul-float v4, v4, v22

    .line 197
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    .line 198
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v22

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v22

    .line 196
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 184
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 186
    :cond_4
    add-int/lit8 v2, v17, -0x2

    goto/16 :goto_3

    .line 204
    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_2
.end method

.method protected drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;II)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .param p3, "spline"    # Landroid/graphics/Path;
    .param p4, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p5, "from"    # I
    .param p6, "to"    # I

    .prologue
    .line 245
    sub-int v1, p6, p5

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v1, p2, v2}, Lcom/github/mikephil/charting/formatter/FillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/LineDataProvider;)F

    move-result v0

    .line 251
    .local v0, "fillMin":F
    add-int/lit8 v1, p6, -0x1

    int-to-float v1, v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    int-to-float v1, p5

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 255
    invoke-virtual {p4, p3}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 257
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillColor()I

    move-result v1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillAlpha()I

    move-result v2

    invoke-virtual {p0, p1, p3, v1, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_0
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 79
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v4

    float-to-int v3, v4

    .line 80
    .local v3, "width":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v4

    float-to-int v0, v4

    .line 82
    .local v0, "height":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 84
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 86
    :cond_0
    if-lez v3, :cond_3

    if-lez v0, :cond_3

    .line 88
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 89
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 96
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    .line 98
    .local v1, "lineData":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 104
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    .end local v1    # "lineData":Lcom/github/mikephil/charting/data/LineData;
    :cond_3
    return-void

    .line 98
    .restart local v1    # "lineData":Lcom/github/mikephil/charting/data/LineData;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 100
    .local v2, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 101
    invoke-virtual {p0, p1, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;)V

    goto :goto_0
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;

    .prologue
    .line 109
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getYVals()Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 118
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCubicEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubic(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V

    goto :goto_1
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCircles(Landroid/graphics/Canvas;)V

    .line 473
    return-void
.end method

.method protected drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "filledPath"    # Landroid/graphics/Path;
    .param p3, "fillColor"    # I
    .param p4, "fillAlpha"    # I

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 370
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 372
    shl-int/lit8 v1, p4, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p3

    or-int v0, v1, v2

    .line 373
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 375
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p2

    if-lt v0, v6, :cond_0

    .line 577
    return-void

    .line 548
    :cond_0
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v6

    aget-object v7, p2, v0

    .line 549
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v7

    .line 548
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 551
    .local v2, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->isHighlightEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 546
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_2
    aget-object v6, p2, v0

    invoke-virtual {v6}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v3

    .line 557
    .local v3, "xIndex":I
    int-to-float v6, v3

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getXChartMax()F

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 560
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->getYValForXIndex(I)F

    move-result v5

    .line 561
    .local v5, "yVal":F
    const/high16 v6, 0x7fc00000    # NaNf

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_1

    .line 564
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    mul-float v4, v5, v6

    .line 568
    .local v4, "y":F
    const/4 v6, 0x2

    new-array v1, v6, [F

    const/4 v6, 0x0

    .line 569
    int-to-float v7, v3

    aput v7, v1, v6

    const/4 v6, 0x1

    aput v4, v1, v6

    .line 572
    .local v1, "pts":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 575
    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;)V

    goto :goto_1
.end method

.method protected drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineData;->getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I

    move-result v11

    .line 271
    .local v11, "dataSetIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v9

    .line 273
    .local v9, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v17

    .line 274
    .local v17, "phaseX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v18

    .line 276
    .local v18, "phaseY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    const/4 v2, 0x0

    .line 281
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDashedLineEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 287
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    .line 288
    .local v13, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    .line 290
    .local v14, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    if-ne v13, v14, :cond_3

    const/4 v12, 0x1

    .line 291
    .local v12, "diff":I
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v3

    sub-int/2addr v3, v12

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 293
    .local v16, "minx":I
    add-int/lit8 v3, v16, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 292
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 293
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 292
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 295
    .local v8, "maxx":I
    sub-int v3, v8, v16

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v19, v3, -0x4

    .line 297
    .local v19, "range":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    aget-object v10, v3, v11

    .line 298
    .local v10, "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/github/mikephil/charting/buffer/LineBuffer;->setPhases(FF)V

    .line 299
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/buffer/LineBuffer;->limitFrom(I)V

    .line 300
    invoke-virtual {v10, v8}, Lcom/github/mikephil/charting/buffer/LineBuffer;->limitTo(I)V

    .line 301
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/buffer/LineBuffer;->feed(Ljava/util/List;)V

    .line 303
    iget-object v3, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    invoke-virtual {v9, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    .line 308
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move/from16 v0, v19

    if-lt v15, v0, :cond_4

    .line 338
    .end local v15    # "j":I
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 341
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawFilledEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, v16

    .line 342
    invoke-virtual/range {v3 .. v9}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;IILcom/github/mikephil/charting/utils/Transformer;)V

    .line 344
    :cond_1
    return-void

    .line 284
    .end local v8    # "maxx":I
    .end local v10    # "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    .end local v12    # "diff":I
    .end local v13    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v14    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v16    # "minx":I
    .end local v19    # "range":I
    :cond_2
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 290
    .restart local v13    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v14    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 310
    .restart local v8    # "maxx":I
    .restart local v10    # "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    .restart local v12    # "diff":I
    .restart local v15    # "j":I
    .restart local v16    # "minx":I
    .restart local v19    # "range":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    aget v4, v4, v15

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v15, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v15, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 317
    iget-object v4, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v15, 0x3

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 318
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v15, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 319
    iget-object v4, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v15, 0x3

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v3

    if-nez v3, :cond_7

    .line 308
    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x4

    goto/16 :goto_2

    .line 323
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v4, v15, 0x4

    add-int v4, v4, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object v3, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    aget v3, v3, v15

    iget-object v4, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v15, 0x1

    aget v4, v4, v5

    .line 326
    iget-object v5, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v6, v15, 0x2

    aget v5, v5, v6

    iget-object v6, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v7, v15, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 325
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 331
    .end local v15    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object v3, v10, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    const/4 v4, 0x0

    .line 335
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 334
    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method protected drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/LineDataSet;Ljava/util/List;IILcom/github/mikephil/charting/utils/Transformer;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/LineDataSet;
    .param p4, "minx"    # I
    .param p5, "maxx"    # I
    .param p6, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/github/mikephil/charting/data/LineDataSet;",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;II",
            "Lcom/github/mikephil/charting/utils/Transformer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 350
    .line 352
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v1, p2, v2}, Lcom/github/mikephil/charting/formatter/FillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/data/LineDataSet;Lcom/github/mikephil/charting/interfaces/LineDataProvider;)F

    move-result v1

    .line 350
    invoke-direct {p0, p3, v1, p4, p5}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->generateFilledPath(Ljava/util/List;FII)Landroid/graphics/Path;

    move-result-object v0

    .line 354
    .local v0, "filled":Landroid/graphics/Path;
    invoke-virtual {p6, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 356
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillColor()I

    move-result v1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineDataSet;->getFillAlpha()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    .line 357
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/LineData;->getYValCount()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getMaxVisibleCount()I

    move-result v5

    int-to-float v5, v5

    .line 415
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v8

    mul-float/2addr v5, v8

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v17

    .line 419
    .local v17, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lt v13, v4, :cond_1

    .line 468
    .end local v13    # "i":I
    .end local v17    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    :cond_0
    return-void

    .line 421
    .restart local v13    # "i":I
    .restart local v17    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 423
    .local v16, "dataSet":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawValuesEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 419
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 427
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/data/DataSet;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/LineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v2

    .line 432
    .local v2, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleSize()F

    move-result v4

    const/high16 v5, 0x3fe00000    # 1.75f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    .line 434
    .local v23, "valOffset":I
    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawCirclesEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 435
    div-int/lit8 v23, v23, 0x2

    .line 437
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/LineDataSet;->getYVals()Ljava/util/List;

    move-result-object v3

    .line 439
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v19

    .line 440
    .local v19, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v20

    .line 442
    .local v20, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    .line 443
    .local v18, "diff":I
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v4

    sub-int v4, v4, v18

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 445
    .local v6, "minx":I
    add-int/lit8 v4, v6, 0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 444
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 445
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 444
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 448
    .local v7, "maxx":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    .line 447
    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesLine(Ljava/util/List;FFII)[F

    move-result-object v22

    .line 450
    .local v22, "positions":[F
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move-object/from16 v0, v22

    array-length v4, v0

    move/from16 v0, v21

    if-ge v0, v4, :cond_2

    .line 452
    aget v14, v22, v21

    .line 453
    .local v14, "x":F
    add-int/lit8 v4, v21, 0x1

    aget v24, v22, v4

    .line 455
    .local v24, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v4

    if-nez v4, :cond_7

    .line 450
    :cond_5
    :goto_3
    add-int/lit8 v21, v21, 0x2

    goto :goto_2

    .line 442
    .end local v6    # "minx":I
    .end local v7    # "maxx":I
    .end local v14    # "x":F
    .end local v18    # "diff":I
    .end local v21    # "j":I
    .end local v22    # "positions":[F
    .end local v24    # "y":F
    :cond_6
    const/16 v18, 0x0

    goto :goto_1

    .line 461
    .restart local v6    # "minx":I
    .restart local v7    # "maxx":I
    .restart local v14    # "x":F
    .restart local v18    # "diff":I
    .restart local v21    # "j":I
    .restart local v22    # "positions":[F
    .restart local v24    # "y":F
    :cond_7
    div-int/lit8 v4, v21, 0x2

    add-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/Entry;

    .line 463
    .local v12, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/data/LineDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v10

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v11

    .line 464
    move/from16 v0, v23

    int-to-float v4, v0

    sub-float v15, v24, v4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 463
    invoke-virtual/range {v8 .. v15}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_3
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 65
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    .line 66
    .local v1, "lineData":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/LineBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    .line 67
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CircleBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 74
    return-void

    .line 70
    :cond_0
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 71
    .local v2, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/LineBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, -0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/LineBuffer;-><init>(I)V

    aput-object v4, v3, v0

    .line 72
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CircleBuffer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CircleBuffer;-><init>(I)V

    aput-object v4, v3, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public releaseBitmap()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 587
    :cond_0
    return-void
.end method
