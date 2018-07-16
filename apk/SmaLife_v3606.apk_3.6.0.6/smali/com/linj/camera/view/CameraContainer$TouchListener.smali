.class final Lcom/linj/camera/view/CameraContainer$TouchListener;
.super Ljava/lang/Object;
.source "CameraContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/camera/view/CameraContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchListener"
.end annotation


# static fields
.field private static final MODE_INIT:I = 0x0

.field private static final MODE_ZOOM:I = 0x1


# instance fields
.field private mode:I

.field private startDis:F

.field final synthetic this$0:Lcom/linj/camera/view/CameraContainer;


# direct methods
.method private constructor <init>(Lcom/linj/camera/view/CameraContainer;)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->mode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/linj/camera/view/CameraContainer;Lcom/linj/camera/view/CameraContainer$TouchListener;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/linj/camera/view/CameraContainer$TouchListener;-><init>(Lcom/linj/camera/view/CameraContainer;)V

    return-void
.end method

.method static synthetic access$1(Lcom/linj/camera/view/CameraContainer$TouchListener;)Lcom/linj/camera/view/CameraContainer;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    return-object v0
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 431
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 432
    .local v0, "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 434
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
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 372
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 427
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 375
    :pswitch_1
    iput v6, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->mode:I

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$4(Lcom/linj/camera/view/CameraContainer;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v5}, Lcom/linj/camera/view/CameraContainer;->access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 382
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 384
    iput v7, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->mode:I

    .line 386
    invoke-direct {p0, p2}, Lcom/linj/camera/view/CameraContainer$TouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->startDis:F

    goto :goto_0

    .line 389
    :pswitch_3
    iget v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->mode:I

    if-ne v4, v7, :cond_0

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 392
    invoke-direct {p0, p2}, Lcom/linj/camera/view/CameraContainer$TouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 394
    .local v0, "endDis":F
    iget v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->startDis:F

    sub-float v4, v0, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 395
    .local v2, "scale":I
    if-ge v2, v7, :cond_1

    const/4 v4, -0x1

    if-gt v2, v4, :cond_0

    .line 396
    :cond_1
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$0(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linj/camera/view/CameraView;->getZoom()I

    move-result v4

    add-int v3, v4, v2

    .line 398
    .local v3, "zoom":I
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$0(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linj/camera/view/CameraView;->getMaxZoom()I

    move-result v4

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$0(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linj/camera/view/CameraView;->getMaxZoom()I

    move-result v3

    .line 399
    :cond_2
    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 400
    :cond_3
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$0(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/linj/camera/view/CameraView;->setZoom(I)V

    .line 401
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 403
    iput v0, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->startDis:F

    goto/16 :goto_0

    .line 409
    .end local v0    # "endDis":F
    .end local v2    # "scale":I
    .end local v3    # "zoom":I
    :pswitch_4
    iget v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->mode:I

    if-eq v4, v7, :cond_4

    .line 411
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 412
    .local v1, "point":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$0(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraView;

    move-result-object v4

    iget-object v5, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v5}, Lcom/linj/camera/view/CameraContainer;->access$13(Lcom/linj/camera/view/CameraContainer;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/linj/camera/view/CameraView;->onFocus(Landroid/graphics/Point;Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 413
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$6(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/FocusImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/linj/camera/view/FocusImageView;->startFocus(Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 416
    .end local v1    # "point":Landroid/graphics/Point;
    :cond_4
    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$4(Lcom/linj/camera/view/CameraContainer;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/linj/camera/view/CameraContainer$TouchListener$1;

    invoke-direct {v5, p0}, Lcom/linj/camera/view/CameraContainer$TouchListener$1;-><init>(Lcom/linj/camera/view/CameraContainer$TouchListener;)V

    .line 423
    iget-object v6, p0, Lcom/linj/camera/view/CameraContainer$TouchListener;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v6}, Lcom/linj/camera/view/CameraContainer;->access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    add-long/2addr v8, v10

    .line 416
    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/16 :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
