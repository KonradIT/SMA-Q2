.class Lcom/linj/imageloader/ImageLoader$2;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linj/imageloader/ImageLoader;->initBackThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/imageloader/ImageLoader;


# direct methods
.method constructor <init>(Lcom/linj/imageloader/ImageLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/imageloader/ImageLoader$2;->this$0:Lcom/linj/imageloader/ImageLoader;

    .line 149
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/linj/imageloader/ImageLoader$2;->this$0:Lcom/linj/imageloader/ImageLoader;

    invoke-static {v2}, Lcom/linj/imageloader/ImageLoader;->access$0(Lcom/linj/imageloader/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 159
    iget-object v2, p0, Lcom/linj/imageloader/ImageLoader$2;->this$0:Lcom/linj/imageloader/ImageLoader;

    invoke-static {v2}, Lcom/linj/imageloader/ImageLoader;->access$1(Lcom/linj/imageloader/ImageLoader;)Ljava/lang/Runnable;

    move-result-object v1

    .line 161
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/linj/imageloader/ImageLoader$2;->this$0:Lcom/linj/imageloader/ImageLoader;

    invoke-static {v2}, Lcom/linj/imageloader/ImageLoader;->access$2(Lcom/linj/imageloader/ImageLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
