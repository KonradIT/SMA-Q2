.class public Lcom/github/mikephil/charting/utils/SelectionDetail;
.super Ljava/lang/Object;
.source "SelectionDetail.java"


# instance fields
.field public dataSet:Lcom/github/mikephil/charting/data/DataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;"
        }
    .end annotation
.end field

.field public dataSetIndex:I

.field public val:F


# direct methods
.method public constructor <init>(FILcom/github/mikephil/charting/data/DataSet;)V
    .locals 0
    .param p1, "val"    # F
    .param p2, "dataSetIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/github/mikephil/charting/utils/SelectionDetail;->val:F

    .line 21
    iput p2, p0, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSetIndex:I

    .line 22
    iput-object p3, p0, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSet:Lcom/github/mikephil/charting/data/DataSet;

    .line 23
    return-void
.end method
