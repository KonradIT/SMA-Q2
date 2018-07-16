.class Lcom/linj/camera/view/CameraView$3;
.super Landroid/view/OrientationEventListener;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linj/camera/view/CameraView;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/camera/view/CameraView;


# direct methods
.method constructor <init>(Lcom/linj/camera/view/CameraView;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/camera/view/CameraView$3;->this$0:Lcom/linj/camera/view/CameraView;

    .line 518
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/16 v3, 0x13b

    const/16 v2, 0xe1

    const/16 v1, 0x87

    const/16 v0, 0x2d

    .line 523
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    if-le p1, v3, :cond_2

    .line 524
    :cond_1
    const/4 p1, 0x0

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$3;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v0}, Lcom/linj/camera/view/CameraView;->access$6(Lcom/linj/camera/view/CameraView;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 538
    :goto_1
    return-void

    .line 525
    :cond_2
    if-le p1, v0, :cond_3

    if-gt p1, v1, :cond_3

    .line 526
    const/16 p1, 0x5a

    .line 527
    goto :goto_0

    :cond_3
    if-le p1, v1, :cond_4

    if-gt p1, v2, :cond_4

    .line 528
    const/16 p1, 0xb4

    .line 529
    goto :goto_0

    :cond_4
    if-le p1, v2, :cond_5

    if-gt p1, v3, :cond_5

    .line 530
    const/16 p1, 0x10e

    .line 531
    goto :goto_0

    .line 532
    :cond_5
    const/4 p1, 0x0

    goto :goto_0

    .line 536
    :cond_6
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$3;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v0, p1}, Lcom/linj/camera/view/CameraView;->access$7(Lcom/linj/camera/view/CameraView;I)V

    .line 537
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$3;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v0}, Lcom/linj/camera/view/CameraView;->access$3(Lcom/linj/camera/view/CameraView;)V

    goto :goto_1
.end method
