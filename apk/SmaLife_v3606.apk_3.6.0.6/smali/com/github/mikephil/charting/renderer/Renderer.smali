.class public abstract Lcom/github/mikephil/charting/renderer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# instance fields
.field protected mMaxX:I

.field protected mMinX:I

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 1
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mMinX:I

    .line 23
    iput v0, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mMaxX:I

    .line 26
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 27
    return-void
.end method


# virtual methods
.method public calcXBounds(Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;I)V
    .locals 5
    .param p1, "dataProvider"    # Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;
    .param p2, "xAxisModulus"    # I

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getLowestVisibleXIndex()I

    move-result v1

    .line 56
    .local v1, "low":I
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getHighestVisibleXIndex()I

    move-result v0

    .line 58
    .local v0, "high":I
    rem-int v4, v1, p2

    if-nez v4, :cond_0

    move v2, p2

    .line 60
    .local v2, "subLow":I
    :goto_0
    div-int v4, v1, p2

    mul-int/2addr v4, p2

    sub-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mMinX:I

    .line 61
    div-int v3, v0, p2

    mul-int/2addr v3, p2

    add-int/2addr v3, p2

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/BarLineScatterCandleBubbleDataProvider;->getXChartMax()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/renderer/Renderer;->mMaxX:I

    .line 62
    return-void

    .end local v2    # "subLow":I
    :cond_0
    move v2, v3

    .line 58
    goto :goto_0
.end method

.method protected fitsBounds(FFF)Z
    .locals 1
    .param p1, "val"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 40
    cmpg-float v0, p1, p2

    if-ltz v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
