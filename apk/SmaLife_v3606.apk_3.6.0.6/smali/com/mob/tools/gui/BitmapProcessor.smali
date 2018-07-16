.class public Lcom/mob/tools/gui/BitmapProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/BitmapProcessor$ImageReq;,
        Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;,
        Lcom/mob/tools/gui/BitmapProcessor$PatchInputStream;,
        Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;,
        Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x3

.field private static final MAX_REQ_TIME:I = 0xc8

.field private static final MAX_SIZE:I = 0x28

.field private static final OVERFLOW_SIZE:I = 0x32

.field private static instance:Lcom/mob/tools/gui/BitmapProcessor;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private cacheMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

.field private netReqTPS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mob/tools/gui/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private reqList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mob/tools/gui/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private work:Z

.field private workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/mob/tools/utils/R;->getImageCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;

    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;-><init>(Lcom/mob/tools/gui/BitmapProcessor;)V

    iput-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    return-void
.end method

.method static synthetic access$1200(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/gui/BitmapProcessor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mob/tools/gui/BitmapProcessor;)[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mob/tools/gui/BitmapProcessor;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v0, v0, Lcom/mob/tools/gui/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static declared-synchronized prepare(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/mob/tools/gui/BitmapProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mob/tools/gui/BitmapProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V
    .locals 2

    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;

    invoke-direct {v0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;-><init>()V

    invoke-static {v0, p0}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$002(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/mob/tools/gui/BitmapProcessor$ImageReq;->access$102(Lcom/mob/tools/gui/BitmapProcessor$ImageReq;Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v0, v0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    :goto_1
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v0, v0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v0, v0, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/mob/tools/gui/BitmapProcessor;->start()V

    goto :goto_0
.end method

.method public static start()V
    .locals 2

    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    return-void
.end method

.method public static stop()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iput-boolean v0, v1, Lcom/mob/tools/gui/BitmapProcessor;->work:Z

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->manager:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-virtual {v1}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->cancel()V

    :goto_0
    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    iget-object v1, v1, Lcom/mob/tools/gui/BitmapProcessor;->workerList:[Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mob/tools/gui/BitmapProcessor$WorkerThread;->interrupt()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/mob/tools/gui/BitmapProcessor;->instance:Lcom/mob/tools/gui/BitmapProcessor;

    :cond_2
    return-void
.end method
