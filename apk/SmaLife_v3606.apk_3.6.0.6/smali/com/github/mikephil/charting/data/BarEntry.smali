.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# instance fields
.field private mNegativeSum:F

.field private mPositiveSum:F

.field private mVals:[F


# direct methods
.method public constructor <init>(FI)V
    .locals 0
    .param p1, "val"    # F
    .param p2, "xIndex"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    .line 41
    return-void
.end method

.method public constructor <init>(FILjava/lang/Object;)V
    .locals 0
    .param p1, "val"    # F
    .param p2, "xIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public constructor <init>([FI)V
    .locals 1
    .param p1, "vals"    # [F
    .param p2, "xIndex"    # I

    .prologue
    .line 27
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    .line 29
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    .line 30
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 31
    return-void
.end method

.method public constructor <init>([FILjava/lang/String;)V
    .locals 1
    .param p1, "vals"    # [F
    .param p2, "xIndex"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FILjava/lang/Object;)V

    .line 55
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    .line 56
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 57
    return-void
.end method

.method private calcPosNegSum()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 157
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    if-nez v3, :cond_0

    .line 158
    iput v7, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 159
    iput v7, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    .line 175
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 164
    .local v1, "sumNeg":F
    const/4 v2, 0x0

    .line 166
    .local v2, "sumPos":F
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v5, :cond_1

    .line 173
    iput v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 174
    iput v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    goto :goto_0

    .line 166
    :cond_1
    aget v0, v4, v3

    .line 167
    .local v0, "f":F
    cmpg-float v6, v0, v7

    if-gtz v6, :cond_2

    .line 168
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v1, v6

    .line 166
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 170
    :cond_2
    add-float/2addr v2, v0

    goto :goto_2
.end method

.method private static calcSum([F)F
    .locals 4
    .param p0, "vals"    # [F

    .prologue
    .line 185
    if-nez p0, :cond_1

    .line 186
    const/4 v1, 0x0

    .line 193
    :cond_0
    return v1

    .line 188
    :cond_1
    const/4 v1, 0x0

    .line 190
    .local v1, "sum":F
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 191
    .local v0, "f":F
    add-float/2addr v1, v0

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/BarEntry;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    .line 77
    .local v0, "copied":Lcom/github/mikephil/charting/data/BarEntry;
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setVals([F)V

    .line 78
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->copy()Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBelowSum(I)F
    .locals 3
    .param p1, "stackIndex"    # I

    .prologue
    .line 123
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    if-nez v2, :cond_1

    .line 124
    const/4 v1, 0x0

    .line 134
    :cond_0
    return v1

    .line 126
    :cond_1
    const/4 v1, 0x0

    .line 127
    .local v1, "remainder":F
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 129
    .local v0, "index":I
    :goto_0
    if-le v0, p1, :cond_0

    if-ltz v0, :cond_0

    .line 130
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 131
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getNegativeSum()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    return v0
.end method

.method public getPositiveSum()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return v0
.end method

.method public getVal()F
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    return v0
.end method

.method public getVals()[F
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    return-object v0
.end method

.method public isStacked()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVals([F)V
    .locals 1
    .param p1, "vals"    # [F

    .prologue
    .line 97
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BarEntry;->setVal(F)V

    .line 98
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    .line 99
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 100
    return-void
.end method
