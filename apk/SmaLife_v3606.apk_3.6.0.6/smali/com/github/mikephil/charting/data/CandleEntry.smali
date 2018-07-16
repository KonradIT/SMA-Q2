.class public Lcom/github/mikephil/charting/data/CandleEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "CandleEntry.java"


# instance fields
.field private mClose:F

.field private mOpen:F

.field private mShadowHigh:F

.field private mShadowLow:F


# direct methods
.method public constructor <init>(IFFFF)V
    .locals 3
    .param p1, "xIndex"    # I
    .param p2, "shadowH"    # F
    .param p3, "shadowL"    # F
    .param p4, "open"    # F
    .param p5, "close"    # F

    .prologue
    const/4 v2, 0x0

    .line 33
    add-float v0, p2, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    .line 12
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 15
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 18
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 21
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 35
    iput p2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 36
    iput p3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 37
    iput p4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 38
    iput p5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 39
    return-void
.end method

.method public constructor <init>(IFFFFLjava/lang/Object;)V
    .locals 3
    .param p1, "xIndex"    # I
    .param p2, "shadowH"    # F
    .param p3, "shadowL"    # F
    .param p4, "open"    # F
    .param p5, "close"    # F
    .param p6, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 53
    add-float v0, p2, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p1, p6}, Lcom/github/mikephil/charting/data/Entry;-><init>(FILjava/lang/Object;)V

    .line 12
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 15
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 18
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 21
    iput v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 55
    iput p2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 56
    iput p3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 57
    iput p4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 58
    iput p5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 59
    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/CandleEntry;
    .locals 7

    .prologue
    .line 91
    new-instance v0, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v1

    iget v2, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    iget v3, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    iget v4, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 92
    iget v5, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->getData()Ljava/lang/Object;

    move-result-object v6

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/data/CandleEntry;-><init>(IFFFFLjava/lang/Object;)V

    .line 94
    .local v0, "c":Lcom/github/mikephil/charting/data/CandleEntry;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleEntry;->copy()Lcom/github/mikephil/charting/data/CandleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBodyRange()F
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    iget v1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getClose()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    return v0
.end method

.method public getHigh()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    return v0
.end method

.method public getLow()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    return v0
.end method

.method public getOpen()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    return v0
.end method

.method public getShadowRange()F
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    iget v1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getVal()F
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    return v0
.end method

.method public setClose(F)V
    .locals 0
    .param p1, "mClose"    # F

    .prologue
    .line 133
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    .line 134
    return-void
.end method

.method public setHigh(F)V
    .locals 0
    .param p1, "mShadowHigh"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    .line 108
    return-void
.end method

.method public setLow(F)V
    .locals 0
    .param p1, "mShadowLow"    # F

    .prologue
    .line 120
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    .line 121
    return-void
.end method

.method public setOpen(F)V
    .locals 0
    .param p1, "mOpen"    # F

    .prologue
    .line 146
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    .line 147
    return-void
.end method
