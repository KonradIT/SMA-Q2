.class final Lcom/smalife/wheelview/LoopViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field final loopView:Lcom/smalife/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/smalife/wheelview/WheelView;)V
    .locals 0
    .param p1, "loopview"    # Lcom/smalife/wheelview/WheelView;

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/smalife/wheelview/LoopViewGestureListener;->loopView:Lcom/smalife/wheelview/WheelView;

    .line 11
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 14
    iget-object v0, p0, Lcom/smalife/wheelview/LoopViewGestureListener;->loopView:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v0, p4}, Lcom/smalife/wheelview/WheelView;->scrollBy(F)V

    .line 15
    const/4 v0, 0x1

    return v0
.end method
