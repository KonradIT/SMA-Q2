.class Lcom/linj/album/view/MatrixImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MatrixImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/album/view/MatrixImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private final listener:Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;

.field final synthetic this$0:Lcom/linj/album/view/MatrixImageView;


# direct methods
.method public constructor <init>(Lcom/linj/album/view/MatrixImageView;Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/linj/album/view/MatrixImageView$GestureListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 424
    iput-object p2, p0, Lcom/linj/album/view/MatrixImageView$GestureListener;->listener:Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;

    .line 425
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$GestureListener;->listener:Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;

    invoke-virtual {v0}, Lcom/linj/album/view/MatrixImageView$MatrixTouchListener;->onDoubleClick()V

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
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
    .line 458
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 447
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 452
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 465
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$GestureListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v0}, Lcom/linj/album/view/MatrixImageView;->access$6(Lcom/linj/album/view/MatrixImageView;)Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$GestureListener;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v0}, Lcom/linj/album/view/MatrixImageView;->access$6(Lcom/linj/album/view/MatrixImageView;)Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;->onSingleTap()V

    .line 476
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
