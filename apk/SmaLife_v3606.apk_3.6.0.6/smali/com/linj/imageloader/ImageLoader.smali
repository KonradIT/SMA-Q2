.class public Lcom/linj/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;,
        Lcom/linj/imageloader/ImageLoader$Type;
    }
.end annotation


# static fields
.field private static final DEAFULT_THREAD_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static mInstance:Lcom/linj/imageloader/ImageLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolThread:Ljava/lang/Thread;

.field private mSemaphoreThreadPool:Ljava/util/concurrent/Semaphore;

.field private mTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mType:Lcom/linj/imageloader/ImageLoader$Type;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ILcom/linj/imageloader/ImageLoader$Type;Landroid/content/Context;)V
    .locals 1
    .param p1, "threadCount"    # I
    .param p2, "type"    # Lcom/linj/imageloader/ImageLoader$Type;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/linj/imageloader/ImageLoader$Type;->LIFO:Lcom/linj/imageloader/ImageLoader$Type;

    iput-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mType:Lcom/linj/imageloader/ImageLoader$Type;

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/linj/imageloader/ImageLoader;->init(ILcom/linj/imageloader/ImageLoader$Type;Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/linj/imageloader/ImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mSemaphoreThreadPool:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1(Lcom/linj/imageloader/ImageLoader;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/linj/imageloader/ImageLoader;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/linj/imageloader/ImageLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$3(Lcom/linj/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/linj/imageloader/ImageLoader;->loadImageFromLocal(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/linj/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/linj/imageloader/DisplayImageOptions;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linj/imageloader/ImageLoader;->refreashBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/linj/imageloader/DisplayImageOptions;)V

    return-void
.end method

.method private addTask(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/linj/imageloader/ImageLoader;->mTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImageLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildTask(Ljava/lang/String;Landroid/widget/ImageView;Lcom/linj/imageloader/DisplayImageOptions;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/linj/imageloader/DisplayImageOptions;

    .prologue
    .line 229
    new-instance v0, Lcom/linj/imageloader/ImageLoader$4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/linj/imageloader/ImageLoader$4;-><init>(Lcom/linj/imageloader/ImageLoader;Lcom/linj/imageloader/DisplayImageOptions;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-object v0
.end method

.method private getBitmapFromLruCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getInstance(ILcom/linj/imageloader/ImageLoader$Type;Landroid/content/Context;)Lcom/linj/imageloader/ImageLoader;
    .locals 2
    .param p0, "threadCount"    # I
    .param p1, "type"    # Lcom/linj/imageloader/ImageLoader$Type;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-object v0, Lcom/linj/imageloader/ImageLoader;->mInstance:Lcom/linj/imageloader/ImageLoader;

    if-nez v0, :cond_1

    .line 101
    const-class v1, Lcom/linj/imageloader/ImageLoader;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/linj/imageloader/ImageLoader;->mInstance:Lcom/linj/imageloader/ImageLoader;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/linj/imageloader/ImageLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/linj/imageloader/ImageLoader;-><init>(ILcom/linj/imageloader/ImageLoader$Type;Landroid/content/Context;)V

    sput-object v0, Lcom/linj/imageloader/ImageLoader;->mInstance:Lcom/linj/imageloader/ImageLoader;

    .line 101
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    sget-object v0, Lcom/linj/imageloader/ImageLoader;->mInstance:Lcom/linj/imageloader/ImageLoader;

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/linj/imageloader/ImageLoader;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/linj/imageloader/ImageLoader;->mInstance:Lcom/linj/imageloader/ImageLoader;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcom/linj/imageloader/ImageLoader;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/linj/imageloader/ImageLoader;->mInstance:Lcom/linj/imageloader/ImageLoader;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/linj/imageloader/ImageLoader;

    const/4 v2, 0x1

    sget-object v3, Lcom/linj/imageloader/ImageLoader$Type;->LIFO:Lcom/linj/imageloader/ImageLoader$Type;

    invoke-direct {v0, v2, v3, p0}, Lcom/linj/imageloader/ImageLoader;-><init>(ILcom/linj/imageloader/ImageLoader$Type;Landroid/content/Context;)V

    sput-object v0, Lcom/linj/imageloader/ImageLoader;->mInstance:Lcom/linj/imageloader/ImageLoader;

    .line 83
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcom/linj/imageloader/ImageLoader;->mInstance:Lcom/linj/imageloader/ImageLoader;

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTask()Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mType:Lcom/linj/imageloader/ImageLoader$Type;

    sget-object v1, Lcom/linj/imageloader/ImageLoader$Type;->FIFO:Lcom/linj/imageloader/ImageLoader$Type;

    if-ne v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 436
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->takeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private init(ILcom/linj/imageloader/ImageLoader$Type;Landroid/content/Context;)V
    .locals 4
    .param p1, "threadCount"    # I
    .param p2, "type"    # Lcom/linj/imageloader/ImageLoader$Type;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v1, v2

    .line 123
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 125
    .local v0, "cacheMemory":I
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/linj/imageloader/ImageLoader;->mContext:Landroid/content/Context;

    .line 126
    new-instance v2, Lcom/linj/imageloader/ImageLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/linj/imageloader/ImageLoader$1;-><init>(Lcom/linj/imageloader/ImageLoader;I)V

    iput-object v2, p0, Lcom/linj/imageloader/ImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    .line 137
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/linj/imageloader/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 138
    iput-object p2, p0, Lcom/linj/imageloader/ImageLoader;->mType:Lcom/linj/imageloader/ImageLoader$Type;

    .line 139
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v2, p0, Lcom/linj/imageloader/ImageLoader;->mSemaphoreThreadPool:Ljava/util/concurrent/Semaphore;

    .line 140
    new-instance v2, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v2, p0, Lcom/linj/imageloader/ImageLoader;->mTaskQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 141
    invoke-direct {p0}, Lcom/linj/imageloader/ImageLoader;->initBackThread()V

    .line 142
    return-void
.end method

.method private initBackThread()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/linj/imageloader/ImageLoader$2;

    invoke-direct {v0, p0}, Lcom/linj/imageloader/ImageLoader$2;-><init>(Lcom/linj/imageloader/ImageLoader;)V

    iput-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mPoolThread:Ljava/lang/Thread;

    .line 172
    iget-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mPoolThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void
.end method

.method private loadImageFromLocal(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 282
    invoke-static {p2}, Lcom/linj/imageloader/ImageSizeUtil;->getImageViewSize(Landroid/widget/ImageView;)Lcom/linj/imageloader/ImageSizeUtil$ImageSize;

    move-result-object v1

    .line 284
    .local v1, "imageSize":Lcom/linj/imageloader/ImageSizeUtil$ImageSize;
    iget v2, v1, Lcom/linj/imageloader/ImageSizeUtil$ImageSize;->width:I

    .line 285
    iget v3, v1, Lcom/linj/imageloader/ImageSizeUtil$ImageSize;->height:I

    .line 284
    invoke-virtual {p0, p1, v2, v3}, Lcom/linj/imageloader/ImageLoader;->decodeSampledBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    .local v0, "bm":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private refreashBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/linj/imageloader/DisplayImageOptions;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "options"    # Lcom/linj/imageloader/DisplayImageOptions;

    .prologue
    .line 339
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 340
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;-><init>(Lcom/linj/imageloader/ImageLoader;Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;)V

    .line 341
    .local v0, "holder":Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;
    iput-object p3, v0, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 342
    iput-object p1, v0, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;->path:Ljava/lang/String;

    .line 343
    iput-object p2, v0, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;->imageView:Landroid/widget/ImageView;

    .line 344
    iput-object p4, v0, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;->options:Lcom/linj/imageloader/DisplayImageOptions;

    .line 345
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 346
    iget-object v2, p0, Lcom/linj/imageloader/ImageLoader;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    return-void
.end method


# virtual methods
.method protected addBitmapToLruCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/linj/imageloader/ImageLoader;->getBitmapFromLruCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 358
    if-eqz p2, :cond_0

    .line 359
    iget-object v0, p0, Lcom/linj/imageloader/ImageLoader;->mLruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_0
    return-void
.end method

.method public bytes2hex02([B)Ljava/lang/String;
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 322
    .local v2, "tmp":Ljava/lang/String;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 322
    :cond_0
    aget-byte v0, p1, v3

    .line 325
    .local v0, "b":B
    and-int/lit16 v5, v0, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected decodeSampledBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 375
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 376
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 377
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 379
    invoke-static {v1, p2, p3}, Lcom/linj/imageloader/ImageSizeUtil;->caculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 383
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 384
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string v1, "mounted"

    .line 401
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 401
    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "cachePath":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 406
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cachePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/linj/imageloader/DisplayImageOptions;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/linj/imageloader/DisplayImageOptions;

    .prologue
    .line 185
    iget-object v1, p3, Lcom/linj/imageloader/DisplayImageOptions;->displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

    iget v2, p3, Lcom/linj/imageloader/DisplayImageOptions;->imageResOnLoading:I

    invoke-interface {v1, v2, p2}, Lcom/linj/imageloader/displayer/BitmapDisplayer;->display(ILandroid/widget/ImageView;)V

    .line 186
    iget-object v1, p0, Lcom/linj/imageloader/ImageLoader;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Lcom/linj/imageloader/ImageLoader$3;

    iget-object v2, p0, Lcom/linj/imageloader/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/linj/imageloader/ImageLoader$3;-><init>(Lcom/linj/imageloader/ImageLoader;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/linj/imageloader/ImageLoader;->mUIHandler:Landroid/os/Handler;

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/linj/imageloader/ImageLoader;->getBitmapFromLruCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/linj/imageloader/ImageLoader;->refreashBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/linj/imageloader/DisplayImageOptions;)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/linj/imageloader/ImageLoader;->buildTask(Ljava/lang/String;Landroid/widget/ImageView;Lcom/linj/imageloader/DisplayImageOptions;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linj/imageloader/ImageLoader;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 301
    .local v0, "digest":[B
    :try_start_0
    const-string v3, "md5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 302
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 303
    invoke-virtual {p0, v0}, Lcom/linj/imageloader/ImageLoader;->bytes2hex02([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 309
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 305
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 309
    const/4 v3, 0x0

    goto :goto_0
.end method
