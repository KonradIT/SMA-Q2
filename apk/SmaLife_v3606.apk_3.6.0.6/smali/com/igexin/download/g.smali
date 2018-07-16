.class public Lcom/igexin/download/g;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/download/DownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v0, v0, Lcom/igexin/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "AndroidDownloadManager"

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/igexin/download/g;->b(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    const-string v1, "uri"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "method"

    shl-int/lit8 v2, p4, 0x1c

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_1

    const-string v1, "numfailed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v1, p0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v3, v3, Lcom/igexin/download/DownloadInfo;->mId:I

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p5, :cond_2

    const-string v1, "numfailed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v1, "numfailed"

    iget-object v2, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v2, v2, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 33

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v20, 0x1eb

    const/16 v19, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v0, v2, Lcom/igexin/download/DownloadInfo;->mRedirectCount:I

    move/from16 v17, v0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v2, v2, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/igexin/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v4, v4, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v2, 0x1000

    :try_start_0
    new-array v0, v2, [B

    move-object/from16 v28, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/4 v8, 0x1

    const-string v21, "GexinSdkDownloadService"

    move-object/from16 v0, v21

    invoke-virtual {v2, v8, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_ac
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v21

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v8, v2, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_ad
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_91
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_34
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v8, :cond_7b

    :try_start_2
    invoke-static {v8}, Lcom/igexin/download/h;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_ae
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_35
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v2

    if-nez v2, :cond_8

    const/16 v3, 0x1ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v10, v2, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_ae
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_55
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_36
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_4
    const-string v4, "close"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v12, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_cd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_cb
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_ca
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_c9

    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_19

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_3
    :goto_2
    move-object/from16 v2, p0

    move/from16 v4, v19

    move/from16 v5, v18

    move/from16 v6, v17

    move v7, v15

    move-object/from16 v9, v16

    move-object v10, v13

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.os.FileUtils"

    :try_start_6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4
    array-length v6, v5

    if-ge v4, v6, :cond_5

    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setPermissions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    aget-object v2, v5, v4

    :cond_5
    if-eqz v2, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x1a4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c8

    :cond_6
    :goto_5
    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_7 .. :try_end_7} :catch_c7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c5

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-nez v3, :cond_7a

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_ae
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_35
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v5, 0x0

    :goto_6
    :try_start_9
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_af
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_93
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_37
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v23, v0

    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v3, v3, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_79

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v3, v3, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v8, v3, Lcom/igexin/download/DownloadInfo;->mETag:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_b0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_94
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_76
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_38
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const/4 v11, 0x1

    move-object v14, v5

    :goto_8
    const-wide/16 v24, 0x0

    :try_start_b
    const-string v3, "android.net.http.AndroidHttpClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_9
    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v5, v0, :cond_9

    aget-object v22, v10, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v26, "newInstance"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    aget-object v3, v10, v5

    :cond_9
    if-eqz v3, :cond_78

    const/4 v5, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v22, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/igexin/download/g;->a()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v10, v22

    invoke-virtual {v3, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_b1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_95
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_39
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-result-object v22

    :goto_a
    if-eqz v2, :cond_77

    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v3, v3, Lcom/igexin/download/DownloadInfo;->mDestination:I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_3a
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-nez v3, :cond_77

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_d} :catch_3a
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/4 v2, 0x0

    move-object v12, v2

    :goto_b
    :try_start_e
    new-instance v29, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v2, v2, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v2, v2, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v2, "Cookie"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v3, v3, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v2, v2, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v2, "Referer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v3, v3, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v11, :cond_d

    if-eqz v8, :cond_c

    const-string v2, "If-Match"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_3b
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :cond_d
    const/4 v3, 0x0

    :try_start_f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_f} :catch_3b
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    move-result-object v2

    :try_start_10
    const-string v5, "execute"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/16 v26, 0x0

    const-class v30, Lorg/apache/http/client/methods/HttpUriRequest;

    aput-object v30, v10, v26

    invoke-virtual {v2, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v29, v5, v10

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_10} :catch_3b
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object v10, v2

    :goto_c
    :try_start_11
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v3, v3, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_11} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_11} :catch_3b
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    const/4 v5, 0x5

    if-ge v3, v5, :cond_18

    const/16 v3, 0xc1

    const/4 v4, 0x1

    :try_start_12
    const-string v2, "Retry-After"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_b4
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_12} :catch_3c
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move-result-object v2

    if-eqz v2, :cond_17

    :try_start_13
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_b4
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_13} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_13} :catch_3c
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    move-result v18

    if-gez v18, :cond_14

    const/4 v2, 0x0

    :goto_d
    move v5, v2

    :goto_e
    :try_start_14
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_b5
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_7b
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_5c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_14} :catch_3d
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    move v2, v11

    move-object v8, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move-object v11, v14

    :goto_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e
    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    :try_start_15
    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_c4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_15} :catch_c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_c2
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_c1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_15} :catch_c0

    :cond_f
    :goto_10
    if-eqz v8, :cond_10

    :try_start_16
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1b

    :cond_10
    :goto_11
    if-eqz v11, :cond_6e

    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v8

    if-eqz v8, :cond_3e

    if-nez v2, :cond_6e

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v11, 0x0

    move-object v8, v11

    :goto_12
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :catch_1
    move-exception v3

    move-object v12, v2

    goto/16 :goto_b

    :catch_2
    move-exception v2

    move-object v10, v3

    goto/16 :goto_c

    :catch_3
    move-exception v2

    const/4 v4, 0x1

    const/16 v3, 0x190

    :try_start_17
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_b4
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_17} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_17} :catch_3c
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move v2, v11

    move-object v8, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move-object v11, v14

    goto :goto_f

    :catch_4
    move-exception v2

    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_18} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_18} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_18} :catch_3b
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-result v2

    if-nez v2, :cond_12

    const/16 v3, 0xc1

    move/from16 v4, v19

    :goto_13
    :try_start_19
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_b4
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_19} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_19} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_19} :catch_3c
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    move v2, v11

    move-object v8, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move-object v11, v14

    goto :goto_f

    :cond_12
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v2, v2, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1a} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_1a} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_1a} :catch_3b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    const/4 v3, 0x5

    if-ge v2, v3, :cond_13

    const/16 v3, 0xc1

    const/16 v19, 0x1

    move/from16 v4, v19

    goto :goto_13

    :cond_13
    const/16 v3, 0x1ef

    move/from16 v4, v19

    goto :goto_13

    :cond_14
    const/16 v2, 0x1e

    move/from16 v0, v18

    if-ge v0, v2, :cond_16

    const/16 v18, 0x1e

    :cond_15
    :goto_14
    :try_start_1b
    sget-object v2, Lcom/igexin/download/h;->a:Ljava/util/Random;

    const/16 v5, 0x1f

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_b4
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1b} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_1b} :catch_3c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    move-result v2

    add-int v2, v2, v18

    mul-int/lit16 v2, v2, 0x3e8

    goto/16 :goto_d

    :cond_16
    const v2, 0x15180

    move/from16 v0, v18

    if-le v0, v2, :cond_15

    const v18, 0x15180

    goto :goto_14

    :catch_5
    move-exception v2

    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_b4
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1c} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_1c} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_1c} :catch_3c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    :cond_17
    move/from16 v5, v18

    goto/16 :goto_e

    :cond_18
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_19

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_19

    const/16 v3, 0x12f

    if-eq v2, v3, :cond_19

    const/16 v3, 0x133

    if-ne v2, v3, :cond_1b

    :cond_19
    const/4 v3, 0x5

    move/from16 v0, v17

    if-lt v0, v3, :cond_1a

    const/16 v3, 0x1f1

    :try_start_1d
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_1d} :catch_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_1d} :catch_5d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_1d} :catch_3e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    move v2, v11

    move-object v8, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v11, v14

    goto/16 :goto_f

    :cond_1a
    :try_start_1e
    const-string v3, "Location"

    invoke-interface {v10, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_1e} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_1e} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_1e} :catch_3b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    move-result-object v3

    if-eqz v3, :cond_1b

    :try_start_1f
    new-instance v2, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v4, v4, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_1f} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_1f} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_1f} :catch_3b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    move-result-object v9

    add-int/lit8 v6, v17, 0x1

    const/16 v3, 0xc1

    :try_start_20
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_b6
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_20} :catch_7d
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_20} :catch_5e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_20} :catch_3f
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    move v2, v11

    move-object v8, v12

    move-object v10, v13

    move v7, v15

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v11, v14

    goto/16 :goto_f

    :catch_6
    move-exception v2

    const/16 v3, 0x190

    :try_start_21
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_21} :catch_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_21} :catch_5d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_21} :catch_3e
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    move v2, v11

    move-object v8, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v11, v14

    goto/16 :goto_f

    :cond_1b
    if-nez v11, :cond_1c

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1d

    :cond_1c
    if-eqz v11, :cond_22

    const/16 v3, 0xce

    if-eq v2, v3, :cond_22

    :cond_1d
    :try_start_22
    invoke-static {v2}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_22} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_22} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_22} :catch_3b
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v11

    :goto_15
    :try_start_23
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_b7
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_9b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_23} :catch_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_23} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_23} :catch_40
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    const/4 v4, 0x1

    move-object v8, v12

    move-object v10, v13

    move-object v11, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v32, v3

    move v3, v2

    move/from16 v2, v32

    goto/16 :goto_f

    :cond_1e
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1f

    const/16 v2, 0x1ed

    move v3, v11

    goto :goto_15

    :cond_1f
    if-eqz v11, :cond_21

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_21

    const/16 v20, 0x19c

    const/4 v11, 0x0

    :try_start_24
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_20
    move v3, v11

    move/from16 v2, v20

    goto :goto_15

    :cond_21
    const/16 v2, 0x1ee

    move v3, v11

    goto :goto_15

    :cond_22
    if-nez v11, :cond_76

    const-string v2, "Accept-Ranges"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    :cond_23
    const-string v2, "Content-Disposition"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_75

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    :goto_16
    const-string v2, "Content-Location"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    :cond_24
    if-nez v13, :cond_74

    const-string v2, "Content-Type"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_74

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/igexin/download/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_24} :catch_79
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_24} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_24} :catch_3b
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    move-result-object v13

    move-object v7, v13

    :goto_17
    :try_start_25
    const-string v2, "ETag"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    :goto_18
    const-string v2, "Transfer-Encoding"

    invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_72

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_19
    if-nez v2, :cond_71

    const-string v3, "Content-Length"

    invoke-interface {v10, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_71

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    :goto_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-boolean v3, v3, Lcom/igexin/download/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_26

    if-nez v13, :cond_26

    if-eqz v2, :cond_25

    const-string v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_25} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_25} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_25} :catch_41
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    move-result v2

    if-nez v2, :cond_26

    :cond_25
    const/16 v3, 0x19b

    :try_start_26
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_26} :catch_80
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_26} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_26} :catch_42
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    move v2, v11

    move-object v8, v12

    move-object v10, v7

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v11, v14

    move v7, v15

    goto/16 :goto_f

    :cond_26
    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v3, v3, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v4, v4, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v8, v8, Lcom/igexin/download/DownloadInfo;->mDestination:I

    if-eqz v13, :cond_27

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_1b
    invoke-static/range {v2 .. v9}, Lcom/igexin/download/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/igexin/download/a;

    move-result-object v2

    iget-object v3, v2, Lcom/igexin/download/a;->a:Ljava/lang/String;

    if-nez v3, :cond_28

    iget v3, v2, Lcom/igexin/download/a;->c:I
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_27} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_27} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_27} :catch_41
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    :try_start_28
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_28} :catch_80
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_28} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_28} :catch_42
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    move v2, v11

    move-object v8, v12

    move-object v10, v7

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v11, v14

    move v7, v15

    goto/16 :goto_f

    :cond_27
    const/4 v9, 0x0

    goto :goto_1b

    :cond_28
    :try_start_29
    iget-object v14, v2, Lcom/igexin/download/a;->a:Ljava/lang/String;

    iget-object v12, v2, Lcom/igexin/download/a;->b:Ljava/io/FileOutputStream;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_29} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_29} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_29} :catch_41
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    :try_start_2a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    invoke-virtual {v3, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v26, :cond_29

    const-string v2, "etag"

    move-object/from16 v0, v26

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    if-eqz v7, :cond_2a

    const-string v2, "mimetype"

    invoke-virtual {v3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/4 v2, -0x1

    if-eqz v13, :cond_2b

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_2b
    const-string v4, "total_bytes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_2a} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_2a} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_2a} :catch_41
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    move-object v2, v12

    move-object v5, v14

    move-object v14, v13

    :goto_1c
    :try_start_2b
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_ba
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_2b} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_2b} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_2b} :catch_43
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    move-result-object v26

    move/from16 v13, v23

    move v3, v11

    move v4, v15

    move-wide/from16 v10, v24

    :goto_1d
    :try_start_2c
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_2c} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_2c} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2c .. :try_end_2c} :catch_45
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    move-result v8

    const/4 v6, -0x1

    if-ne v8, v6, :cond_33

    :try_start_2d
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "current_bytes"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v14, :cond_2c

    const-string v8, "total_bytes"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v14, :cond_3d

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move/from16 v0, v23

    if-eq v0, v6, :cond_3d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_2d} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_2d} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_2d} :catch_45
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    move-result v6

    if-nez v6, :cond_31

    const/16 v6, 0xc1

    move-object v8, v2

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v9, v16

    move v7, v4

    move v2, v3

    move/from16 v5, v18

    move/from16 v4, v19

    move v3, v6

    move/from16 v6, v17

    goto/16 :goto_f

    :catch_7
    move-exception v3

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_ba
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_2e} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_2e} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_2e} :catch_43
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    move-result v3

    if-nez v3, :cond_2d

    const/16 v3, 0xc1

    move/from16 v4, v19

    :goto_1e
    :try_start_2f
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_bb
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_9e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_2f} :catch_82
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_2f} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_2f} :catch_44
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    move-object v8, v2

    move-object v10, v7

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v15

    move v2, v11

    move-object v11, v5

    move/from16 v5, v18

    goto/16 :goto_f

    :cond_2d
    :try_start_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v3, v3, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_ba
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_30} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_30} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_30} :catch_43
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2e

    const/16 v3, 0xc1

    const/16 v19, 0x1

    move/from16 v4, v19

    goto :goto_1e

    :cond_2e
    const/16 v3, 0x1ef

    move/from16 v4, v19

    goto :goto_1e

    :catch_8
    move-exception v6

    :try_start_31
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "current_bytes"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_31} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_31} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_31} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_31} :catch_45
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    move-result v6

    if-nez v6, :cond_2f

    const/16 v8, 0xc1

    move/from16 v6, v19

    :goto_1f
    :try_start_32
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_bd
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_a0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_32} :catch_84
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_32} :catch_65
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_32} :catch_46
    .catchall {:try_start_32 .. :try_end_32} :catchall_14

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v9, v16

    move v7, v4

    move/from16 v5, v18

    move v4, v6

    move/from16 v6, v17

    move-object/from16 v32, v2

    move v2, v3

    move v3, v8

    move-object/from16 v8, v32

    goto/16 :goto_f

    :cond_2f
    :try_start_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v6, v6, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    const/4 v8, 0x5

    if-ge v6, v8, :cond_30

    const/16 v8, 0xc1

    const/16 v19, 0x1

    move/from16 v6, v19

    goto :goto_1f

    :cond_30
    const/16 v8, 0x1ef

    move/from16 v6, v19

    goto :goto_1f

    :cond_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v6, v6, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_33} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_33} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_33} :catch_45
    .catchall {:try_start_33 .. :try_end_33} :catchall_13

    const/4 v8, 0x5

    if-ge v6, v8, :cond_32

    const/16 v8, 0xc1

    const/4 v6, 0x1

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v9, v16

    move v7, v4

    move/from16 v5, v18

    move v4, v6

    move/from16 v6, v17

    move-object/from16 v32, v2

    move v2, v3

    move v3, v8

    move-object/from16 v8, v32

    goto/16 :goto_f

    :cond_32
    const/16 v6, 0x1ef

    move-object v8, v2

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v9, v16

    move v7, v4

    move v2, v3

    move/from16 v5, v18

    move/from16 v4, v19

    move v3, v6

    move/from16 v6, v17

    goto/16 :goto_f

    :cond_33
    const/4 v6, 0x1

    :goto_20
    if-nez v2, :cond_34

    :try_start_34
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    :cond_34
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v4, v8}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v4, v4, Lcom/igexin/download/DownloadInfo;->mDestination:I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_34} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_34} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_34} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_34} :catch_47
    .catchall {:try_start_34 .. :try_end_34} :catchall_15

    if-nez v4, :cond_35

    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_35} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_35 .. :try_end_35} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_35} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_35} :catch_47
    .catchall {:try_start_35 .. :try_end_35} :catchall_15

    const/4 v2, 0x0

    :cond_35
    :goto_21
    add-int v12, v23, v8

    :try_start_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-int v4, v12, v13

    const/16 v15, 0x1000

    if-le v4, v15, :cond_6f

    sub-long v24, v8, v10

    const-wide/16 v30, 0x5dc

    cmp-long v4, v24, v30

    if-lez v4, :cond_6f

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "current_bytes"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v10, v0, v4, v11, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v4, v12

    :goto_22
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    monitor-enter v10
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_36} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_36} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_36} :catch_47
    .catchall {:try_start_36 .. :try_end_36} :catchall_15

    :try_start_37
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v11, v11, Lcom/igexin/download/DownloadInfo;->mControl:I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    const/4 v13, 0x1

    if-ne v11, v13, :cond_37

    const/16 v4, 0xc1

    :try_start_38
    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    monitor-exit v10
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_18

    move-object v8, v2

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v9, v16

    move v7, v6

    move v2, v3

    move/from16 v5, v18

    move/from16 v6, v17

    move v3, v4

    move/from16 v4, v19

    goto/16 :goto_f

    :catch_9
    move-exception v4

    move-object v4, v2

    :try_start_39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v9, "mounted"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const/4 v2, 0x1

    :goto_23
    move v3, v2

    move-object v2, v4

    goto/16 :goto_20

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    const-wide/16 v24, 0x1000

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/igexin/download/h;->a(Landroid/content/Context;J)Z
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_be
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_39} :catch_86
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_39} :catch_67
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_39} :catch_48
    .catchall {:try_start_39 .. :try_end_39} :catchall_16

    move-result v2

    if-nez v2, :cond_70

    const/16 v2, 0x1ec

    move-object v8, v4

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v9, v16

    move v7, v6

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v6, v17

    move/from16 v32, v3

    move v3, v2

    move/from16 v2, v32

    goto/16 :goto_f

    :cond_37
    :try_start_3a
    monitor-exit v10
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    :try_start_3b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v10, v10, Lcom/igexin/download/DownloadInfo;->mStatus:I
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3b} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_3b} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_3b} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_3b} :catch_47
    .catchall {:try_start_3b .. :try_end_3b} :catchall_15

    const/16 v11, 0x1ea

    if-ne v10, v11, :cond_3c

    const/16 v4, 0x1ea

    move-object v8, v2

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v9, v16

    move v7, v6

    move v2, v3

    move/from16 v5, v18

    move/from16 v6, v17

    move v3, v4

    move/from16 v4, v19

    goto/16 :goto_f

    :catchall_0
    move-exception v4

    move/from16 v8, v20

    :goto_24
    :try_start_3c
    monitor-exit v10
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_19

    :try_start_3d
    throw v4
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_3d} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_3d} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_3d} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3d .. :try_end_3d} :catch_49
    .catchall {:try_start_3d .. :try_end_3d} :catchall_17

    :catch_a
    move-exception v4

    move v11, v3

    move-object/from16 v12, v22

    move-object v13, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v4, v19

    move-object/from16 v2, v21

    move/from16 v5, v18

    move v7, v6

    move/from16 v6, v17

    :goto_25
    const/16 v3, 0x1ec

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_38
    if-eqz v12, :cond_39

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_3e
    const-string v14, "close"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v2, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_3e} :catch_ab
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3e .. :try_end_3e} :catch_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_3e} :catch_a9
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_3e} :catch_a8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3e .. :try_end_3e} :catch_a7

    :cond_39
    :goto_26
    if-eqz v13, :cond_3a

    :try_start_3f
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_1c

    :cond_3a
    :goto_27
    if-eqz v8, :cond_3b

    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_42

    if-nez v11, :cond_3b

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_3b
    :goto_28
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3c
    move-wide v10, v8

    move v13, v4

    move/from16 v23, v12

    move v4, v6

    goto/16 :goto_1d

    :cond_3d
    const/16 v6, 0xc8

    move-object v8, v2

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v9, v16

    move v7, v4

    move v2, v3

    move/from16 v5, v18

    move/from16 v4, v19

    move v3, v6

    move/from16 v6, v17

    goto/16 :goto_f

    :cond_3e
    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "android.os.FileUtils"

    :try_start_40
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_29
    array-length v13, v12

    if-ge v8, v13, :cond_3f

    aget-object v13, v12, v8

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_41

    aget-object v2, v12, v8

    :cond_3f
    if-eqz v2, :cond_40

    const/4 v8, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_bf

    :cond_40
    :goto_2a
    :try_start_41
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v2, v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_41} :catch_b
    .catch Ljava/io/SyncFailedException; {:try_start_41 .. :try_end_41} :catch_c
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_e

    move-object v8, v11

    goto/16 :goto_12

    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :catch_b
    move-exception v2

    move-object v8, v11

    goto/16 :goto_12

    :catch_c
    move-exception v2

    move-object v8, v11

    goto/16 :goto_12

    :catch_d
    move-exception v2

    move-object v8, v11

    goto/16 :goto_12

    :catch_e
    move-exception v2

    move-object v8, v11

    goto/16 :goto_12

    :cond_42
    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "android.os.FileUtils"

    :try_start_42
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_2b
    array-length v13, v12

    if-ge v11, v13, :cond_43

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_45

    aget-object v2, v12, v11

    :cond_43
    if-eqz v2, :cond_44

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_a6

    :cond_44
    :goto_2c
    :try_start_43
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_43} :catch_f
    .catch Ljava/io/SyncFailedException; {:try_start_43 .. :try_end_43} :catch_a5
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_a4
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_a3

    goto/16 :goto_28

    :catch_f
    move-exception v2

    goto/16 :goto_28

    :cond_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_2b

    :catch_10
    move-exception v2

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v14

    :goto_2d
    const/16 v3, 0x1eb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    const/4 v13, 0x0

    iput-boolean v13, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v21, :cond_46

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_46
    if-eqz v22, :cond_47

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_44
    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_44} :catch_90
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_44} :catch_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_44} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_44 .. :try_end_44} :catch_8d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_44 .. :try_end_44} :catch_8c

    :cond_47
    :goto_2e
    if-eqz v12, :cond_48

    :try_start_45
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_1d

    :cond_48
    :goto_2f
    if-eqz v8, :cond_49

    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    if-nez v11, :cond_49

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_49
    :goto_30
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4a
    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "android.os.FileUtils"

    :try_start_46
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_31
    array-length v13, v12

    if-ge v11, v13, :cond_4b

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4d

    aget-object v2, v12, v11

    :cond_4b
    if-eqz v2, :cond_4c

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_8b

    :cond_4c
    :goto_32
    :try_start_47
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_47} :catch_11
    .catch Ljava/io/SyncFailedException; {:try_start_47 .. :try_end_47} :catch_8a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_89
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_88

    goto :goto_30

    :catch_11
    move-exception v2

    goto :goto_30

    :cond_4d
    add-int/lit8 v11, v11, 0x1

    goto :goto_31

    :catch_12
    move-exception v2

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v14

    move/from16 v3, v20

    :goto_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    const/4 v13, 0x0

    iput-boolean v13, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v21, :cond_4e

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4e
    if-eqz v22, :cond_4f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_48
    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_48} :catch_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_48 .. :try_end_48} :catch_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_48} :catch_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_48} :catch_6e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48 .. :try_end_48} :catch_6d

    :cond_4f
    :goto_34
    if-eqz v12, :cond_50

    :try_start_49
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_1e

    :cond_50
    :goto_35
    if-eqz v8, :cond_51

    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_52

    if-nez v11, :cond_51

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_51
    :goto_36
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_52
    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "android.os.FileUtils"

    :try_start_4a
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_37
    array-length v13, v12

    if-ge v11, v13, :cond_53

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_55

    aget-object v2, v12, v11

    :cond_53
    if-eqz v2, :cond_54

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_6c

    :cond_54
    :goto_38
    :try_start_4b
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_4b} :catch_13
    .catch Ljava/io/SyncFailedException; {:try_start_4b .. :try_end_4b} :catch_6b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_6a
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_69

    goto :goto_36

    :catch_13
    move-exception v2

    goto :goto_36

    :cond_55
    add-int/lit8 v11, v11, 0x1

    goto :goto_37

    :catch_14
    move-exception v2

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v14

    move/from16 v3, v20

    :goto_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    const/4 v13, 0x0

    iput-boolean v13, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v21, :cond_56

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_56
    if-eqz v22, :cond_57

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_4c
    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_4c} :catch_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4c .. :try_end_4c} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_4c} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_4c} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4c .. :try_end_4c} :catch_4e

    :cond_57
    :goto_3a
    if-eqz v12, :cond_58

    :try_start_4d
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_1f

    :cond_58
    :goto_3b
    if-eqz v8, :cond_59

    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    if-nez v11, :cond_59

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_59
    :goto_3c
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5a
    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string v2, "android.os.FileUtils"

    :try_start_4e
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_3d
    array-length v13, v12

    if-ge v11, v13, :cond_5b

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5d

    aget-object v2, v12, v11

    :cond_5b
    if-eqz v2, :cond_5c

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_4d

    :cond_5c
    :goto_3e
    :try_start_4f
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_4f} :catch_15
    .catch Ljava/io/SyncFailedException; {:try_start_4f .. :try_end_4f} :catch_4c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_4a

    goto :goto_3c

    :catch_15
    move-exception v2

    goto :goto_3c

    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    :catch_16
    move-exception v2

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v14

    move/from16 v3, v20

    :goto_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    const/4 v13, 0x0

    iput-boolean v13, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v21, :cond_5e

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5e
    if-eqz v22, :cond_5f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_50
    const-string v13, "close"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_50} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_50} :catch_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_50} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_50} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_50} :catch_2f

    :cond_5f
    :goto_40
    if-eqz v12, :cond_60

    :try_start_51
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_20

    :cond_60
    :goto_41
    if-eqz v8, :cond_61

    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_62

    if-nez v11, :cond_61

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_61
    :goto_42
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_62
    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string v2, "android.os.FileUtils"

    :try_start_52
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_43
    array-length v13, v12

    if-ge v11, v13, :cond_63

    aget-object v13, v12, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "setPermissions"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_65

    aget-object v2, v12, v11

    :cond_63
    if-eqz v2, :cond_64

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x1a4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_2e

    :cond_64
    :goto_44
    :try_start_53
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_53} :catch_17
    .catch Ljava/io/SyncFailedException; {:try_start_53 .. :try_end_53} :catch_2d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_53} :catch_2b

    goto :goto_42

    :catch_17
    move-exception v2

    goto :goto_42

    :cond_65
    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    :catchall_1
    move-exception v2

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v14

    move/from16 v3, v20

    move/from16 v32, v11

    move-object v11, v2

    move/from16 v2, v32

    :goto_45
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v21, :cond_66

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_66
    if-eqz v22, :cond_67

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    :try_start_54
    const-string v14, "close"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_54} :catch_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_54 .. :try_end_54} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_54} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_54} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_54 .. :try_end_54} :catch_26

    :cond_67
    :goto_46
    if-eqz v12, :cond_68

    :try_start_55
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_21

    :cond_68
    :goto_47
    if-eqz v8, :cond_69

    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v12

    if-eqz v12, :cond_6a

    if-nez v2, :cond_69

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v8, 0x0

    :cond_69
    :goto_48
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    :cond_6a
    invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "android.os.FileUtils"

    :try_start_56
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_49
    array-length v14, v13

    if-ge v12, v14, :cond_6b

    aget-object v14, v13, v12

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "setPermissions"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6d

    aget-object v2, v13, v12

    :cond_6b
    if-eqz v2, :cond_6c

    const/4 v12, 0x0

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    const/16 v15, 0x1a4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_25

    :cond_6c
    :goto_4a
    :try_start_57
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v12, 0x1

    invoke-direct {v2, v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_57} :catch_18
    .catch Ljava/io/SyncFailedException; {:try_start_57 .. :try_end_57} :catch_24
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_22

    goto :goto_48

    :catch_18
    move-exception v2

    goto :goto_48

    :cond_6d
    add-int/lit8 v12, v12, 0x1

    goto :goto_49

    :catch_19
    move-exception v2

    goto/16 :goto_1

    :catch_1a
    move-exception v4

    goto/16 :goto_21

    :catch_1b
    move-exception v8

    goto/16 :goto_11

    :catch_1c
    move-exception v2

    goto/16 :goto_27

    :catch_1d
    move-exception v2

    goto/16 :goto_2f

    :catch_1e
    move-exception v2

    goto/16 :goto_35

    :catch_1f
    move-exception v2

    goto/16 :goto_3b

    :catch_20
    move-exception v2

    goto/16 :goto_41

    :catch_21
    move-exception v12

    goto/16 :goto_47

    :catch_22
    move-exception v2

    goto :goto_48

    :catch_23
    move-exception v2

    goto/16 :goto_48

    :catch_24
    move-exception v2

    goto/16 :goto_48

    :catch_25
    move-exception v2

    goto :goto_4a

    :catch_26
    move-exception v13

    goto/16 :goto_46

    :catch_27
    move-exception v13

    goto/16 :goto_46

    :catch_28
    move-exception v13

    goto/16 :goto_46

    :catch_29
    move-exception v13

    goto/16 :goto_46

    :catch_2a
    move-exception v13

    goto/16 :goto_46

    :catchall_2
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v5, v18

    move-object v12, v14

    move-object/from16 v32, v2

    move v2, v11

    move-object/from16 v11, v32

    goto/16 :goto_45

    :catchall_3
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    move-object/from16 v32, v2

    move v2, v11

    move-object/from16 v11, v32

    goto/16 :goto_45

    :catchall_4
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v12, v14

    move-object/from16 v32, v2

    move v2, v11

    move-object/from16 v11, v32

    goto/16 :goto_45

    :catchall_5
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v5, v18

    move-object v12, v14

    move-object/from16 v32, v2

    move v2, v11

    move-object/from16 v11, v32

    goto/16 :goto_45

    :catchall_6
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v2

    move v2, v11

    move-object v11, v3

    move/from16 v3, v20

    goto/16 :goto_45

    :catchall_7
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v12, v2

    move v2, v11

    move-object v11, v3

    move/from16 v3, v20

    goto/16 :goto_45

    :catchall_8
    move-exception v3

    move-object v12, v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v2, v11

    move-object v11, v3

    move/from16 v3, v20

    goto/16 :goto_45

    :catchall_9
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move-object/from16 v32, v2

    move v2, v11

    move-object/from16 v11, v32

    goto/16 :goto_45

    :catchall_a
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move-object/from16 v32, v2

    move v2, v11

    move-object/from16 v11, v32

    goto/16 :goto_45

    :catchall_b
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v32, v11

    move-object v11, v2

    move/from16 v2, v32

    goto/16 :goto_45

    :catchall_c
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v32, v11

    move-object v11, v2

    move/from16 v2, v32

    goto/16 :goto_45

    :catchall_d
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v32, v11

    move-object v11, v2

    move/from16 v2, v32

    goto/16 :goto_45

    :catchall_e
    move-exception v4

    move-object v11, v4

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v32, v3

    move v3, v2

    move/from16 v2, v32

    goto/16 :goto_45

    :catchall_f
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move v7, v15

    move-object/from16 v32, v2

    move v2, v11

    move-object/from16 v11, v32

    goto/16 :goto_45

    :catchall_10
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v7, v15

    move/from16 v32, v11

    move-object v11, v2

    move/from16 v2, v32

    goto/16 :goto_45

    :catchall_11
    move-exception v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move v2, v11

    move/from16 v5, v18

    move v7, v15

    move-object v11, v3

    move/from16 v3, v20

    goto/16 :goto_45

    :catchall_12
    move-exception v6

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v15

    move v2, v11

    move/from16 v5, v18

    move-object v11, v6

    move/from16 v6, v17

    goto/16 :goto_45

    :catchall_13
    move-exception v6

    move-object v11, v6

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v4

    move v2, v3

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    goto/16 :goto_45

    :catchall_14
    move-exception v9

    move-object v11, v9

    move-object v12, v2

    move-object v10, v7

    move v2, v3

    move v7, v4

    move-object/from16 v9, v16

    move v4, v6

    move v3, v8

    move-object v8, v5

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_45

    :catchall_15
    move-exception v4

    move-object v11, v4

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v6

    move v2, v3

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v6, v17

    move/from16 v3, v20

    goto/16 :goto_45

    :catchall_16
    move-exception v2

    move-object v11, v2

    move-object v12, v4

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v6

    move v2, v3

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v6, v17

    move/from16 v3, v20

    goto/16 :goto_45

    :catchall_17
    move-exception v4

    move-object v11, v4

    move-object v12, v2

    move-object v10, v7

    move-object/from16 v9, v16

    move v7, v6

    move v2, v3

    move/from16 v4, v19

    move/from16 v6, v17

    move v3, v8

    move-object v8, v5

    move/from16 v5, v18

    goto/16 :goto_45

    :catch_2b
    move-exception v2

    goto/16 :goto_42

    :catch_2c
    move-exception v2

    goto/16 :goto_42

    :catch_2d
    move-exception v2

    goto/16 :goto_42

    :catch_2e
    move-exception v2

    goto/16 :goto_44

    :catch_2f
    move-exception v2

    goto/16 :goto_40

    :catch_30
    move-exception v2

    goto/16 :goto_40

    :catch_31
    move-exception v2

    goto/16 :goto_40

    :catch_32
    move-exception v2

    goto/16 :goto_40

    :catch_33
    move-exception v2

    goto/16 :goto_40

    :catch_34
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    move/from16 v5, v18

    goto/16 :goto_3f

    :catch_35
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    goto/16 :goto_3f

    :catch_36
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v12, v14

    goto/16 :goto_3f

    :catch_37
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    move/from16 v5, v18

    goto/16 :goto_3f

    :catch_38
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v2

    move/from16 v5, v18

    goto/16 :goto_3f

    :catch_39
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v2

    goto/16 :goto_3f

    :catch_3a
    move-exception v3

    move-object v12, v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    goto/16 :goto_3f

    :catch_3b
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    goto/16 :goto_3f

    :catch_3c
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_3f

    :catch_3d
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    goto/16 :goto_3f

    :catch_3e
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_3f

    :catch_3f
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_3f

    :catch_40
    move-exception v4

    move v11, v3

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v3, v2

    goto/16 :goto_3f

    :catch_41
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move v7, v15

    goto/16 :goto_3f

    :catch_42
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v7, v15

    goto/16 :goto_3f

    :catch_43
    move-exception v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move v7, v15

    move/from16 v5, v18

    goto/16 :goto_3f

    :catch_44
    move-exception v6

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v15

    move/from16 v5, v18

    goto/16 :goto_3f

    :catch_45
    move-exception v6

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v4

    move/from16 v5, v18

    move/from16 v3, v20

    move/from16 v4, v19

    goto/16 :goto_3f

    :catch_46
    move-exception v9

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object/from16 v9, v16

    move v7, v4

    move v3, v8

    move v4, v6

    move-object v8, v5

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_3f

    :catch_47
    move-exception v4

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v4, v19

    move/from16 v5, v18

    move v7, v6

    move/from16 v3, v20

    move/from16 v6, v17

    goto/16 :goto_3f

    :catch_48
    move-exception v2

    move v11, v3

    move-object v12, v4

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v6

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v6, v17

    goto/16 :goto_3f

    :catch_49
    move-exception v4

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object/from16 v9, v16

    move/from16 v4, v19

    move v7, v6

    move v3, v8

    move-object v8, v5

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_3f

    :catch_4a
    move-exception v2

    goto/16 :goto_3c

    :catch_4b
    move-exception v2

    goto/16 :goto_3c

    :catch_4c
    move-exception v2

    goto/16 :goto_3c

    :catch_4d
    move-exception v2

    goto/16 :goto_3e

    :catch_4e
    move-exception v2

    goto/16 :goto_3a

    :catch_4f
    move-exception v2

    goto/16 :goto_3a

    :catch_50
    move-exception v2

    goto/16 :goto_3a

    :catch_51
    move-exception v2

    goto/16 :goto_3a

    :catch_52
    move-exception v2

    goto/16 :goto_3a

    :catch_53
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    move/from16 v5, v18

    goto/16 :goto_39

    :catch_54
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    goto/16 :goto_39

    :catch_55
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v12, v14

    goto/16 :goto_39

    :catch_56
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    move/from16 v5, v18

    goto/16 :goto_39

    :catch_57
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v2

    move/from16 v5, v18

    goto/16 :goto_39

    :catch_58
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v2

    goto/16 :goto_39

    :catch_59
    move-exception v3

    move-object v12, v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    goto/16 :goto_39

    :catch_5a
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    goto/16 :goto_39

    :catch_5b
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_39

    :catch_5c
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    goto/16 :goto_39

    :catch_5d
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_39

    :catch_5e
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_39

    :catch_5f
    move-exception v4

    move v11, v3

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v3, v2

    goto/16 :goto_39

    :catch_60
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move v7, v15

    goto/16 :goto_39

    :catch_61
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v7, v15

    goto/16 :goto_39

    :catch_62
    move-exception v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move v7, v15

    move/from16 v5, v18

    goto/16 :goto_39

    :catch_63
    move-exception v6

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v15

    move/from16 v5, v18

    goto/16 :goto_39

    :catch_64
    move-exception v6

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v4

    move/from16 v5, v18

    move/from16 v3, v20

    move/from16 v4, v19

    goto/16 :goto_39

    :catch_65
    move-exception v9

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object/from16 v9, v16

    move v7, v4

    move v3, v8

    move v4, v6

    move-object v8, v5

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_39

    :catch_66
    move-exception v4

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v4, v19

    move/from16 v5, v18

    move v7, v6

    move/from16 v3, v20

    move/from16 v6, v17

    goto/16 :goto_39

    :catch_67
    move-exception v2

    move v11, v3

    move-object v12, v4

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v6

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v6, v17

    goto/16 :goto_39

    :catch_68
    move-exception v4

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object/from16 v9, v16

    move/from16 v4, v19

    move v7, v6

    move v3, v8

    move-object v8, v5

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_39

    :catch_69
    move-exception v2

    goto/16 :goto_36

    :catch_6a
    move-exception v2

    goto/16 :goto_36

    :catch_6b
    move-exception v2

    goto/16 :goto_36

    :catch_6c
    move-exception v2

    goto/16 :goto_38

    :catch_6d
    move-exception v2

    goto/16 :goto_34

    :catch_6e
    move-exception v2

    goto/16 :goto_34

    :catch_6f
    move-exception v2

    goto/16 :goto_34

    :catch_70
    move-exception v2

    goto/16 :goto_34

    :catch_71
    move-exception v2

    goto/16 :goto_34

    :catch_72
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    move/from16 v5, v18

    goto/16 :goto_33

    :catch_73
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    goto/16 :goto_33

    :catch_74
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v12, v14

    goto/16 :goto_33

    :catch_75
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v14

    move/from16 v5, v18

    goto/16 :goto_33

    :catch_76
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v2

    move/from16 v5, v18

    goto/16 :goto_33

    :catch_77
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move-object v12, v2

    goto/16 :goto_33

    :catch_78
    move-exception v3

    move-object v12, v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    goto/16 :goto_33

    :catch_79
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    goto/16 :goto_33

    :catch_7a
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_33

    :catch_7b
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    goto/16 :goto_33

    :catch_7c
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_33

    :catch_7d
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_33

    :catch_7e
    move-exception v4

    move v11, v3

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v3, v2

    goto/16 :goto_33

    :catch_7f
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move v7, v15

    goto/16 :goto_33

    :catch_80
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v7, v15

    goto/16 :goto_33

    :catch_81
    move-exception v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move v7, v15

    move/from16 v5, v18

    goto/16 :goto_33

    :catch_82
    move-exception v6

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v15

    move/from16 v5, v18

    goto/16 :goto_33

    :catch_83
    move-exception v6

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v4

    move/from16 v5, v18

    move/from16 v3, v20

    move/from16 v4, v19

    goto/16 :goto_33

    :catch_84
    move-exception v9

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object/from16 v9, v16

    move v7, v4

    move v3, v8

    move v4, v6

    move-object v8, v5

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_33

    :catch_85
    move-exception v4

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v4, v19

    move/from16 v5, v18

    move v7, v6

    move/from16 v3, v20

    move/from16 v6, v17

    goto/16 :goto_33

    :catch_86
    move-exception v2

    move v11, v3

    move-object v12, v4

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v6

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v6, v17

    goto/16 :goto_33

    :catch_87
    move-exception v4

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object/from16 v9, v16

    move/from16 v4, v19

    move v7, v6

    move v3, v8

    move-object v8, v5

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_33

    :catch_88
    move-exception v2

    goto/16 :goto_30

    :catch_89
    move-exception v2

    goto/16 :goto_30

    :catch_8a
    move-exception v2

    goto/16 :goto_30

    :catch_8b
    move-exception v2

    goto/16 :goto_32

    :catch_8c
    move-exception v2

    goto/16 :goto_2e

    :catch_8d
    move-exception v2

    goto/16 :goto_2e

    :catch_8e
    move-exception v2

    goto/16 :goto_2e

    :catch_8f
    move-exception v2

    goto/16 :goto_2e

    :catch_90
    move-exception v2

    goto/16 :goto_2e

    :catch_91
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v14

    goto/16 :goto_2d

    :catch_92
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v12, v14

    goto/16 :goto_2d

    :catch_93
    move-exception v2

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v14

    goto/16 :goto_2d

    :catch_94
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v12, v2

    goto/16 :goto_2d

    :catch_95
    move-exception v3

    move-object/from16 v22, v12

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v12, v2

    goto/16 :goto_2d

    :catch_96
    move-exception v3

    move-object v12, v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_2d

    :catch_97
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_2d

    :catch_98
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    goto/16 :goto_2d

    :catch_99
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    goto/16 :goto_2d

    :catch_9a
    move-exception v2

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_2d

    :catch_9b
    move-exception v2

    move v11, v3

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_2d

    :catch_9c
    move-exception v2

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move v7, v15

    goto/16 :goto_2d

    :catch_9d
    move-exception v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move v7, v15

    goto/16 :goto_2d

    :catch_9e
    move-exception v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v15

    move/from16 v5, v18

    goto/16 :goto_2d

    :catch_9f
    move-exception v6

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move v7, v4

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_2d

    :catch_a0
    move-exception v8

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v4

    move/from16 v5, v18

    move v4, v6

    move/from16 v6, v17

    goto/16 :goto_2d

    :catch_a1
    move-exception v4

    move v11, v3

    move-object v12, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v4, v19

    move/from16 v5, v18

    move v7, v6

    move/from16 v6, v17

    goto/16 :goto_2d

    :catch_a2
    move-exception v2

    move v11, v3

    move-object v12, v4

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v6

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v6, v17

    goto/16 :goto_2d

    :catch_a3
    move-exception v2

    goto/16 :goto_28

    :catch_a4
    move-exception v2

    goto/16 :goto_28

    :catch_a5
    move-exception v2

    goto/16 :goto_28

    :catch_a6
    move-exception v2

    goto/16 :goto_2c

    :catch_a7
    move-exception v2

    goto/16 :goto_26

    :catch_a8
    move-exception v2

    goto/16 :goto_26

    :catch_a9
    move-exception v2

    goto/16 :goto_26

    :catch_aa
    move-exception v2

    goto/16 :goto_26

    :catch_ab
    move-exception v2

    goto/16 :goto_26

    :catch_ac
    move-exception v2

    move-object v2, v3

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v13, v14

    goto/16 :goto_25

    :catch_ad
    move-exception v2

    move-object/from16 v2, v21

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v13, v14

    goto/16 :goto_25

    :catch_ae
    move-exception v2

    move-object/from16 v2, v21

    move-object v10, v13

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v13, v14

    goto/16 :goto_25

    :catch_af
    move-exception v2

    move-object/from16 v2, v21

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v13, v14

    goto/16 :goto_25

    :catch_b0
    move-exception v3

    move-object v10, v13

    move-object v8, v5

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move/from16 v5, v18

    move-object v13, v2

    move-object/from16 v2, v21

    goto/16 :goto_25

    :catch_b1
    move-exception v3

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v13, v2

    move-object/from16 v2, v21

    goto/16 :goto_25

    :catch_b2
    move-exception v3

    move-object/from16 v12, v22

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v13, v2

    move-object/from16 v2, v21

    goto/16 :goto_25

    :catch_b3
    move-exception v2

    move-object/from16 v2, v21

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v13, v12

    move-object/from16 v12, v22

    goto/16 :goto_25

    :catch_b4
    move-exception v2

    move-object/from16 v2, v21

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move-object v13, v12

    move-object/from16 v12, v22

    goto/16 :goto_25

    :catch_b5
    move-exception v2

    move-object/from16 v2, v21

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move-object v13, v12

    move-object/from16 v12, v22

    goto/16 :goto_25

    :catch_b6
    move-exception v2

    move-object/from16 v2, v21

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v13, v12

    move-object/from16 v12, v22

    goto/16 :goto_25

    :catch_b7
    move-exception v2

    move v11, v3

    move-object/from16 v2, v21

    move-object v10, v13

    move-object v8, v14

    move v7, v15

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object v13, v12

    move-object/from16 v12, v22

    goto/16 :goto_25

    :catch_b8
    move-exception v2

    move-object/from16 v2, v21

    move-object v13, v12

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object/from16 v12, v22

    move v7, v15

    goto/16 :goto_25

    :catch_b9
    move-exception v2

    move-object/from16 v2, v21

    move-object v13, v12

    move-object v10, v7

    move-object v8, v14

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v5, v18

    move/from16 v4, v19

    move-object/from16 v12, v22

    move v7, v15

    goto/16 :goto_25

    :catch_ba
    move-exception v3

    move-object/from16 v12, v22

    move-object v13, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move/from16 v4, v19

    move v7, v15

    move/from16 v5, v18

    move-object/from16 v2, v21

    goto/16 :goto_25

    :catch_bb
    move-exception v3

    move-object/from16 v12, v22

    move-object v13, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move-object/from16 v2, v21

    move v7, v15

    move/from16 v5, v18

    goto/16 :goto_25

    :catch_bc
    move-exception v6

    move v11, v3

    move-object/from16 v12, v22

    move-object v13, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move/from16 v6, v17

    move-object/from16 v2, v21

    move v7, v4

    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_25

    :catch_bd
    move-exception v8

    move v11, v3

    move-object/from16 v12, v22

    move-object v13, v2

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v4

    move-object/from16 v2, v21

    move/from16 v5, v18

    move v4, v6

    move/from16 v6, v17

    goto/16 :goto_25

    :catch_be
    move-exception v2

    move v11, v3

    move-object/from16 v2, v21

    move-object/from16 v12, v22

    move-object v13, v4

    move-object v10, v7

    move-object v8, v5

    move-object/from16 v9, v16

    move v7, v6

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v6, v17

    goto/16 :goto_25

    :catch_bf
    move-exception v2

    goto/16 :goto_2a

    :catch_c0
    move-exception v12

    goto/16 :goto_10

    :catch_c1
    move-exception v12

    goto/16 :goto_10

    :catch_c2
    move-exception v12

    goto/16 :goto_10

    :catch_c3
    move-exception v12

    goto/16 :goto_10

    :catch_c4
    move-exception v12

    goto/16 :goto_10

    :catchall_18
    move-exception v8

    move-object/from16 v32, v8

    move v8, v4

    move-object/from16 v4, v32

    goto/16 :goto_24

    :catchall_19
    move-exception v4

    goto/16 :goto_24

    :catch_c5
    move-exception v2

    goto/16 :goto_2

    :catch_c6
    move-exception v2

    goto/16 :goto_2

    :catch_c7
    move-exception v2

    goto/16 :goto_2

    :catch_c8
    move-exception v2

    goto/16 :goto_5

    :catch_c9
    move-exception v2

    goto/16 :goto_0

    :catch_ca
    move-exception v2

    goto/16 :goto_0

    :catch_cb
    move-exception v2

    goto/16 :goto_0

    :catch_cc
    move-exception v2

    goto/16 :goto_0

    :catch_cd
    move-exception v2

    goto/16 :goto_0

    :cond_6e
    move-object v8, v11

    goto/16 :goto_12

    :cond_6f
    move-wide v8, v10

    move v4, v13

    goto/16 :goto_22

    :cond_70
    move v2, v3

    goto/16 :goto_23

    :cond_71
    move-object v13, v4

    goto/16 :goto_1a

    :cond_72
    move-object v2, v9

    goto/16 :goto_19

    :cond_73
    move-object/from16 v26, v8

    goto/16 :goto_18

    :cond_74
    move-object v7, v13

    goto/16 :goto_17

    :cond_75
    move-object v5, v7

    goto/16 :goto_16

    :cond_76
    move-object v2, v12

    move-object v7, v13

    move-object v5, v14

    move-object v14, v4

    goto/16 :goto_1c

    :cond_77
    move-object v12, v2

    goto/16 :goto_b

    :cond_78
    move-object/from16 v22, v12

    goto/16 :goto_a

    :cond_79
    move-object v4, v10

    goto/16 :goto_7

    :cond_7a
    move-object v5, v8

    goto/16 :goto_6

    :cond_7b
    move-object v2, v14

    move-object v14, v8

    move-object v8, v4

    move-object v4, v10

    goto/16 :goto_8
.end method
