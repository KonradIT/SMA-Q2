.class public Lm/framework/ui/widget/asyncview/BitmapProcessor;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x5

.field private static final MAX_REQ_TIME:I = 0xc8

.field private static final MAX_SIZE:I = 0x28

.field private static final OVERFLOW_SIZE:I = 0x32

.field private static instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;


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

.field private netReqTPS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private reqList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private work:Z

.field private workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 96
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 98
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    .line 101
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_0
    new-instance v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    .line 105
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    return v0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    return-object v0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    return-object v0
.end method

.method public static getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v0, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static declared-synchronized prepare(Ljava/lang/String;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static process(Ljava/lang/String;Lm/framework/ui/widget/asyncview/BitmapCallback;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lm/framework/ui/widget/asyncview/BitmapCallback;

    .prologue
    .line 65
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    if-nez p0, :cond_1

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_1
    new-instance v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-direct {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;-><init>()V

    .line 74
    .local v0, "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    invoke-static {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Ljava/lang/String;)V

    .line 75
    invoke-static {v0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapCallback;)V

    .line 76
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v1, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v1, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 79
    :goto_1
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v1, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_3

    .line 83
    :cond_2
    invoke-static {}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->start()V

    goto :goto_0

    .line 80
    :cond_3
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v1, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    .line 49
    return-void
.end method

.method public static stop()V
    .locals 3

    .prologue
    .line 52
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    .line 54
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v1, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v1, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 60
    const/4 v1, 0x0

    sput-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 62
    :cond_0
    return-void

    .line 56
    :cond_1
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v1, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 57
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    iget-object v1, v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->interrupt()V

    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
