.class public Lcom/linj/album/view/FilterImageView;
.super Landroid/widget/ImageView;
.source "FilterImageView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "FilterImageView"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/linj/album/view/FilterImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 30
    return-void
.end method

.method private removeFilter()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/linj/album/view/FilterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/linj/album/view/FilterImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 72
    :cond_1
    return-void
.end method

.method private setFilter()V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/linj/album/view/FilterImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/linj/album/view/FilterImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    :cond_0
    if-eqz v0, :cond_1

    .line 55
    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/linj/album/view/FilterImageView;->setFilter()V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/linj/album/view/FilterImageView;->performLongClick()Z

    .line 105
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/linj/album/view/FilterImageView;->performClick()Z

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/linj/album/view/FilterImageView;->removeFilter()V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/linj/album/view/FilterImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
