.class public Lcom/linj/imageloader/DownloadImgUtils;
.super Ljava/lang/Object;
.source "DownloadImgUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadImgByUrl(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "imageview"    # Landroid/widget/ImageView;

    .prologue
    const/4 v9, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 93
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 95
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/io/InputStream;->mark(I)V

    .line 98
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v7, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 100
    const/4 v10, 0x0

    invoke-static {v6, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/linj/imageloader/ImageSizeUtil;->getImageViewSize(Landroid/widget/ImageView;)Lcom/linj/imageloader/ImageSizeUtil$ImageSize;

    move-result-object v4

    .line 105
    .local v4, "imageViewSize":Lcom/linj/imageloader/ImageSizeUtil$ImageSize;
    iget v10, v4, Lcom/linj/imageloader/ImageSizeUtil$ImageSize;->width:I

    iget v11, v4, Lcom/linj/imageloader/ImageSizeUtil$ImageSize;->height:I

    .line 104
    invoke-static {v7, v10, v11}, Lcom/linj/imageloader/ImageSizeUtil;->caculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    iput v10, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 107
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 108
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    .line 109
    const/4 v10, 0x0

    invoke-static {v6, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    if-eqz v6, :cond_0

    .line 122
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 130
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    move-object v5, v6

    .line 136
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "imageViewSize":Lcom/linj/imageloader/ImageSizeUtil$ImageSize;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_2
    return-object v0

    .line 114
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    if-eqz v5, :cond_2

    .line 122
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 129
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 130
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_5
    move-object v0, v9

    .line 136
    goto :goto_2

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 121
    :goto_6
    if-eqz v5, :cond_4

    .line 122
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 129
    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 130
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 134
    :cond_5
    :goto_8
    throw v9

    .line 123
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "imageViewSize":Lcom/linj/imageloader/ImageSizeUtil$ImageSize;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    goto :goto_0

    .line 131
    :catch_2
    move-exception v9

    goto :goto_1

    .line 123
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "imageViewSize":Lcom/linj/imageloader/ImageSizeUtil$ImageSize;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v10

    goto :goto_4

    .line 131
    :catch_4
    move-exception v10

    goto :goto_5

    .line 123
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    goto :goto_7

    .line 131
    :catch_6
    move-exception v10

    goto :goto_8

    .line 118
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 114
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static downloadImgByUrl(Ljava/lang/String;Ljava/io/File;)Z
    .locals 10
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 40
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 43
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 44
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x200

    :try_start_1
    new-array v0, v9, [B

    .line 46
    .local v0, "buf":[B
    const/4 v6, 0x0

    .line 47
    .local v6, "len":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 51
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    if-eqz v5, :cond_0

    .line 62
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 70
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 52
    :cond_1
    :goto_2
    const/4 v8, 0x1

    move-object v3, v4

    .line 76
    .end local v0    # "buf":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    return v8

    .line 49
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_3
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v4, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 54
    .end local v0    # "buf":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 56
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    if-eqz v5, :cond_4

    .line 62
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 69
    :cond_4
    :goto_5
    if-eqz v3, :cond_2

    .line 70
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 71
    :catch_1
    move-exception v9

    goto :goto_3

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 61
    :goto_6
    if-eqz v5, :cond_5

    .line 62
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 69
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 70
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 74
    :cond_6
    :goto_8
    throw v8

    .line 63
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    goto :goto_1

    .line 71
    :catch_3
    move-exception v8

    goto :goto_2

    .line 63
    .end local v0    # "buf":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .end local v7    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    goto :goto_5

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 71
    :catch_6
    move-exception v9

    goto :goto_8

    .line 58
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 54
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "url":Ljava/net/URL;
    :catch_7
    move-exception v2

    goto :goto_4
.end method
