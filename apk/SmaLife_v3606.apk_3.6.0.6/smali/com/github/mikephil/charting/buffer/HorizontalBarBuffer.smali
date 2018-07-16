.class public Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;
.super Lcom/github/mikephil/charting/buffer/BarBuffer;
.source "HorizontalBarBuffer.java"


# direct methods
.method public constructor <init>(IFIZ)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "groupspace"    # F
    .param p3, "dataSetCount"    # I
    .param p4, "containsStacks"    # Z

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IFIZ)V

    .line 12
    return-void
.end method


# virtual methods
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
    .line 17
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseX:F

    move/from16 v21, v0

    mul-float v13, v20, v21

    .line 19
    .local v13, "size":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mDataSetCount:I

    move/from16 v20, v0

    add-int/lit8 v4, v20, -0x1

    .line 20
    .local v4, "dataSetOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mBarSpace:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v1, v20, v21

    .line 21
    .local v1, "barSpaceHalf":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mGroupSpace:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v6, v20, v21

    .line 22
    .local v6, "groupSpaceHalf":F
    const/high16 v2, 0x3f000000    # 0.5f

    .line 24
    .local v2, "barWidth":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    int-to-float v0, v7

    move/from16 v20, v0

    cmpg-float v20, v20, v13

    if-ltz v20, :cond_0

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->reset()V

    .line 97
    return-void

    .line 26
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    .line 29
    .local v5, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v20

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v21

    mul-int v21, v21, v4

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mDataSetIndex:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mGroupSpace:F

    move/from16 v21, v0

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    .line 29
    add-float v20, v20, v21

    add-float v17, v20, v6

    .line 31
    .local v17, "x":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v18

    .line 32
    .local v18, "y":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v15

    .line 34
    .local v15, "vals":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mContainsStacks:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    if-nez v15, :cond_9

    .line 36
    :cond_1
    sub-float v20, v17, v2

    add-float v3, v20, v1

    .line 37
    .local v3, "bottom":F
    add-float v20, v17, v2

    sub-float v14, v20, v1

    .line 39
    .local v14, "top":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mInverted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 40
    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-ltz v20, :cond_3

    move/from16 v9, v18

    .line 41
    .local v9, "left":F
    :goto_1
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_4

    move/from16 v12, v18

    .line 48
    .local v12, "right":F
    :goto_2
    const/16 v20, 0x0

    cmpl-float v20, v12, v20

    if-lez v20, :cond_8

    .line 49
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v12, v12, v20

    .line 53
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v12, v3}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    .line 24
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 40
    .restart local v3    # "bottom":F
    .restart local v14    # "top":F
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 41
    .restart local v9    # "left":F
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 43
    .end local v9    # "left":F
    :cond_5
    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-ltz v20, :cond_6

    move/from16 v12, v18

    .line 44
    .restart local v12    # "right":F
    :goto_4
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_7

    move/from16 v9, v18

    .restart local v9    # "left":F
    :goto_5
    goto :goto_2

    .line 43
    .end local v9    # "left":F
    .end local v12    # "right":F
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 44
    .restart local v12    # "right":F
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 51
    .restart local v9    # "left":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v9, v9, v20

    goto :goto_3

    .line 57
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_9
    const/4 v11, 0x0

    .line 58
    .local v11, "posY":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v20

    move/from16 v0, v20

    neg-float v10, v0

    .line 59
    .local v10, "negY":F
    const/16 v19, 0x0

    .line 62
    .local v19, "yStart":F
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_6
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 64
    aget v16, v15, v8

    .line 66
    .local v16, "value":F
    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-ltz v20, :cond_a

    .line 67
    move/from16 v18, v11

    .line 68
    add-float v19, v11, v16

    .line 69
    move/from16 v11, v19

    .line 76
    :goto_7
    sub-float v20, v17, v2

    add-float v3, v20, v1

    .line 77
    .restart local v3    # "bottom":F
    add-float v20, v17, v2

    sub-float v14, v20, v1

    .line 79
    .restart local v14    # "top":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mInverted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 80
    cmpl-float v20, v18, v19

    if-ltz v20, :cond_b

    move/from16 v9, v18

    .line 81
    .restart local v9    # "left":F
    :goto_8
    cmpg-float v20, v18, v19

    if-gtz v20, :cond_c

    move/from16 v12, v18

    .line 88
    .restart local v12    # "right":F
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v12, v12, v20

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v9, v9, v20

    .line 91
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v12, v3}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    .line 62
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 71
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_a
    move/from16 v18, v10

    .line 72
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v19, v10, v20

    .line 73
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v10, v10, v20

    goto :goto_7

    .restart local v3    # "bottom":F
    .restart local v14    # "top":F
    :cond_b
    move/from16 v9, v19

    .line 80
    goto :goto_8

    .restart local v9    # "left":F
    :cond_c
    move/from16 v12, v19

    .line 81
    goto :goto_9

    .line 83
    .end local v9    # "left":F
    :cond_d
    cmpl-float v20, v18, v19

    if-ltz v20, :cond_e

    move/from16 v12, v18

    .line 84
    .restart local v12    # "right":F
    :goto_a
    cmpg-float v20, v18, v19

    if-gtz v20, :cond_f

    move/from16 v9, v18

    .restart local v9    # "left":F
    :goto_b
    goto :goto_9

    .end local v9    # "left":F
    .end local v12    # "right":F
    :cond_e
    move/from16 v12, v19

    .line 83
    goto :goto_a

    .restart local v12    # "right":F
    :cond_f
    move/from16 v9, v19

    .line 84
    goto :goto_b
.end method
