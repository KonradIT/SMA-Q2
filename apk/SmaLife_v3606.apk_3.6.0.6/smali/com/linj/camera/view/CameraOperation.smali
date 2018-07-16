.class public interface abstract Lcom/linj/camera/view/CameraOperation;
.super Ljava/lang/Object;
.source "CameraOperation.java"


# virtual methods
.method public abstract getFlashMode()Lcom/linj/camera/view/CameraView$FlashMode;
.end method

.method public abstract getMaxZoom()I
.end method

.method public abstract getZoom()I
.end method

.method public abstract setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V
.end method

.method public abstract setZoom(I)V
.end method

.method public abstract startRecord()Z
.end method

.method public abstract stopRecord()Landroid/graphics/Bitmap;
.end method

.method public abstract switchCamera()V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$PictureCallback;Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V
.end method
