.class public Lcom/github/mikephil/charting/jobs/MoveViewJob;
.super Ljava/lang/Object;
.source "MoveViewJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mTrans:Lcom/github/mikephil/charting/utils/Transformer;

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

.field protected view:Landroid/view/View;

.field protected xIndex:F

.field protected yValue:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)V
    .locals 1
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "xIndex"    # F
    .param p3, "yValue"    # F
    .param p4, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p5, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->xIndex:F

    .line 20
    iput v0, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->yValue:F

    .line 27
    iput-object p1, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 28
    iput p2, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->xIndex:F

    .line 29
    iput p3, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->yValue:F

    .line 30
    iput-object p4, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 31
    iput-object p5, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->view:Landroid/view/View;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    .line 38
    iget v2, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->xIndex:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->yValue:F

    aput v2, v0, v1

    .line 41
    .local v0, "pts":[F
    iget-object v1, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 42
    iget-object v1, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/jobs/MoveViewJob;->view:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->centerViewPort([FLandroid/view/View;)V

    .line 43
    return-void
.end method
