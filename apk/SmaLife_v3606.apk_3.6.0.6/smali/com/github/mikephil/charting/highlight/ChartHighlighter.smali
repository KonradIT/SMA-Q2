.class public Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.super Ljava/lang/Object;
.source "ChartHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    .local p1, "chart":Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    .line 22
    return-void
.end method


# virtual methods
.method protected getDataSetIndex(IFF)I
    .locals 6
    .param p1, "xIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 72
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getSelectionDetailsAtIndex(I)Ljava/util/List;

    move-result-object v4

    .line 74
    .local v4, "valsAtIndex":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-static {v4, p3, v5}, Lcom/github/mikephil/charting/utils/Utils;->getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    .line 75
    .local v2, "leftdist":F
    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-static {v4, p3, v5}, Lcom/github/mikephil/charting/utils/Utils;->getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v3

    .line 77
    .local v3, "rightdist":F
    cmpg-float v5, v2, v3

    if-gez v5, :cond_0

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 79
    .local v0, "axis":Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    :goto_0
    invoke-static {v4, p3, v0}, Lcom/github/mikephil/charting/utils/Utils;->getClosestDataSetIndex(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)I

    move-result v1

    .line 81
    .local v1, "dataSetIndex":I
    return v1

    .line 77
    .end local v0    # "axis":Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .end local v1    # "dataSetIndex":I
    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    goto :goto_0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    const/4 v2, 0x0

    const v3, -0x7fffffff

    .line 33
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getXIndex(F)I

    move-result v1

    .line 34
    .local v1, "xIndex":I
    if-ne v1, v3, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v2

    .line 37
    :cond_1
    invoke-virtual {p0, v1, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getDataSetIndex(IFF)I

    move-result v0

    .line 38
    .local v0, "dataSetIndex":I
    if-eq v0, v3, :cond_0

    .line 41
    new-instance v2, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {v2, v1, v0}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    goto :goto_0
.end method

.method protected getSelectionDetailsAtIndex(I)Ljava/util/List;
    .locals 8
    .param p1, "xIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/SelectionDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    const/4 v7, 0x1

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, "vals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    const/4 v5, 0x2

    new-array v2, v5, [F

    .line 96
    .local v2, "pts":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 118
    return-object v3

    .line 98
    :cond_0
    iget-object v5, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v0

    .line 101
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->isHighlightEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 96
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValForXIndex(I)F

    move-result v4

    .line 106
    .local v4, "yVal":F
    const/high16 v5, 0x7fc00000    # NaNf

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1

    .line 109
    aput v4, v2, v7

    .line 111
    iget-object v5, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 113
    aget v5, v2, v7

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    new-instance v5, Lcom/github/mikephil/charting/utils/SelectionDetail;

    aget v6, v2, v7

    invoke-direct {v5, v6, v1, v0}, Lcom/github/mikephil/charting/utils/SelectionDetail;-><init>(FILcom/github/mikephil/charting/data/DataSet;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected getXIndex(F)I
    .locals 4
    .param p1, "x"    # F

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    const/4 v3, 0x0

    .line 53
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 54
    .local v0, "pts":[F
    aput p1, v0, v3

    .line 57
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 59
    aget v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method
