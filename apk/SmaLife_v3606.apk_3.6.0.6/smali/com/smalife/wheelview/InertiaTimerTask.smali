.class final Lcom/smalife/wheelview/InertiaTimerTask;
.super Ljava/util/TimerTask;
.source "InertiaTimerTask.java"


# instance fields
.field a:F

.field final loopView:Lcom/smalife/wheelview/WheelView;

.field final velocityY:F


# direct methods
.method constructor <init>(Lcom/smalife/wheelview/WheelView;F)V
    .locals 1
    .param p1, "loopview"    # Lcom/smalife/wheelview/WheelView;
    .param p2, "velocityY"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    .line 14
    iput p2, p0, Lcom/smalife/wheelview/InertiaTimerTask;->velocityY:F

    .line 15
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/high16 v6, 0x44fa0000    # 2000.0f

    const-wide v10, 0x3fd3333333333333L    # 0.3

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    .line 19
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    const/high16 v5, 0x4f000000

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 20
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->velocityY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 21
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->velocityY:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1

    .line 22
    iput v6, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    .line 30
    :cond_0
    :goto_0
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_3

    .line 31
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v4}, Lcom/smalife/wheelview/WheelView;->cancelFuture()V

    .line 32
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget-object v4, v4, Lcom/smalife/wheelview/WheelView;->handler:Landroid/os/Handler;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    :goto_1
    return-void

    .line 24
    :cond_1
    const/high16 v4, -0x3b060000    # -2000.0f

    iput v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    goto :goto_0

    .line 27
    :cond_2
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->velocityY:F

    iput v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    goto :goto_0

    .line 35
    :cond_3
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 36
    .local v1, "i":I
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget-object v5, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v5, v5, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    sub-int/2addr v5, v1

    iput v5, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    .line 37
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget-boolean v4, v4, Lcom/smalife/wheelview/WheelView;->isLoop:Z

    if-nez v4, :cond_5

    .line 38
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v2, v4, Lcom/smalife/wheelview/WheelView;->itemHeight:F

    .line 39
    .local v2, "itemHeight":F
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v4, v4, Lcom/smalife/wheelview/WheelView;->initPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v3, v4, v2

    .line 40
    .local v3, "top":F
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v4}, Lcom/smalife/wheelview/WheelView;->getItemsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v5, v5, Lcom/smalife/wheelview/WheelView;->initPosition:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v0, v4, v2

    .line 41
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v4, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-double v4, v4

    float-to-double v6, v2

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    float-to-double v6, v3

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    .line 42
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v4, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    add-int/2addr v4, v1

    int-to-float v3, v4

    .line 47
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v4, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v4, v4

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_7

    .line 48
    const/high16 v4, 0x42200000    # 40.0f

    iput v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    .line 49
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    float-to-int v5, v3

    iput v5, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    .line 55
    .end local v0    # "bottom":F
    .end local v2    # "itemHeight":F
    .end local v3    # "top":F
    :cond_5
    :goto_3
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_8

    .line 56
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    add-float/2addr v4, v9

    iput v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    .line 60
    :goto_4
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget-object v4, v4, Lcom/smalife/wheelview/WheelView;->handler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 43
    .restart local v0    # "bottom":F
    .restart local v2    # "itemHeight":F
    .restart local v3    # "top":F
    :cond_6
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v4, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-double v4, v4

    float-to-double v6, v2

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    float-to-double v6, v0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 44
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v4, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    add-int/2addr v4, v1

    int-to-float v0, v4

    goto :goto_2

    .line 50
    :cond_7
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    iget v4, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_5

    .line 51
    iget-object v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->loopView:Lcom/smalife/wheelview/WheelView;

    float-to-int v5, v0

    iput v5, v4, Lcom/smalife/wheelview/WheelView;->totalScrollY:I

    .line 52
    const/high16 v4, -0x3de00000    # -40.0f

    iput v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    goto :goto_3

    .line 58
    .end local v0    # "bottom":F
    .end local v2    # "itemHeight":F
    .end local v3    # "top":F
    :cond_8
    iget v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    sub-float/2addr v4, v9

    iput v4, p0, Lcom/smalife/wheelview/InertiaTimerTask;->a:F

    goto :goto_4
.end method
