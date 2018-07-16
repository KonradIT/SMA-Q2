.class public Lcom/linj/camera/view/FocusImageView;
.super Landroid/widget/ImageView;
.source "FocusImageView.java"


# static fields
.field private static final NO_ID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "FocusImageView"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mFocusFailedImg:I

.field private mFocusImg:I

.field private mFocusSucceedImg:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    iput v0, p0, Lcom/linj/camera/view/FocusImageView;->mFocusImg:I

    .line 34
    iput v0, p0, Lcom/linj/camera/view/FocusImageView;->mFocusSucceedImg:I

    .line 35
    iput v0, p0, Lcom/linj/camera/view/FocusImageView;->mFocusFailedImg:I

    .line 40
    invoke-virtual {p0}, Lcom/linj/camera/view/FocusImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/linj/cameralibrary/R$anim;->focusview_show:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/linj/camera/view/FocusImageView;->mAnimation:Landroid/view/animation/Animation;

    .line 41
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/linj/camera/view/FocusImageView;->setVisibility(I)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/linj/camera/view/FocusImageView;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v3, p0, Lcom/linj/camera/view/FocusImageView;->mFocusImg:I

    .line 34
    iput v3, p0, Lcom/linj/camera/view/FocusImageView;->mFocusSucceedImg:I

    .line 35
    iput v3, p0, Lcom/linj/camera/view/FocusImageView;->mFocusFailedImg:I

    .line 47
    invoke-virtual {p0}, Lcom/linj/camera/view/FocusImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/linj/cameralibrary/R$anim;->focusview_show:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/linj/camera/view/FocusImageView;->mAnimation:Landroid/view/animation/Animation;

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/linj/camera/view/FocusImageView;->mHandler:Landroid/os/Handler;

    .line 50
    sget-object v1, Lcom/linj/cameralibrary/R$styleable;->FocusImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/linj/cameralibrary/R$styleable;->FocusImageView_focus_focusing_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusImg:I

    .line 52
    sget v1, Lcom/linj/cameralibrary/R$styleable;->FocusImageView_focus_success_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusSucceedImg:I

    .line 53
    sget v1, Lcom/linj/cameralibrary/R$styleable;->FocusImageView_focus_fail_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusFailedImg:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    iget v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusImg:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusSucceedImg:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusFailedImg:I

    if-ne v1, v3, :cond_1

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Animation is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public onFocusFailed()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    iget v0, p0, Lcom/linj/camera/view/FocusImageView;->mFocusFailedImg:I

    invoke-virtual {p0, v0}, Lcom/linj/camera/view/FocusImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/linj/camera/view/FocusImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/linj/camera/view/FocusImageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/linj/camera/view/FocusImageView$3;

    invoke-direct {v1, p0}, Lcom/linj/camera/view/FocusImageView$3;-><init>(Lcom/linj/camera/view/FocusImageView;)V

    .line 118
    const-wide/16 v2, 0x3e8

    .line 112
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    return-void
.end method

.method public onFocusSuccess()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    iget v0, p0, Lcom/linj/camera/view/FocusImageView;->mFocusSucceedImg:I

    invoke-virtual {p0, v0}, Lcom/linj/camera/view/FocusImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/linj/camera/view/FocusImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/linj/camera/view/FocusImageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/linj/camera/view/FocusImageView$2;

    invoke-direct {v1, p0}, Lcom/linj/camera/view/FocusImageView$2;-><init>(Lcom/linj/camera/view/FocusImageView;)V

    .line 101
    const-wide/16 v2, 0x3e8

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method public setFocusImg(I)V
    .locals 0
    .param p1, "focus"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusImg:I

    .line 127
    return-void
.end method

.method public setFocusSucceedImg(I)V
    .locals 0
    .param p1, "focusSucceed"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusSucceedImg:I

    .line 135
    return-void
.end method

.method public startFocus(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, -0x1

    .line 67
    iget v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusImg:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusSucceedImg:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusFailedImg:I

    if-ne v1, v2, :cond_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "focus image is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/linj/camera/view/FocusImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/linj/camera/view/FocusImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 72
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/linj/camera/view/FocusImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 73
    invoke-virtual {p0, v0}, Lcom/linj/camera/view/FocusImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/FocusImageView;->setVisibility(I)V

    .line 76
    iget v1, p0, Lcom/linj/camera/view/FocusImageView;->mFocusImg:I

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/FocusImageView;->setImageResource(I)V

    .line 77
    iget-object v1, p0, Lcom/linj/camera/view/FocusImageView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/linj/camera/view/FocusImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    iget-object v1, p0, Lcom/linj/camera/view/FocusImageView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/linj/camera/view/FocusImageView$1;

    invoke-direct {v2, p0}, Lcom/linj/camera/view/FocusImageView$1;-><init>(Lcom/linj/camera/view/FocusImageView;)V

    .line 85
    const-wide/16 v4, 0xdac

    .line 79
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method
