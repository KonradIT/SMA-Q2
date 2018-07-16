.class public Lcom/github/mikephil/charting/buffer/CircleBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "CircleBuffer.java"


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
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method protected addCircle(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 15
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->index:I

    aput p1, v0, v1

    .line 16
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->index:I

    aput p2, v0, v1

    .line 17
    return-void
.end method

.method public feed(Ljava/util/List;)V
    .locals 6
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
    .line 22
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    iget v3, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->mTo:I

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->phaseX:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->mFrom:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 24
    .local v2, "size":I
    iget v1, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->mFrom:I

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->reset()V

    .line 31
    return-void

    .line 26
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 27
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/buffer/CircleBuffer;->phaseY:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->addCircle(FF)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
