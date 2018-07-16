.class public Lcom/smalife/utils/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 77
    const/16 v3, 0x64

    .line 78
    .local v3, "options":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    if-gtz v3, :cond_1

    .line 83
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .local v2, "isBm":Ljava/io/ByteArrayInputStream;
    invoke-static {v2, v6, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    return-object v1

    .line 79
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "isBm":Ljava/io/ByteArrayInputStream;
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 80
    add-int/lit8 v3, v3, -0xa

    .line 81
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0
.end method

.method public static toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 28
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 26
    .local v23, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 29
    .local v14, "height":I
    move/from16 v0, v23

    if-gt v0, v14, :cond_0

    .line 30
    div-int/lit8 v24, v23, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 31
    .local v20, "roundPx":F
    const/16 v22, 0x0

    .line 32
    .local v22, "top":F
    move/from16 v0, v23

    int-to-float v5, v0

    .line 33
    .local v5, "bottom":F
    const/4 v15, 0x0

    .line 34
    .local v15, "left":F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    .line 35
    .local v19, "right":F
    move/from16 v14, v23

    .line 36
    const/4 v11, 0x0

    .line 37
    .local v11, "dst_left":F
    const/4 v13, 0x0

    .line 38
    .local v13, "dst_top":F
    move/from16 v0, v23

    int-to-float v12, v0

    .line 39
    .local v12, "dst_right":F
    move/from16 v0, v23

    int-to-float v10, v0

    .line 54
    .local v10, "dst_bottom":F
    :goto_0
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 55
    .local v16, "output":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v6, "canvas":Landroid/graphics/Canvas;
    const v8, -0xbdbdbe

    .line 58
    .local v8, "color":I
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 59
    .local v17, "paint":Landroid/graphics/Paint;
    new-instance v21, Landroid/graphics/Rect;

    float-to-int v0, v15

    move/from16 v24, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v26, v0

    float-to-int v0, v5

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .local v21, "src":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v0, v11

    move/from16 v24, v0

    float-to-int v0, v13

    move/from16 v25, v0

    float-to-int v0, v12

    move/from16 v26, v0

    float-to-int v0, v10

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    .local v9, "dst":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 63
    .local v18, "rectF":Landroid/graphics/RectF;
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 66
    const v24, -0xbdbdbe

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 69
    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 71
    return-object v16

    .line 41
    .end local v5    # "bottom":F
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "color":I
    .end local v9    # "dst":Landroid/graphics/Rect;
    .end local v10    # "dst_bottom":F
    .end local v11    # "dst_left":F
    .end local v12    # "dst_right":F
    .end local v13    # "dst_top":F
    .end local v15    # "left":F
    .end local v16    # "output":Landroid/graphics/Bitmap;
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v18    # "rectF":Landroid/graphics/RectF;
    .end local v19    # "right":F
    .end local v20    # "roundPx":F
    .end local v21    # "src":Landroid/graphics/Rect;
    .end local v22    # "top":F
    :cond_0
    div-int/lit8 v24, v14, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 42
    .restart local v20    # "roundPx":F
    sub-int v24, v23, v14

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v7, v0

    .line 43
    .local v7, "clip":F
    move v15, v7

    .line 44
    .restart local v15    # "left":F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v19, v24, v7

    .line 45
    .restart local v19    # "right":F
    const/16 v22, 0x0

    .line 46
    .restart local v22    # "top":F
    int-to-float v5, v14

    .line 47
    .restart local v5    # "bottom":F
    move/from16 v23, v14

    .line 48
    const/4 v11, 0x0

    .line 49
    .restart local v11    # "dst_left":F
    const/4 v13, 0x0

    .line 50
    .restart local v13    # "dst_top":F
    int-to-float v12, v14

    .line 51
    .restart local v12    # "dst_right":F
    int-to-float v10, v14

    .restart local v10    # "dst_bottom":F
    goto/16 :goto_0
.end method
