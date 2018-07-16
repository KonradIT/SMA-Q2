.class final Lcom/linj/camera/view/CameraContainer$DataHandler;
.super Ljava/lang/Object;
.source "CameraContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/camera/view/CameraContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataHandler"
.end annotation


# instance fields
.field private mImageFolder:Ljava/lang/String;

.field private mThumbnailFolder:Ljava/lang/String;

.field private maxSize:I

.field final synthetic this$0:Lcom/linj/camera/view/CameraContainer;


# direct methods
.method public constructor <init>(Lcom/linj/camera/view/CameraContainer;)V
    .locals 4

    .prologue
    .line 452
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/16 v1, 0xc8

    iput v1, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->maxSize:I

    .line 453
    invoke-virtual {p1}, Lcom/linj/camera/view/CameraContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/linj/camera/view/CameraContainer;->access$7(Lcom/linj/camera/view/CameraContainer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/linj/FileOperateUtil;->getFolderPath(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->mImageFolder:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Lcom/linj/camera/view/CameraContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/linj/camera/view/CameraContainer;->access$7(Lcom/linj/camera/view/CameraContainer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/linj/FileOperateUtil;->getFolderPath(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->mThumbnailFolder:Ljava/lang/String;

    .line 455
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->mImageFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 459
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "folder":Ljava/io/File;
    iget-object v1, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->mThumbnailFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v0    # "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 463
    :cond_1
    return-void
.end method

.method private getBitmapWithWaterMark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 519
    iget-object v8, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v8}, Lcom/linj/camera/view/CameraContainer;->access$14(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, p1

    .line 548
    :goto_0
    return-object v3

    .line 522
    :cond_0
    iget-object v8, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v8}, Lcom/linj/camera/view/CameraContainer;->access$14(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 523
    .local v2, "mark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Lcom/linj/camera/view/CameraContainer$DataHandler;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 524
    .local v5, "wBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 526
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 528
    .local v1, "h":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 530
    .local v7, "ww":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 531
    .local v6, "wh":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 532
    .local v3, "newb":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 535
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 536
    sub-int v8, v4, v7

    add-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    sub-int v9, v1, v6

    add-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 539
    const/16 v8, 0x1f

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->save(I)I

    .line 543
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 544
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 545
    const/4 p1, 0x0

    .line 546
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 547
    const/4 v5, 0x0

    .line 548
    goto :goto_0
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayOutputStream;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 570
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 571
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 572
    const/16 v1, 0x63

    .line 573
    .local v1, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    iget v3, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->maxSize:I

    if-gt v2, v3, :cond_1

    .line 583
    :cond_0
    return-object v0

    .line 574
    :cond_1
    add-int/lit8 v1, v1, -0x3

    .line 576
    if-ltz v1, :cond_0

    .line 579
    const-string v2, "CameraContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 581
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 553
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 554
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 555
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 552
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 558
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 559
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 560
    return-object v0

    .line 556
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public save(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # [B

    .prologue
    .line 471
    if-eqz p2, :cond_0

    .line 473
    const/4 v12, 0x0

    move-object/from16 v0, p2

    array-length v13, v0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 475
    .local v1, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/linj/camera/view/CameraContainer$DataHandler;->getBitmapWithWaterMark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 477
    const/16 v12, 0xd5

    const/16 v13, 0xd5

    invoke-static {v1, v12, v13}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 479
    .local v11, "thumbnail":Landroid/graphics/Bitmap;
    const-string v12, ".jpg"

    invoke-static {v12}, Lcom/linj/FileOperateUtil;->createFileNmae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, "imgName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/linj/camera/view/CameraContainer$DataHandler;->mImageFolder:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, "imagePath":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/linj/camera/view/CameraContainer$DataHandler;->mThumbnailFolder:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 483
    .local v10, "thumbPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v5, "file":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v9, "thumFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 488
    .local v6, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/linj/camera/view/CameraContainer$DataHandler;->compress(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 489
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 490
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 491
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 493
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 494
    .local v3, "bufferos":Ljava/io/BufferedOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x32

    invoke-virtual {v11, v12, v13, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 495
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 496
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bufferos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 504
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 503
    invoke-static {v12, v13, v14, v15}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 509
    :goto_1
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "file://"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "imagePath":Ljava/lang/String;
    .end local v8    # "imgName":Ljava/lang/String;
    .end local v9    # "thumFile":Ljava/io/File;
    .end local v10    # "thumbPath":Ljava/lang/String;
    .end local v11    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_2
    return-object v1

    .line 497
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "imagePath":Ljava/lang/String;
    .restart local v8    # "imgName":Ljava/lang/String;
    .restart local v9    # "thumFile":Ljava/io/File;
    .restart local v10    # "thumbPath":Ljava/lang/String;
    .restart local v11    # "thumbnail":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 498
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "CameraContainer"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/linj/camera/view/CameraContainer$DataHandler;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v12}, Lcom/linj/camera/view/CameraContainer;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u02a7\ufffd\ufffd"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 505
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 506
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 512
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "imagePath":Ljava/lang/String;
    .end local v8    # "imgName":Ljava/lang/String;
    .end local v9    # "thumFile":Ljava/io/File;
    .end local v10    # "thumbPath":Ljava/lang/String;
    .end local v11    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/linj/camera/view/CameraContainer$DataHandler;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-virtual {v12}, Lcom/linj/camera/view/CameraContainer;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "\ufffd\ufffd\ufffd\ufffd\u02a7\ufffd\u0723\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 513
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 587
    iput p1, p0, Lcom/linj/camera/view/CameraContainer$DataHandler;->maxSize:I

    .line 588
    return-void
.end method
