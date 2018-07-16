.class public Lcom/github/mikephil/charting/data/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# instance fields
.field private mData:Ljava/lang/Object;

.field private mVal:F

.field private mXIndex:I


# direct methods
.method public constructor <init>(FI)V
    .locals 1
    .param p1, "val"    # F
    .param p2, "xIndex"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    .line 30
    iput p1, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    .line 31
    iput p2, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    .line 32
    return-void
.end method

.method public constructor <init>(FILjava/lang/Object;)V
    .locals 0
    .param p1, "val"    # F
    .param p2, "xIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    .line 46
    iput-object p3, p0, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    iget v1, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    iget v2, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    iget-object v3, p0, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FILjava/lang/Object;)V

    .line 111
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    return-object v0
.end method

.method public equalTo(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    iget-object v1, p1, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 129
    iget v1, p1, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    iget v2, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    if-ne v1, v2, :cond_0

    .line 132
    iget v1, p1, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    iget v2, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getVal()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    return v0
.end method

.method public getXIndex()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/github/mikephil/charting/data/Entry;->mData:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public setVal(F)V
    .locals 0
    .param p1, "val"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/github/mikephil/charting/data/Entry;->mVal:F

    .line 83
    return-void
.end method

.method public setXIndex(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry, xIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/github/mikephil/charting/data/Entry;->mXIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " val (sum): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
