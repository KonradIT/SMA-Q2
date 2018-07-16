.class public abstract Lcom/github/mikephil/charting/data/DataSet;
.super Ljava/lang/Object;
.source "DataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawValues:Z

.field protected mHighlightEnabled:Z

.field private mLabel:Ljava/lang/String;

.field protected mLastEnd:I

.field protected mLastStart:I

.field private mValueColor:I

.field protected transient mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field private mValueTextSize:F

.field private mValueTypeface:Landroid/graphics/Typeface;

.field private mVisible:Z

.field protected mYMax:F

.field protected mYMin:F

.field protected mYVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mYValueSum:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
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
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 35
    iput-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 45
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 50
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 55
    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    .line 60
    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    .line 65
    const-string v0, "DataSet"

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mVisible:Z

    .line 75
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    .line 80
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueColor:I

    .line 85
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTextSize:F

    .line 100
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 105
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mHighlightEnabled:Z

    .line 117
    iput-object p2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    .line 129
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcYValueSum()V

    .line 130
    return-void
.end method

.method private calcYValueSum()V
    .locals 4

    .prologue
    .line 187
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 191
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_1

    .line 192
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 723
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    return-void
.end method

.method public addEntry(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 512
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    if-nez p1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    .line 517
    .local v0, "val":F
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v1, :cond_1

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 522
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 523
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 531
    :cond_2
    :goto_1
    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 534
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_3
    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    .line 526
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 527
    :cond_4
    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    .line 528
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    goto :goto_1
.end method

.method public addEntryOrdered(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 548
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    if-nez p1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 553
    .local v1, "val":F
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    if-nez v2, :cond_1

    .line 554
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 558
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 559
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 567
    :cond_2
    :goto_1
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 569
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 570
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryIndex(I)I

    move-result v0

    .line 571
    .local v0, "closestIndex":I
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 572
    add-int/lit8 v0, v0, 0x1

    .line 573
    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 561
    .end local v0    # "closestIndex":I
    :cond_4
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_5

    .line 562
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 563
    :cond_5
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 564
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    goto :goto_1

    .line 577
    :cond_6
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected calcMinMax(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    .line 144
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 146
    .local v3, "yValCount":I
    if-nez v3, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-eqz p2, :cond_2

    if-lt p2, v3, :cond_3

    .line 152
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 156
    .local v1, "endValue":I
    :goto_1
    iput p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    .line 157
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    .line 159
    iput v7, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 160
    const v4, -0x800001

    iput v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 162
    move v2, p1

    .local v2, "i":I
    :goto_2
    if-le v2, v1, :cond_4

    .line 176
    iget v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 177
    iput v6, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 178
    iput v6, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    goto :goto_0

    .line 154
    .end local v1    # "endValue":I
    .end local v2    # "i":I
    :cond_3
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_1

    .line 164
    .restart local v2    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 166
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    .line 168
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 169
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 171
    :cond_5
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 172
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    .line 162
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 922
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    .line 923
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    .line 924
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->notifyDataSetChanged()V

    .line 925
    return-void
.end method

.method public contains(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 909
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 914
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 909
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 910
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 911
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract copy()Lcom/github/mikephil/charting/data/DataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getAverage()F
    .locals 2

    .prologue
    .line 202
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->getValueCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 468
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 766
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 756
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    return-object v0
.end method

.method public getEntriesForXIndex(I)Ljava/util/List;
    .locals 7
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .line 301
    .local v3, "low":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 303
    .local v2, "high":I
    :goto_0
    if-le v3, v2, :cond_0

    .line 328
    return-object v0

    .line 304
    :cond_0
    add-int v5, v2, v3

    div-int/lit8 v4, v5, 0x2

    .line 305
    .local v4, "m":I
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 307
    .local v1, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 308
    :goto_1
    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-eq v5, p1, :cond_3

    .line 311
    :cond_1
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 312
    :goto_2
    if-lt v4, v2, :cond_4

    .line 322
    :cond_2
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-le p1, v5, :cond_5

    .line 323
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 309
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 313
    :cond_4
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 314
    .restart local v1    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 325
    :cond_5
    add-int/lit8 v2, v4, -0x1

    goto :goto_0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 211
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 2
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryIndex(I)I

    move-result v0

    .line 246
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 248
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryIndex(I)I
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 263
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v2, 0x0

    .line 264
    .local v2, "low":I
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 265
    .local v1, "high":I
    const/4 v0, -0x1

    .line 267
    .local v0, "closest":I
    :goto_0
    if-le v2, v1, :cond_1

    move v3, v0

    .line 285
    :cond_0
    return v3

    .line 268
    :cond_1
    add-int v4, v1, v2

    div-int/lit8 v3, v4, 0x2

    .line 270
    .local v3, "m":I
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 271
    :goto_1
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 272
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 277
    :cond_2
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    if-le p1, v4, :cond_3

    .line 278
    add-int/lit8 v2, v3, 0x1

    .line 282
    :goto_2
    move v0, v3

    goto :goto_0

    .line 280
    :cond_3
    add-int/lit8 v1, v3, -0x1

    goto :goto_2
.end method

.method public getEntryPosition(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 2
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 804
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 809
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 805
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexInEntries(I)I
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 387
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 392
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 388
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .locals 2

    .prologue
    .line 835
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;-><init>(I)V

    .line 837
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    goto :goto_0
.end method

.method public getValueTextColor()I
    .locals 1

    .prologue
    .line 865
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueColor:I

    return v0
.end method

.method public getValueTextSize()F
    .locals 1

    .prologue
    .line 896
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTextSize:F

    return v0
.end method

.method public getValueTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 878
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 355
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    return v0
.end method

.method public getYValForXIndex(I)F
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 225
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 227
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 230
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    goto :goto_0
.end method

.method public getYVals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    return-object v0
.end method

.method public getYValueSum()F
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    return v0
.end method

.method public isDrawValuesEnabled()Z
    .locals 1

    .prologue
    .line 498
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    return v0
.end method

.method public isHighlightEnabled()Z
    .locals 1

    .prologue
    .line 792
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mHighlightEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 459
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mVisible:Z

    return v0
.end method

.method public needsDefaultFormatter()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v0, 0x1

    .line 847
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    if-nez v1, :cond_1

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    instance-of v1, v1, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;

    if-nez v1, :cond_0

    .line 852
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    .line 137
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcYValueSum()V

    .line 138
    return-void
.end method

.method public removeEntry(I)Z
    .locals 2
    .param p1, "xIndex"    # I

    .prologue
    .line 615
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 616
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/DataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    return v1
.end method

.method public removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    if-nez p1, :cond_1

    .line 591
    const/4 v0, 0x0

    .line 604
    :cond_0
    :goto_0
    return v0

    .line 594
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 596
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 599
    .local v1, "val":F
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 601
    iget v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    goto :goto_0
.end method

.method public removeFirst()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v1, 0x0

    .line 627
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 629
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 631
    .local v1, "removed":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 633
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    .line 634
    .local v2, "val":F
    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 636
    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    iget v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    invoke-virtual {p0, v3, v4}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    .line 639
    .end local v2    # "val":F
    :cond_1
    return v1
.end method

.method public removeLast()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    const/4 v1, 0x0

    .line 650
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v1

    .line 653
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 655
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 657
    .local v1, "removed":Z
    :cond_2
    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    .line 660
    .local v2, "val":F
    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mYValueSum:F

    .line 662
    iget v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastStart:I

    iget v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mLastEnd:I

    invoke-virtual {p0, v3, v4}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(II)V

    goto :goto_0
.end method

.method public resetColors()V
    .locals 1

    .prologue
    .line 773
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 774
    return-void
.end method

.method public setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0
    .param p1, "dependency"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 478
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 479
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 735
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->resetColors()V

    .line 736
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 681
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 693
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 694
    return-void
.end method

.method public setColors([ILandroid/content/Context;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 708
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v0, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 714
    iput-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mColors:Ljava/util/List;

    .line 715
    return-void

    .line 710
    :cond_0
    aget v1, p1, v2

    .line 711
    .local v1, "color":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDrawValues(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 489
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mDrawValues:Z

    .line 490
    return-void
.end method

.method public setHighlightEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 783
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mHighlightEnabled:Z

    .line 784
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 430
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V
    .locals 0
    .param p1, "f"    # Lcom/github/mikephil/charting/formatter/ValueFormatter;

    .prologue
    .line 823
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    if-nez p1, :cond_0

    .line 827
    :goto_0
    return-void

    .line 826
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    goto :goto_0
.end method

.method public setValueTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 861
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueColor:I

    .line 862
    return-void
.end method

.method public setValueTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 887
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTextSize:F

    .line 888
    return-void
.end method

.method public setValueTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 874
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValueTypeface:Landroid/graphics/Typeface;

    .line 875
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 449
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mVisible:Z

    .line 450
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 419
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "DataSet, label: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    .local p0, "this":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 405
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 407
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYVals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
