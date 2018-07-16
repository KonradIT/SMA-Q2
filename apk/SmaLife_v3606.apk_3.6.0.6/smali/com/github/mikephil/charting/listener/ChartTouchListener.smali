.class public abstract Lcom/github/mikephil/charting/listener/ChartTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChartTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<*>;>",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field protected static final DRAG:I = 0x1

.field protected static final NONE:I = 0x0

.field protected static final PINCH_ZOOM:I = 0x4

.field protected static final POST_ZOOM:I = 0x5

.field protected static final ROTATE:I = 0x6

.field protected static final X_ZOOM:I = 0x2

.field protected static final Y_ZOOM:I = 0x3


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/Chart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field protected mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

.field protected mTouchMode:I


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    .local p1, "chart":Lcom/github/mikephil/charting/charts/Chart;, "TT;"
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 22
    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->NONE:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mTouchMode:I

    .line 54
    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    .line 56
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 57
    return-void
.end method

.method protected static distance(FFFF)F
    .locals 4
    .param p0, "eventX"    # F
    .param p1, "startX"    # F
    .param p2, "eventY"    # F
    .param p3, "startY"    # F

    .prologue
    .line 122
    sub-float v0, p0, p1

    .line 123
    .local v0, "dx":F
    sub-float v1, p2, p3

    .line 124
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public endAction(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 81
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-interface {v0, p1, v1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartGestureEnd(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V

    .line 83
    :cond_0
    return-void
.end method

.method public getLastGesture()Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    return-object v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mTouchMode:I

    return v0
.end method

.method public setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 91
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    .line 92
    return-void
.end method

.method public startAction(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    move-result-object v0

    .line 68
    .local v0, "l":Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-interface {v0, p1, v1}, Lcom/github/mikephil/charting/listener/OnChartGestureListener;->onChartGestureStart(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V

    .line 70
    :cond_0
    return-void
.end method
