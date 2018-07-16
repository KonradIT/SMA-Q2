.class public Lcom/github/mikephil/charting/highlight/BarHighlighter;
.super Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.source "BarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/highlight/ChartHighlighter",
        "<",
        "Lcom/github/mikephil/charting/interfaces/BarDataProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BarDataProvider;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getBase(F)F
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/4 v8, 0x0

    .line 163
    const/4 v6, 0x2

    new-array v2, v6, [F

    .line 164
    .local v2, "pts":[F
    aput p1, v2, v8

    .line 167
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    sget-object v7, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 168
    aget v5, v2, v8

    .line 170
    .local v5, "xVal":F
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    .line 173
    .local v3, "setCount":I
    int-to-float v7, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    add-float/2addr v6, v7

    div-float v6, v5, v6

    float-to-int v4, v6

    .line 175
    .local v4, "steps":I
    iget-object v6, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    int-to-float v7, v4

    mul-float v1, v6, v7

    .line 177
    .local v1, "groupSpaceSum":F
    sub-float v0, v5, v1

    .line 178
    .local v0, "baseNoSpace":F
    return v0
.end method

.method protected getClosestStackIndex([Lcom/github/mikephil/charting/highlight/Range;F)I
    .locals 7
    .param p1, "ranges"    # [Lcom/github/mikephil/charting/highlight/Range;
    .param p2, "value"    # F

    .prologue
    const/4 v3, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return v3

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 127
    .local v2, "stackIndex":I
    array-length v5, p1

    move v4, v3

    :goto_1
    if-lt v4, v5, :cond_1

    .line 134
    array-length v4, p1

    add-int/lit8 v0, v4, -0x1

    .line 136
    .local v0, "length":I
    aget-object v4, p1, v0

    iget v4, v4, Lcom/github/mikephil/charting/highlight/Range;->to:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .end local v0    # "length":I
    :goto_2
    move v3, v0

    goto :goto_0

    .line 127
    :cond_1
    aget-object v1, p1, v4

    .line 128
    .local v1, "range":Lcom/github/mikephil/charting/highlight/Range;
    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/highlight/Range;->contains(F)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 127
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "range":Lcom/github/mikephil/charting/highlight/Range;
    .restart local v0    # "length":I
    :cond_3
    move v0, v3

    .line 136
    goto :goto_2
.end method

.method protected getDataSetIndex(IFF)I
    .locals 4
    .param p1, "xIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 69
    iget-object v3, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v3, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->isGrouped()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getBase(F)F

    move-result v0

    .line 75
    .local v0, "baseNoSpace":F
    iget-object v3, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v3, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v2

    .line 76
    .local v2, "setCount":I
    float-to-int v3, v0

    rem-int v1, v3, v2

    .line 78
    .local v1, "dataSetIndex":I
    if-gez v1, :cond_2

    .line 79
    const/4 v1, 0x0

    goto :goto_0

    .line 80
    :cond_2
    if-lt v1, v2, :cond_0

    .line 81
    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    .line 20
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v2

    .line 22
    .local v2, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-nez v2, :cond_1

    .line 39
    .end local v2    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_0
    :goto_0
    return-object v2

    .line 26
    .restart local v2    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 28
    .local v3, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarDataSet;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 32
    .local v0, "pts":[F
    aput p2, v0, v6

    .line 35
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 37
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v5

    aget v1, v0, v6

    float-to-double v6, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/data/BarDataSet;IID)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v2

    goto :goto_0
.end method

.method protected getRanges(Lcom/github/mikephil/charting/data/BarEntry;)[Lcom/github/mikephil/charting/highlight/Range;
    .locals 8
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BarEntry;

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v5

    .line 191
    .local v5, "values":[F
    if-nez v5, :cond_1

    .line 192
    const/4 v3, 0x0

    .line 212
    :cond_0
    return-object v3

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v6

    neg-float v1, v6

    .line 195
    .local v1, "negRemain":F
    const/4 v2, 0x0

    .line 197
    .local v2, "posRemain":F
    array-length v6, v5

    new-array v3, v6, [Lcom/github/mikephil/charting/highlight/Range;

    .line 199
    .local v3, "ranges":[Lcom/github/mikephil/charting/highlight/Range;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 201
    aget v4, v5, v0

    .line 203
    .local v4, "value":F
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2

    .line 204
    new-instance v6, Lcom/github/mikephil/charting/highlight/Range;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v7, v1

    invoke-direct {v6, v1, v7}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v6, v3, v0

    .line 205
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v1, v6

    .line 199
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_2
    new-instance v6, Lcom/github/mikephil/charting/highlight/Range;

    add-float v7, v2, v4

    invoke-direct {v6, v2, v7}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v6, v3, v0

    .line 208
    add-float/2addr v2, v4

    goto :goto_1
.end method

.method protected getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/data/BarDataSet;IID)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 5
    .param p1, "old"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "set"    # Lcom/github/mikephil/charting/data/BarDataSet;
    .param p3, "xIndex"    # I
    .param p4, "dataSetIndex"    # I
    .param p5, "yValue"    # D

    .prologue
    .line 100
    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 102
    .local v0, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object v1, p1

    .line 109
    :goto_0
    return-object v1

    .line 105
    :cond_1
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getRanges(Lcom/github/mikephil/charting/data/BarEntry;)[Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v2

    .line 106
    .local v2, "ranges":[Lcom/github/mikephil/charting/highlight/Range;
    double-to-float v4, p5

    invoke-virtual {p0, v2, v4}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getClosestStackIndex([Lcom/github/mikephil/charting/highlight/Range;F)I

    move-result v3

    .line 108
    .local v3, "stackIndex":I
    new-instance v1, Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v4, v2, v3

    invoke-direct {v1, p3, p4, v3, v4}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(IIILcom/github/mikephil/charting/highlight/Range;)V

    .line 109
    .local v1, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    goto :goto_0
.end method

.method protected getXIndex(F)I
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 46
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->isGrouped()Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getXIndex(F)I

    move-result v3

    .line 62
    :cond_0
    :goto_0
    return v3

    .line 50
    :cond_1
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getBase(F)F

    move-result v0

    .line 52
    .local v0, "baseNoSpace":F
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v1

    .line 53
    .local v1, "setCount":I
    float-to-int v4, v0

    div-int v3, v4, v1

    .line 55
    .local v3, "xIndex":I
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/BarDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXValCount()I

    move-result v2

    .line 57
    .local v2, "valCount":I
    if-gez v3, :cond_2

    .line 58
    const/4 v3, 0x0

    goto :goto_0

    .line 59
    :cond_2
    if-lt v3, v2, :cond_0

    .line 60
    add-int/lit8 v3, v2, -0x1

    goto :goto_0
.end method
