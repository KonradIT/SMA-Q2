.class public Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;
.super Lcom/github/mikephil/charting/highlight/BarHighlighter;
.source "HorizontalBarHighlighter.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/BarHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getBase(F)F
    .locals 9
    .param p1, "y"    # F

    .prologue
    const/4 v8, 0x1

    .line 83
    const/4 v6, 0x2

    new-array v2, v6, [F

    .line 84
    .local v2, "pts":[F
    aput p1, v2, v8

    .line 87
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 88
    aget v5, v2, v8

    .line 90
    .local v5, "yVal":F
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    .line 93
    .local v3, "setCount":I
    int-to-float v7, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    add-float/2addr v6, v7

    div-float v6, v5, v6

    float-to-int v4, v6

    .line 95
    .local v4, "steps":I
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    int-to-float v7, v4

    mul-float v1, v6, v7

    .line 97
    .local v1, "groupSpaceSum":F
    sub-float v0, v5, v1

    .line 98
    .local v0, "baseNoSpace":F
    return v0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v2

    .line 21
    .local v2, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-nez v2, :cond_1

    .line 38
    .end local v2    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_0
    :goto_0
    return-object v2

    .line 25
    .restart local v2    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 27
    .local v3, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 31
    .local v0, "pts":[F
    aput p2, v0, v6

    .line 34
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 36
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v5

    aget v1, v0, v6

    float-to-double v6, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/data/BarDataSet;IID)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v2

    goto :goto_0
.end method

.method protected getXIndex(F)I
    .locals 8
    .param p1, "x"    # F

    .prologue
    const/4 v7, 0x1

    .line 45
    iget-object v5, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v5, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarData;->isGrouped()Z

    move-result v5

    if-nez v5, :cond_1

    .line 48
    const/4 v5, 0x2

    new-array v1, v5, [F

    .line 49
    .local v1, "pts":[F
    aput p1, v1, v7

    .line 52
    iget-object v5, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v5, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v5, v6}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 54
    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 69
    .end local v1    # "pts":[F
    :cond_0
    :goto_0
    return v4

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->getBase(F)F

    move-result v0

    .line 59
    .local v0, "baseNoSpace":F
    iget-object v5, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v5, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v2

    .line 60
    .local v2, "setCount":I
    float-to-int v5, v0

    div-int v4, v5, v2

    .line 62
    .local v4, "xIndex":I
    iget-object v5, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v5, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXValCount()I

    move-result v3

    .line 64
    .local v3, "valCount":I
    if-gez v4, :cond_2

    .line 65
    const/4 v4, 0x0

    goto :goto_0

    .line 66
    :cond_2
    if-lt v4, v3, :cond_0

    .line 67
    add-int/lit8 v4, v3, -0x1

    goto :goto_0
.end method
