.class public Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "CandleShadowBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/buffer/AbstractBuffer",
        "<",
        "Lcom/github/mikephil/charting/data/CandleEntry;",
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

.method private addShadow(FFFF)V
    .locals 3
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 16
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->index:I

    aput p1, v0, v1

    .line 17
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->index:I

    aput p2, v0, v1

    .line 18
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->index:I

    aput p3, v0, v1

    .line 19
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->index:I

    aput p4, v0, v1

    .line 20
    return-void
.end method


# virtual methods
.method public feed(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/CandleEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    iget v3, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->mTo:I

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->phaseX:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->mFrom:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 27
    .local v2, "size":I
    iget v1, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->mFrom:I

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->reset()V

    .line 34
    return-void

    .line 29
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 30
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->phaseY:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v6

    iget v7, p0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->phaseY:F

    mul-float/2addr v6, v7

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->addShadow(FFFF)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
