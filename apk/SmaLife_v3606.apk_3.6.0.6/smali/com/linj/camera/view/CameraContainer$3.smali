.class Lcom/linj/camera/view/CameraContainer$3;
.super Ljava/lang/Object;
.source "CameraContainer.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer$3;->this$0:Lcom/linj/camera/view/CameraContainer;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer$3;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v0}, Lcom/linj/camera/view/CameraContainer;->access$6(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/FocusImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linj/camera/view/FocusImageView;->onFocusSuccess()V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer$3;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v0}, Lcom/linj/camera/view/CameraContainer;->access$6(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/FocusImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linj/camera/view/FocusImageView;->onFocusFailed()V

    goto :goto_0
.end method
