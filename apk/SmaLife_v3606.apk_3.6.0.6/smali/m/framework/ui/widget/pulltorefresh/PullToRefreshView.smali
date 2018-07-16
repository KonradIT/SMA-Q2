.class public Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;
.super Landroid/widget/RelativeLayout;
.source "PullToRefreshView.java"


# static fields
.field private static final MIN_REF_TIME:J = 0x3e8L


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->reversePulling()V

    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopRequest()V

    return-void
.end method

.method private canPull()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->isPullReady()Z

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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 128
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    iput-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method private performRequest()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->refreshTime:J

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    .line 136
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onRequest()V

    .line 139
    :cond_0
    return-void
.end method

.method private reversePulling()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 161
    invoke-virtual {p0, v0, v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->scrollTo(II)V

    .line 163
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onReversed()V

    .line 166
    :cond_0
    return-void
.end method

.method private stopRequest()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    .line 143
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 78
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 83
    .local v0, "curY":F
    iget-boolean v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->canPull()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    :cond_1
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 85
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    if-lez v1, :cond_4

    .line 86
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->scrollTo(II)V

    .line 87
    iget-boolean v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    .line 90
    :cond_2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 96
    :cond_3
    :goto_1
    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->downY:F

    goto :goto_0

    .line 92
    :cond_4
    iput v4, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 93
    invoke-virtual {p0, v4, v4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->scrollTo(II)V

    goto :goto_1

    .line 101
    .end local v0    # "curY":F
    :pswitch_2
    iget-boolean v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->requesting:Z

    if-nez v1, :cond_7

    .line 102
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    if-le v1, v2, :cond_6

    .line 103
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    iput v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 104
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->scrollTo(II)V

    .line 105
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    .line 108
    :cond_5
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->performRequest()V

    .line 109
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->getCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 110
    goto :goto_0

    :cond_6
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->reversePulling()V

    .line 112
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    invoke-virtual {v1, v4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->onPullDown(I)V

    goto/16 :goto_0

    .line 117
    :cond_7
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    iput v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 118
    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v4, v1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->scrollTo(II)V

    goto/16 :goto_0

    .line 76
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

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    .line 183
    return-void
.end method

.method public performPulling(Z)V
    .locals 2
    .param p1, "request"    # Z

    .prologue
    .line 151
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    iput v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    .line 152
    const/4 v0, 0x0

    iget v1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->scrollTo(II)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-direct {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->performRequest()V

    .line 156
    :cond_0
    return-void
.end method

.method public releaseLock()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->pullingLock:Z

    .line 188
    return-void
.end method

.method public setAdapter(Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;)V
    .locals 8
    .param p1, "adapter"    # Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 54
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;

    .line 55
    invoke-virtual {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->removeAllViews()V

    .line 57
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->bodyView:Landroid/view/View;

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v0, "lpBody":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 60
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 62
    iget-object v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->bodyView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getHeaderView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    .line 65
    iget-object v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 66
    iget-object v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    .line 67
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v1, "lpHead":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    iget v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerHeight:I

    neg-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 72
    iget-object v2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method public stopPulling()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    .local v0, "curTime":J
    iget-wide v4, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->refreshTime:J

    sub-long v2, v0, v4

    .line 172
    .local v2, "delta":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_0

    .line 173
    iget-object v4, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    sub-long/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v4, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->stopAct:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
