.class public Lcom/github/mikephil/charting/highlight/Highlight;
.super Ljava/lang/Object;
.source "Highlight.java"


# instance fields
.field private mDataSetIndex:I

.field private mRange:Lcom/github/mikephil/charting/highlight/Range;

.field private mStackIndex:I

.field private mXIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "dataSet"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    .line 30
    iput p1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mXIndex:I

    .line 31
    iput p2, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    .line 32
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "dataSet"    # I
    .param p3, "stackIndex"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    .line 44
    iput p3, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    .line 45
    return-void
.end method

.method public constructor <init>(IIILcom/github/mikephil/charting/highlight/Range;)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "dataSet"    # I
    .param p3, "stackIndex"    # I
    .param p4, "range"    # Lcom/github/mikephil/charting/highlight/Range;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(III)V

    .line 58
    iput-object p4, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mRange:Lcom/github/mikephil/charting/highlight/Range;

    .line 59
    return-void
.end method


# virtual methods
.method public equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z
    .locals 3
    .param p1, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mXIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mXIndex:I

    if-ne v1, v2, :cond_0

    .line 110
    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    if-ne v1, v2, :cond_0

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDataSetIndex()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    return v0
.end method

.method public getRange()Lcom/github/mikephil/charting/highlight/Range;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mRange:Lcom/github/mikephil/charting/highlight/Range;

    return-object v0
.end method

.method public getStackIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    return v0
.end method

.method public getXIndex()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mXIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Highlight, xIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mXIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string v1, ", stackIndex (only stacked barentry): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/highlight/Highlight;->mStackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
