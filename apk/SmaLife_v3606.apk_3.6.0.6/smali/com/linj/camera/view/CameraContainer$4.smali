.class Lcom/linj/camera/view/CameraContainer$4;
.super Ljava/lang/Object;
.source "CameraContainer.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$7(Lcom/linj/camera/view/CameraContainer;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mSavePath is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$8(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraContainer$DataHandler;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    new-instance v2, Lcom/linj/camera/view/CameraContainer$DataHandler;

    iget-object v3, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-direct {v2, v3}, Lcom/linj/camera/view/CameraContainer$DataHandler;-><init>(Lcom/linj/camera/view/CameraContainer;)V

    invoke-static {v1, v2}, Lcom/linj/camera/view/CameraContainer;->access$9(Lcom/linj/camera/view/CameraContainer;Lcom/linj/camera/view/CameraContainer$DataHandler;)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$8(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraContainer$DataHandler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/linj/camera/view/CameraContainer$DataHandler;->setMaxSize(I)V

    .line 344
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$8(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraContainer$DataHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v2}, Lcom/linj/camera/view/CameraContainer;->access$10(Lcom/linj/camera/view/CameraContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/linj/camera/view/CameraContainer$DataHandler;->save(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$11(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/TempImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v2}, Lcom/linj/camera/view/CameraContainer;->access$12(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linj/camera/view/TempImageView;->setListener(Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V

    .line 346
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$11(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/TempImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/linj/camera/view/TempImageView;->isVideo(Z)V

    .line 347
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$11(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/TempImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linj/camera/view/TempImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$11(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/TempImageView;

    move-result-object v1

    sget v2, Lcom/linj/cameralibrary/R$anim;->tempview_show:I

    invoke-virtual {v1, v2}, Lcom/linj/camera/view/TempImageView;->startAnimation(I)V

    .line 350
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 351
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$12(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$4;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v1}, Lcom/linj/camera/view/CameraContainer;->access$12(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/linj/camera/view/CameraContainer$TakePictureListener;->onTakePictureEnd(Landroid/graphics/Bitmap;)V

    .line 352
    :cond_2
    return-void
.end method
