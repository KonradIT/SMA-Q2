.class public Lcom/github/mikephil/charting/buffer/BarBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "BarBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/buffer/AbstractBuffer",
        "<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBarSpace:F

.field protected mContainsStacks:Z

.field protected mDataSetCount:I

.field protected mDataSetIndex:I

.field protected mGroupSpace:F

.field protected mInverted:Z


# direct methods
.method public constructor <init>(IFIZ)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "groupspace"    # F
    .param p3, "dataSetCount"    # I
    .param p4, "containsStacks"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    .line 10
    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    .line 11
    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    .line 12
    iput v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    .line 14
    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    .line 15
    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    .line 19
    iput p2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    .line 20
    iput p3, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    .line 21
    iput-boolean p4, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    .line 22
    return-void
.end method


# virtual methods
.method protected addBar(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p1, v0, v1

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p3, v0, v1

    .line 41
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p4, v0, v1

    .line 42
    return-void
.end method

.method public feed(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    move/from16 v21, v0

    mul-float v13, v20, v21

    .line 49
    .local v13, "size":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    move/from16 v20, v0

    add-int/lit8 v4, v20, -0x1

    .line 50
    .local v4, "dataSetOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v1, v20, v21

    .line 51
    .local v1, "barSpaceHalf":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v6, v20, v21

    .line 52
    .local v6, "groupSpaceHalf":F
    const/high16 v2, 0x3f000000    # 0.5f

    .line 54
    .local v2, "barWidth":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    int-to-float v0, v7

    move/from16 v20, v0

    cmpg-float v20, v20, v13

    if-ltz v20, :cond_0

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->reset()V

    .line 127
    return-void

    .line 56
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    .line 59
    .local v5, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v20

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v21

    mul-int v21, v21, v4

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 60
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    move/from16 v21, v0

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    .line 59
    add-float v20, v20, v21

    add-float v17, v20, v6

    .line 61
    .local v17, "x":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v18

    .line 62
    .local v18, "y":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v15

    .line 64
    .local v15, "vals":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    if-nez v15, :cond_9

    .line 66
    :cond_1
    sub-float v20, v17, v2

    add-float v9, v20, v1

    .line 67
    .local v9, "left":F
    add-float v20, v17, v2

    sub-float v12, v20, v1

    .line 69
    .local v12, "right":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 70
    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-ltz v20, :cond_3

    move/from16 v3, v18

    .line 71
    .local v3, "bottom":F
    :goto_1
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_4

    move/from16 v14, v18

    .line 78
    .local v14, "top":F
    :goto_2
    const/16 v20, 0x0

    cmpl-float v20, v14, v20

    if-lez v20, :cond_8

    .line 79
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v14, v14, v20

    .line 83
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v12, v3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    .line 54
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 70
    .restart local v9    # "left":F
    .restart local v12    # "right":F
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 71
    .restart local v3    # "bottom":F
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 73
    .end local v3    # "bottom":F
    :cond_5
    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-ltz v20, :cond_6

    move/from16 v14, v18

    .line 74
    .restart local v14    # "top":F
    :goto_4
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_7

    move/from16 v3, v18

    .restart local v3    # "bottom":F
    :goto_5
    goto :goto_2

    .line 73
    .end local v3    # "bottom":F
    .end local v14    # "top":F
    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 74
    .restart local v14    # "top":F
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 81
    .restart local v3    # "bottom":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v3, v3, v20

    goto :goto_3

    .line 87
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_9
    const/4 v11, 0x0

    .line 88
    .local v11, "posY":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v20

    move/from16 v0, v20

    neg-float v10, v0

    .line 89
    .local v10, "negY":F
    const/16 v19, 0x0

    .line 92
    .local v19, "yStart":F
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_6
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 94
    aget v16, v15, v8

    .line 96
    .local v16, "value":F
    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-ltz v20, :cond_a

    .line 97
    move/from16 v18, v11

    .line 98
    add-float v19, v11, v16

    .line 99
    move/from16 v11, v19

    .line 106
    :goto_7
    sub-float v20, v17, v2

    add-float v9, v20, v1

    .line 107
    .restart local v9    # "left":F
    add-float v20, v17, v2

    sub-float v12, v20, v1

    .line 109
    .restart local v12    # "right":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 110
    cmpl-float v20, v18, v19

    if-ltz v20, :cond_b

    move/from16 v3, v18

    .line 111
    .restart local v3    # "bottom":F
    :goto_8
    cmpg-float v20, v18, v19

    if-gtz v20, :cond_c

    move/from16 v14, v18

    .line 118
    .restart local v14    # "top":F
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v14, v14, v20

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v3, v3, v20

    .line 121
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v12, v3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 101
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_a
    move/from16 v18, v10

    .line 102
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v19, v10, v20

    .line 103
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v10, v10, v20

    goto :goto_7

    .restart local v9    # "left":F
    .restart local v12    # "right":F
    :cond_b
    move/from16 v3, v19

    .line 110
    goto :goto_8

    .restart local v3    # "bottom":F
    :cond_c
    move/from16 v14, v19

    .line 111
    goto :goto_9

    .line 113
    .end local v3    # "bottom":F
    :cond_d
    cmpl-float v20, v18, v19

    if-ltz v20, :cond_e

    move/from16 v14, v18

    .line 114
    .restart local v14    # "top":F
    :goto_a
    cmpg-float v20, v18, v19

    if-gtz v20, :cond_f

    move/from16 v3, v18

    .restart local v3    # "bottom":F
    :goto_b
    goto :goto_9

    .end local v3    # "bottom":F
    .end local v14    # "top":F
    :cond_e
    move/from16 v14, v19

    .line 113
    goto :goto_a

    .restart local v14    # "top":F
    :cond_f
    move/from16 v3, v19

    .line 114
    goto :goto_b
.end method

.method public setBarSpace(F)V
    .locals 0
    .param p1, "barspace"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    .line 26
    return-void
.end method

.method public setDataSet(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    .line 30
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    .line 34
    return-void
.end method
