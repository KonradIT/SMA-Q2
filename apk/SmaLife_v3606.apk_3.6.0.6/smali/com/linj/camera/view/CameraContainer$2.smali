.class Lcom/linj/camera/view/CameraContainer$2;
.super Ljava/lang/Object;
.source "CameraContainer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/camera/view/CameraContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/camera/view/CameraContainer;


# direct methods
.method constructor <init>(Lcom/linj/camera/view/CameraContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer$2;->this$0:Lcom/linj/camera/view/CameraContainer;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/linj/camera/view/CameraContainer$2;)Lcom/linj/camera/view/CameraContainer;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer$2;->this$0:Lcom/linj/camera/view/CameraContainer;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer$2;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v0}, Lcom/linj/camera/view/CameraContainer;->access$0(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/linj/camera/view/CameraView;->setZoom(I)V

    .line 293
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer$2;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v0}, Lcom/linj/camera/view/CameraContainer;->access$4(Lcom/linj/camera/view/CameraContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$2;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer$2;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v0}, Lcom/linj/camera/view/CameraContainer;->access$4(Lcom/linj/camera/view/CameraContainer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/linj/camera/view/CameraContainer$2$1;

    invoke-direct {v1, p0}, Lcom/linj/camera/view/CameraContainer$2$1;-><init>(Lcom/linj/camera/view/CameraContainer$2;)V

    .line 302
    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer$2;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v2}, Lcom/linj/camera/view/CameraContainer;->access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    .line 295
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 303
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 311
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 319
    return-void
.end method
