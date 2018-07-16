.class public Lcom/github/mikephil/charting/data/BubbleEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BubbleEntry.java"


# instance fields
.field private mSize:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 1
    .param p1, "xIndex"    # I
    .param p2, "val"    # F
    .param p3, "size"    # F

    .prologue
    .line 24
    invoke-direct {p0, p2, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 26
    iput p3, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 27
    return-void
.end method

.method public constructor <init>(IFFLjava/lang/Object;)V
    .locals 1
    .param p1, "xIndex"    # I
    .param p2, "val"    # F
    .param p3, "size"    # F
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p2, p1, p4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FILjava/lang/Object;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 40
    iput p3, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 41
    return-void
.end method


# virtual methods
.method public copy()Lcom/github/mikephil/charting/data/BubbleEntry;
    .locals 5

    .prologue
    .line 45
    new-instance v0, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v2

    iget v3, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleEntry;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/data/BubbleEntry;-><init>(IFFLjava/lang/Object;)V

    .line 47
    .local v0, "c":Lcom/github/mikephil/charting/data/BubbleEntry;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleEntry;->copy()Lcom/github/mikephil/charting/data/BubbleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    return v0
.end method

.method public setSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/github/mikephil/charting/data/BubbleEntry;->mSize:F

    .line 61
    return-void
.end method
