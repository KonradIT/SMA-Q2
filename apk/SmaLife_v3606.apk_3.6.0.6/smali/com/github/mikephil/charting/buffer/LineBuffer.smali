.class public Lcom/github/mikephil/charting/buffer/LineBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "LineBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/buffer/AbstractBuffer",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x4

    .line 11
    if-ge p1, v0, :cond_0

    move p1, v0

    .end local p1    # "size":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public feed(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->mFrom:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    int-to-float v5, v4

    iget v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->mFrom:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v6, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->phaseY:F

    mul-float/2addr v4, v6

    invoke-virtual {p0, v5, v4}, Lcom/github/mikephil/charting/buffer/LineBuffer;->moveTo(FF)V

    .line 47
    iget v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->mTo:I

    iget v5, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->mFrom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->phaseX:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->mFrom:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 48
    .local v3, "size":I
    iget v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->mFrom:I

    add-int/lit8 v1, v4, 0x1

    .line 50
    .local v1, "from":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/github/mikephil/charting/buffer/LineBuffer;->reset()V

    .line 57
    return-void

    .line 52
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 53
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->phaseY:F

    mul-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/github/mikephil/charting/buffer/LineBuffer;->lineTo(FF)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public lineTo(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 29
    iget v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 30
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v3, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput p1, v2, v3

    .line 31
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v3, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput p2, v2, v3

    .line 41
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v3, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v3, v3, -0x2

    aget v0, v2, v3

    .line 35
    .local v0, "prevX":F
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v3, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .line 36
    .local v1, "prevY":F
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v3, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput v0, v2, v3

    .line 37
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v3, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput v1, v2, v3

    .line 38
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v3, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput p1, v2, v3

    .line 39
    iget-object v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v3, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput p2, v2, v3

    goto :goto_0
.end method

.method public moveTo(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 16
    iget v0, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    if-eqz v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput p1, v0, v1

    .line 20
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput p2, v0, v1

    .line 23
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    aput p1, v0, v1

    .line 24
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/LineBuffer;->index:I

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    goto :goto_0
.end method
