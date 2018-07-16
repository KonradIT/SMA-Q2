.class public Lcom/linj/camera/view/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"

# interfaces
.implements Lcom/linj/camera/view/CameraOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/camera/view/CameraView$FlashMode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$linj$camera$view$CameraView$FlashMode:[I = null

.field public static final TAG:Ljava/lang/String; = "CameraView"


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private mCamera:Landroid/hardware/Camera;

.field private mFlashMode:Lcom/linj/camera/view/CameraView$FlashMode;

.field private mIsFrontCamera:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mRecordPath:Ljava/lang/String;

.field private mZoom:I

.field sizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$linj$camera$view$CameraView$FlashMode()[I
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/linj/camera/view/CameraView;->$SWITCH_TABLE$com$linj$camera$view$CameraView$FlashMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/linj/camera/view/CameraView$FlashMode;->values()[Lcom/linj/camera/view/CameraView$FlashMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->AUTO:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v1}, Lcom/linj/camera/view/CameraView$FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->OFF:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v1}, Lcom/linj/camera/view/CameraView$FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->ON:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v1}, Lcom/linj/camera/view/CameraView$FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/linj/camera/view/CameraView$FlashMode;->TORCH:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {v1}, Lcom/linj/camera/view/CameraView$FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/linj/camera/view/CameraView;->$SWITCH_TABLE$com$linj$camera$view$CameraView$FlashMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v0, Lcom/linj/camera/view/CameraView$FlashMode;->ON:Lcom/linj/camera/view/CameraView$FlashMode;

    iput-object v0, p0, Lcom/linj/camera/view/CameraView;->mFlashMode:Lcom/linj/camera/view/CameraView$FlashMode;

    .line 56
    iput v2, p0, Lcom/linj/camera/view/CameraView;->mZoom:I

    .line 59
    iput v2, p0, Lcom/linj/camera/view/CameraView;->mOrientation:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linj/camera/view/CameraView;->mRecordPath:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/linj/camera/view/CameraView$1;

    invoke-direct {v0, p0}, Lcom/linj/camera/view/CameraView$1;-><init>(Lcom/linj/camera/view/CameraView;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraView;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 502
    new-instance v0, Lcom/linj/camera/view/CameraView$2;

    invoke-direct {v0, p0}, Lcom/linj/camera/view/CameraView$2;-><init>(Lcom/linj/camera/view/CameraView;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraView;->sizeComparator:Ljava/util/Comparator;

    .line 72
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 73
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->openCamera()Z

    .line 74
    iput-boolean v2, p0, Lcom/linj/camera/view/CameraView;->mIsFrontCamera:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget-object v0, Lcom/linj/camera/view/CameraView$FlashMode;->ON:Lcom/linj/camera/view/CameraView$FlashMode;

    iput-object v0, p0, Lcom/linj/camera/view/CameraView;->mFlashMode:Lcom/linj/camera/view/CameraView$FlashMode;

    .line 56
    iput v2, p0, Lcom/linj/camera/view/CameraView;->mZoom:I

    .line 59
    iput v2, p0, Lcom/linj/camera/view/CameraView;->mOrientation:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linj/camera/view/CameraView;->mRecordPath:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/linj/camera/view/CameraView$1;

    invoke-direct {v0, p0}, Lcom/linj/camera/view/CameraView$1;-><init>(Lcom/linj/camera/view/CameraView;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraView;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 502
    new-instance v0, Lcom/linj/camera/view/CameraView$2;

    invoke-direct {v0, p0}, Lcom/linj/camera/view/CameraView$2;-><init>(Lcom/linj/camera/view/CameraView;)V

    iput-object v0, p0, Lcom/linj/camera/view/CameraView;->sizeComparator:Ljava/util/Comparator;

    .line 80
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 81
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->openCamera()Z

    .line 82
    iput-boolean v2, p0, Lcom/linj/camera/view/CameraView;->mIsFrontCamera:Z

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/linj/camera/view/CameraView;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1(Lcom/linj/camera/view/CameraView;)Z
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->openCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/linj/camera/view/CameraView;)V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$3(Lcom/linj/camera/view/CameraView;)V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->updateCameraOrientation()V

    return-void
.end method

.method static synthetic access$4(Lcom/linj/camera/view/CameraView;Landroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic access$6(Lcom/linj/camera/view/CameraView;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/linj/camera/view/CameraView;->mOrientation:I

    return v0
.end method

.method static synthetic access$7(Lcom/linj/camera/view/CameraView;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/linj/camera/view/CameraView;->mOrientation:I

    return-void
.end method

.method private openCamera()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 297
    iget-object v5, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_0

    .line 298
    iget-object v5, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    .line 299
    iget-object v5, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 300
    iput-object v6, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    .line 303
    :cond_0
    iget-boolean v5, p0, Lcom/linj/camera/view/CameraView;->mIsFrontCamera:Z

    if-eqz v5, :cond_3

    .line 304
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 305
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    if-lt v2, v5, :cond_1

    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "i":I
    :goto_1
    move v3, v4

    .line 326
    :goto_2
    return v3

    .line 306
    .restart local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .restart local v2    # "i":I
    :cond_1
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 307
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v4, :cond_2

    .line 309
    :try_start_0
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    iput-object v6, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    goto :goto_2

    .line 319
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 320
    :catch_1
    move-exception v1

    .line 321
    .restart local v1    # "e":Ljava/lang/Exception;
    iput-object v6, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    goto :goto_2
.end method

.method private saveThumbnail()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 201
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mRecordPath:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 205
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mRecordPath:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/linj/camera/view/CameraView;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "test"

    .line 208
    invoke-static {v6, v7, v8}, Lcom/linj/FileOperateUtil;->getFolderPath(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "mThumbnailFolder":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 214
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/linj/camera/view/CameraView;->mRecordPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3gp"

    const-string v9, "jpg"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 219
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 218
    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 220
    .local v1, "bufferos":Ljava/io/BufferedOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 221
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 222
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 227
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bufferos":Ljava/io/BufferedOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "folder":Ljava/io/File;
    .end local v5    # "mThumbnailFolder":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 225
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iput-object v6, p0, Lcom/linj/camera/view/CameraView;->mRecordPath:Ljava/lang/String;

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object v0, v6

    .line 227
    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    .line 457
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 459
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 460
    .local v6, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->sizeComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 461
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 462
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 464
    .local v0, "cameraSize":Landroid/hardware/Camera$Size;
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 467
    .end local v0    # "cameraSize":Landroid/hardware/Camera$Size;
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 468
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 469
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 470
    .restart local v0    # "cameraSize":Landroid/hardware/Camera$Size;
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->sizeComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 471
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_4

    .line 478
    :goto_1
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 480
    .end local v0    # "cameraSize":Landroid/hardware/Camera$Size;
    .end local v2    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 481
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    .line 482
    .local v3, "maxZoom":I
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 485
    .end local v3    # "maxZoom":I
    :cond_2
    const/16 v7, 0x100

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 486
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 487
    invoke-virtual {v4, v9}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 489
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 490
    .local v1, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "auto"

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 491
    const-string v7, "auto"

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 493
    :cond_3
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 495
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mFlashMode:Lcom/linj/camera/view/CameraView$FlashMode;

    invoke-virtual {p0, v7}, Lcom/linj/camera/view/CameraView;->setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V

    .line 497
    iget v7, p0, Lcom/linj/camera/view/CameraView;->mZoom:I

    invoke-virtual {p0, v7}, Lcom/linj/camera/view/CameraView;->setZoom(I)V

    .line 499
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->startOrientationChangeListener()V

    .line 500
    return-void

    .line 472
    .end local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "cameraSize":Landroid/hardware/Camera$Size;
    .restart local v2    # "i":I
    :cond_4
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 473
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    const v8, 0x1fa400

    if-gt v7, v8, :cond_5

    .line 474
    move-object v0, v5

    .line 475
    goto :goto_1

    .line 471
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private startOrientationChangeListener()V
    .locals 2

    .prologue
    .line 518
    new-instance v0, Lcom/linj/camera/view/CameraView$3;

    .line 519
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 518
    invoke-direct {v0, p0, v1}, Lcom/linj/camera/view/CameraView$3;-><init>(Lcom/linj/camera/view/CameraView;Landroid/content/Context;)V

    .line 540
    .local v0, "mOrEventListener":Landroid/view/OrientationEventListener;
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 541
    return-void
.end method

.method private updateCameraOrientation()V
    .locals 5

    .prologue
    const/16 v4, 0x5a

    .line 547
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 550
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget v2, p0, Lcom/linj/camera/view/CameraView;->mOrientation:I

    add-int/lit8 v2, v2, 0x5a

    const/16 v3, 0x168

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    .line 552
    .local v1, "rotation":I
    :goto_0
    iget-boolean v2, p0, Lcom/linj/camera/view/CameraView;->mIsFrontCamera:Z

    if-eqz v2, :cond_0

    .line 553
    if-ne v1, v4, :cond_3

    .line 554
    const/16 v1, 0x10e

    .line 558
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 560
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 561
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 563
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "rotation":I
    :cond_1
    return-void

    .line 550
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    iget v2, p0, Lcom/linj/camera/view/CameraView;->mOrientation:I

    add-int/lit8 v1, v2, 0x5a

    goto :goto_0

    .line 555
    .restart local v1    # "rotation":I
    :cond_3
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_0

    .line 556
    const/16 v1, 0x5a

    goto :goto_1
.end method


# virtual methods
.method public getFlashMode()Lcom/linj/camera/view/CameraView$FlashMode;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/linj/camera/view/CameraView;->mFlashMode:Lcom/linj/camera/view/CameraView$FlashMode;

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 4

    .prologue
    const/16 v1, 0x28

    const/4 v2, -0x1

    .line 415
    iget-object v3, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    move v1, v2

    .line 420
    :cond_0
    :goto_0
    return v1

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 418
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 419
    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    if-gt v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    goto :goto_0
.end method

.method public getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 240
    .local v6, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 241
    const-wide/16 v10, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 248
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 253
    :goto_0
    if-nez v0, :cond_0

    .line 254
    const/4 v10, 0x0

    .line 270
    :goto_1
    return-object v10

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 249
    :catch_1
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 245
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    :try_start_5
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 249
    :catch_3
    move-exception v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    .line 248
    :try_start_6
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 252
    :goto_2
    throw v10

    .line 249
    :catch_4
    move-exception v1

    .line 250
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 249
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v1

    .line 250
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 257
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 258
    .local v3, "height":I
    const-string v10, "CameraView"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bitmap:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraView;->getWidth()I

    move-result v5

    .line 260
    .local v5, "pWidth":I
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraView;->getHeight()I

    move-result v4

    .line 261
    .local v4, "pHeight":I
    const-string v10, "CameraView"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parent:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    int-to-float v10, v9

    int-to-float v11, v5

    div-float/2addr v10, v11

    int-to-float v11, v3

    int-to-float v12, v4

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 265
    .local v7, "scale":F
    const-string v10, "CameraView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    int-to-float v10, v5

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 267
    .local v8, "w":I
    int-to-float v10, v4

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 268
    .local v2, "h":I
    const-string v10, "CameraView"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parent:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v10, 0x1

    invoke-static {v0, v8, v2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v10, v0

    .line 270
    goto/16 :goto_1
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/linj/camera/view/CameraView;->mZoom:I

    return v0
.end method

.method protected isRecording()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocus(Landroid/graphics/Point;Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 10
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "callback"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    const/16 v7, 0x3e8

    const/16 v8, -0x3e8

    .line 380
    iget-object v9, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 382
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v9

    if-gtz v9, :cond_0

    .line 383
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 406
    :goto_0
    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget v9, p1, Landroid/graphics/Point;->x:I

    add-int/lit16 v3, v9, -0x12c

    .line 388
    .local v3, "left":I
    iget v9, p1, Landroid/graphics/Point;->y:I

    add-int/lit16 v6, v9, -0x12c

    .line 389
    .local v6, "top":I
    iget v9, p1, Landroid/graphics/Point;->x:I

    add-int/lit16 v5, v9, 0x12c

    .line 390
    .local v5, "right":I
    iget v9, p1, Landroid/graphics/Point;->y:I

    add-int/lit16 v1, v9, 0x12c

    .line 391
    .local v1, "bottom":I
    if-ge v3, v8, :cond_1

    move v3, v8

    .line 392
    :cond_1
    if-ge v6, v8, :cond_2

    move v6, v8

    .line 393
    :cond_2
    if-le v5, v7, :cond_3

    move v5, v7

    .line 394
    :cond_3
    if-le v1, v7, :cond_4

    move v1, v7

    .line 395
    :cond_4
    new-instance v7, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v6, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v9, 0x64

    invoke-direct {v7, v8, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 400
    :try_start_0
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_1
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0

    .line 401
    :catch_0
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setFlashMode(Lcom/linj/camera/view/CameraView$FlashMode;)V
    .locals 3
    .param p1, "flashMode"    # Lcom/linj/camera/view/CameraView$FlashMode;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/linj/camera/view/CameraView;->mFlashMode:Lcom/linj/camera/view/CameraView$FlashMode;

    .line 349
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 350
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/linj/camera/view/CameraView;->$SWITCH_TABLE$com$linj$camera$view$CameraView$FlashMode()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/linj/camera/view/CameraView$FlashMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 361
    :pswitch_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 364
    :goto_1
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 352
    :pswitch_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 355
    :pswitch_2
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :pswitch_3
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setZoom(I)V
    .locals 2
    .param p1, "zoom"    # I

    .prologue
    .line 430
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    .line 436
    iget-object v0, p0, Lcom/linj/camera/view/CameraView;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 441
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    :goto_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 444
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 445
    iput p1, p0, Lcom/linj/camera/view/CameraView;->mZoom:I

    goto :goto_0

    .line 438
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    goto :goto_1
.end method

.method public startRecord()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 133
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v7, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->openCamera()Z

    .line 135
    :cond_0
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v7, :cond_1

    .line 167
    :goto_0
    return v5

    .line 138
    :cond_1
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v7, :cond_3

    .line 139
    new-instance v7, Landroid/media/MediaRecorder;

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 142
    :goto_1
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    iput-object v7, p0, Lcom/linj/camera/view/CameraView;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 143
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->unlock()V

    .line 144
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 145
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v6}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 146
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 148
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 149
    const/4 v8, 0x4

    invoke-static {v8}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v8

    .line 148
    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 151
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v8, 0x5a

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 152
    invoke-virtual {p0}, Lcom/linj/camera/view/CameraView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 153
    const/4 v8, 0x3

    const-string v9, "test"

    .line 152
    invoke-static {v7, v8, v9}, Lcom/linj/FileOperateUtil;->getFolderPath(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 158
    :cond_2
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "video"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".3gp"

    invoke-static {v8}, Lcom/linj/FileOperateUtil;->createFileNmae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/linj/camera/view/CameraView;->mRecordPath:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mRecordPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "mRecAudioFile":Ljava/io/File;
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 162
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V

    .line 163
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 167
    goto/16 :goto_0

    .line 141
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "mRecAudioFile":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->reset()V

    goto/16 :goto_1

    .line 164
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method public stopRecord()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 176
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 177
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/linj/camera/view/CameraView;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 180
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->saveThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    .line 186
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 188
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/linj/camera/view/CameraView;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 190
    iget-object v2, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/linj/camera/view/CameraView;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 3

    .prologue
    .line 278
    iget-boolean v1, p0, Lcom/linj/camera/view/CameraView;->mIsFrontCamera:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/linj/camera/view/CameraView;->mIsFrontCamera:Z

    .line 279
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->openCamera()Z

    .line 280
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->setCameraParameters()V

    .line 282
    invoke-direct {p0}, Lcom/linj/camera/view/CameraView;->updateCameraOrientation()V

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/linj/camera/view/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 285
    iget-object v1, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_1
    return-void

    .line 278
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public takePicture(Landroid/hardware/Camera$PictureCallback;Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/Camera$PictureCallback;
    .param p2, "listener"    # Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/linj/camera/view/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v1, p1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 371
    return-void
.end method
