.class public Lcom/smalife/utils/PullToRefresthLayout;
.super Landroid/widget/ScrollView;
.source "PullToRefresthLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;
    }
.end annotation


# instance fields
.field private canRefresh:Z

.field private isDown:Z

.field private isRefreshing:Z

.field private iv:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderHeight:I

.field private mHeight:I

.field private mOnRefreshListener:Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

.field private pb:Landroid/widget/ProgressBar;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smalife/utils/PullToRefresthLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->isDown:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/utils/PullToRefresthLayout;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/smalife/utils/PullToRefresthLayout;->isRefreshing:Z

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/utils/PullToRefresthLayout;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->iv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/utils/PullToRefresthLayout;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    return v0
.end method

.method static synthetic access$3(Lcom/smalife/utils/PullToRefresthLayout;)Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->mOnRefreshListener:Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    return-object v0
.end method


# virtual methods
.method public completeRefresh(Z)V
    .locals 4
    .param p1, "isSucceed"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->tv:Landroid/widget/TextView;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/smalife/utils/PullToRefresthLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/smalife/utils/PullToRefresthLayout$1;-><init>(Lcom/smalife/utils/PullToRefresthLayout;Z)V

    .line 146
    const-wide/16 v2, 0x2ee

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->tv:Landroid/widget/TextView;

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 187
    div-int/lit8 v0, p1, 0x8

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->fling(I)V

    .line 188
    return-void
.end method

.method public getCanRefresh()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->canRefresh:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/smalife/utils/PullToRefresthLayout;->isRefreshing:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const/4 v0, 0x0

    iget v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/smalife/utils/PullToRefresthLayout;->scrollTo(II)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 65
    invoke-virtual {p0, v4}, Lcom/smalife/utils/PullToRefresthLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    .line 68
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeight:I

    .line 69
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/smalife/utils/PullToRefresthLayout;->setMeasuredDimension(II)V

    .line 71
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 72
    .local v0, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/smalife/utils/PullToRefresthLayout;->iv:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/smalife/utils/PullToRefresthLayout;->pb:Landroid/widget/ProgressBar;

    .line 74
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/utils/PullToRefresthLayout;->tv:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x2

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 153
    iget-boolean v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->isRefreshing:Z

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    if-ge p2, v1, :cond_2

    .line 157
    iget-boolean v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->isDown:Z

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->isDown:Z

    .line 159
    iget-object v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->iv:Landroid/widget/ImageView;

    const-string v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 161
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 163
    iget-object v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->tv:Landroid/widget/TextView;

    const v2, 0x7f09006b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 165
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_2
    iget v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    if-le p2, v1, :cond_0

    .line 166
    iget-boolean v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->isDown:Z

    if-nez v1, :cond_0

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->isDown:Z

    .line 168
    iget-object v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->iv:Landroid/widget/ImageView;

    const-string v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 170
    .restart local v0    # "oa":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 171
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    iget-object v1, p0, Lcom/smalife/utils/PullToRefresthLayout;->tv:Landroid/widget/TextView;

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 159
    nop

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    .line 168
    :array_1
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 88
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 92
    :pswitch_1
    iget-object v2, p0, Lcom/smalife/utils/PullToRefresthLayout;->mOnRefreshListener:Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/smalife/utils/PullToRefresthLayout;->mOnRefreshListener:Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    invoke-interface {v2}, Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;->preRefresh()V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-boolean v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->canRefresh:Z

    if-eqz v3, :cond_4

    .line 100
    iget-boolean v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->isRefreshing:Z

    if-nez v3, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/smalife/utils/PullToRefresthLayout;->getScrollY()I

    move-result v3

    iget v4, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    if-le v3, v4, :cond_2

    .line 102
    iget v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v5, v3}, Lcom/smalife/utils/PullToRefresthLayout;->smoothScrollTo(II)V

    goto :goto_1

    .line 104
    :cond_2
    iget v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    invoke-virtual {p0, v5, v3}, Lcom/smalife/utils/PullToRefresthLayout;->smoothScrollTo(II)V

    .line 105
    iput-boolean v2, p0, Lcom/smalife/utils/PullToRefresthLayout;->isRefreshing:Z

    .line 106
    iget-object v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    iget-object v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->iv:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->iv:Landroid/widget/ImageView;

    .line 109
    const-string v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 108
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 110
    .local v1, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    iget-object v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->tv:Landroid/widget/TextView;

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->mOnRefreshListener:Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->mOnRefreshListener:Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    invoke-interface {v3}, Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;->startRefresh()V

    goto :goto_1

    .line 118
    .end local v1    # "oa":Landroid/animation/ObjectAnimator;
    :cond_3
    iget v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    invoke-virtual {p0, v5, v3}, Lcom/smalife/utils/PullToRefresthLayout;->smoothScrollTo(II)V

    goto :goto_1

    .line 121
    :cond_4
    iget v3, p0, Lcom/smalife/utils/PullToRefresthLayout;->mHeaderHeight:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v5, v3}, Lcom/smalife/utils/PullToRefresthLayout;->smoothScrollTo(II)V

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 109
    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

.method public setCanRefresh(Z)V
    .locals 0
    .param p1, "c"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/smalife/utils/PullToRefresthLayout;->canRefresh:Z

    .line 56
    return-void
.end method

.method public setOnRefreshListener(Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/smalife/utils/PullToRefresthLayout;->mOnRefreshListener:Lcom/smalife/utils/PullToRefresthLayout$OnRefreshListener;

    .line 48
    return-void
.end method
