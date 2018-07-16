.class public abstract Lcom/github/mikephil/charting/data/LineRadarDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "LineRadarDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mDrawFilled:Z

.field private mFillAlpha:I

.field private mFillColor:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 18
    const/16 v0, 0x8c

    const/16 v1, 0xea

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    .line 21
    const/16 v0, 0x55

    iput v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    .line 24
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mDrawFilled:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getFillAlpha()I
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    return v0
.end method

.method public isDrawFilledEnabled()Z
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mDrawFilled:Z

    return v0
.end method

.method public setDrawFilled(Z)V
    .locals 0
    .param p1, "filled"    # Z

    .prologue
    .line 104
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mDrawFilled:Z

    .line 105
    return-void
.end method

.method public setFillAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    .line 70
    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 49
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    .line 50
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 80
    .local p0, "this":Lcom/github/mikephil/charting/data/LineRadarDataSet;, "Lcom/github/mikephil/charting/data/LineRadarDataSet<TT;>;"
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 81
    const p1, 0x3e4ccccd    # 0.2f

    .line 82
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 83
    const/high16 p1, 0x41200000    # 10.0f

    .line 84
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    .line 85
    return-void
.end method
