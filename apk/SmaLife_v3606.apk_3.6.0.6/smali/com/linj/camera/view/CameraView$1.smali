.class Lcom/linj/camera/view/CameraView$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/camera/view/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/camera/view/CameraView;


# direct methods
.method constructor <init>(Lcom/linj/camera/view/CameraView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v0}, Lcom/linj/camera/view/CameraView;->access$3(Lcom/linj/camera/view/CameraView;)V

    .line 107
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v1}, Lcom/linj/camera/view/CameraView;->access$0(Lcom/linj/camera/view/CameraView;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v1}, Lcom/linj/camera/view/CameraView;->access$1(Lcom/linj/camera/view/CameraView;)Z

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v1}, Lcom/linj/camera/view/CameraView;->access$2(Lcom/linj/camera/view/CameraView;)V

    .line 94
    iget-object v1, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v1}, Lcom/linj/camera/view/CameraView;->access$0(Lcom/linj/camera/view/CameraView;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v2}, Lcom/linj/camera/view/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v1}, Lcom/linj/camera/view/CameraView;->access$0(Lcom/linj/camera/view/CameraView;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v1}, Lcom/linj/camera/view/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\u02a7\ufffd\ufffd"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 98
    const-string v1, "CameraView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-virtual {v0}, Lcom/linj/camera/view/CameraView;->stopRecord()Landroid/graphics/Bitmap;

    .line 113
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v0}, Lcom/linj/camera/view/CameraView;->access$0(Lcom/linj/camera/view/CameraView;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v0}, Lcom/linj/camera/view/CameraView;->access$0(Lcom/linj/camera/view/CameraView;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 115
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    invoke-static {v0}, Lcom/linj/camera/view/CameraView;->access$0(Lcom/linj/camera/view/CameraView;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 116
    iget-object v0, p0, Lcom/linj/camera/view/CameraView$1;->this$0:Lcom/linj/camera/view/CameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/linj/camera/view/CameraView;->access$4(Lcom/linj/camera/view/CameraView;Landroid/hardware/Camera;)V

    .line 119
    :cond_0
    return-void
.end method
