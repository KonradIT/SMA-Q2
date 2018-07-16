.class public Lcom/github/mikephil/charting/charts/BubbleChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "BubbleChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/BubbleData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 5

    .prologue
    .line 43
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 45
    iget v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mDeltaX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BubbleData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BubbleData;->getYValCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 46
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mDeltaX:F

    .line 48
    :cond_0
    const/high16 v3, -0x41000000    # -0.5f

    iput v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mXChartMin:F

    .line 49
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BubbleData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BubbleData;->getXValCount()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mXChartMax:F

    .line 51
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v3, :cond_2

    .line 52
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v3, Lcom/github/mikephil/charting/data/BubbleData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 65
    :cond_2
    iget v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mXChartMax:F

    iget v4, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mXChartMin:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mDeltaX:F

    .line 66
    return-void

    .line 52
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BubbleDataSet;

    .line 54
    .local v0, "set":Lcom/github/mikephil/charting/data/BubbleDataSet;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getXMin()F

    move-result v2

    .line 55
    .local v2, "xmin":F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getXMax()F

    move-result v1

    .line 57
    .local v1, "xmax":F
    iget v4, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mXChartMin:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    .line 58
    iput v2, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mXChartMin:F

    .line 60
    :cond_4
    iget v4, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mXChartMax:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 61
    iput v1, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mXChartMax:F

    goto :goto_0
.end method

.method public getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BubbleData;

    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 38
    new-instance v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 39
    return-void
.end method
