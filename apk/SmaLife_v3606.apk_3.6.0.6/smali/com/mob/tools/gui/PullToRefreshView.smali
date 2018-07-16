.class public Lcom/mob/tools/gui/PullToRefreshView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final MIN_REF_TIME:J = 0x3e8L


# instance fields
.field private adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

.field private bodyView:Landroid/view/View;

.field private downY:F

.field private headerHeight:I

.field private headerView:Landroid/view/View;

.field private pullingLock:Z

.field private refreshTime:J

.field private requesting:Z

.field private stopAct:Ljava/lang/Runnable;

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->reversePulling()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->stopRequest()V

    return-void
.end method

.method private canPull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->pullingLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRefreshAdatper;->isPullReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/mob/tools/gui/PullToRefreshView$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/PullToRefreshView$1;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    return-void
.end method

.method private performRequest()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->refreshTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->requesting:Z

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRefreshAdatper;->onRequest()V

    :cond_0
    return-void
.end method

.method private reversePulling()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    invoke-virtual {p0, v0, v0}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRefreshAdatper;->onReversed()V

    :cond_0
    return-void
.end method

.method private stopRequest()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->requesting:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->downY:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-boolean v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->requesting:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->canPull()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->downY:F

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    iget-boolean v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->requesting:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    iget v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerHeight:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/PullToRefreshAdatper;->onPullDown(I)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRefreshView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_3
    :goto_1
    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->downY:F

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    invoke-virtual {p0, v4, v4}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->requesting:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerHeight:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerHeight:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/PullToRefreshAdatper;->onPullDown(I)V

    :cond_5
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->performRequest()V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRefreshView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->reversePulling()V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    invoke-virtual {v0, v4}, Lcom/mob/tools/gui/PullToRefreshAdatper;->onPullDown(I)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerHeight:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public lockPulling()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->pullingLock:Z

    return-void
.end method

.method public performPulling(Z)V
    .locals 2

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerHeight:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->performRequest()V

    :cond_0
    return-void
.end method

.method public releaseLock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->pullingLock:Z

    return-void
.end method

.method public setAdapter(Lcom/mob/tools/gui/PullToRefreshAdatper;)V
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v2, 0x0

    const/4 v3, -0x1

    iput-object p1, p0, Lcom/mob/tools/gui/PullToRefreshView;->adapter:Lcom/mob/tools/gui/PullToRefreshAdatper;

    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRefreshView;->removeAllViews()V

    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRefreshAdatper;->getBodyView()Lcom/mob/tools/gui/Scrollable;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->bodyView:Landroid/view/View;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->bodyView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/gui/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRefreshAdatper;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerView:Landroid/view/View;

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerView:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerHeight:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerHeight:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/gui/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public stopPulling()V
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->refreshTime:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    sub-long v0, v4, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/mob/tools/gui/PullToRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/PullToRefreshView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
