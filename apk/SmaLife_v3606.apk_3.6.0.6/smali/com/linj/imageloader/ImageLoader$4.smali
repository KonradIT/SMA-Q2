.class Lcom/linj/imageloader/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linj/imageloader/ImageLoader;->buildTask(Ljava/lang/String;Landroid/widget/ImageView;Lcom/linj/imageloader/DisplayImageOptions;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/imageloader/ImageLoader;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$options:Lcom/linj/imageloader/DisplayImageOptions;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/linj/imageloader/ImageLoader;Lcom/linj/imageloader/DisplayImageOptions;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    iput-object p2, p0, Lcom/linj/imageloader/ImageLoader$4;->val$options:Lcom/linj/imageloader/DisplayImageOptions;

    iput-object p3, p0, Lcom/linj/imageloader/ImageLoader$4;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/linj/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->val$options:Lcom/linj/imageloader/DisplayImageOptions;

    iget-boolean v3, v3, Lcom/linj/imageloader/DisplayImageOptions;->fromNet:Z

    if-eqz v3, :cond_4

    .line 238
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    iget-object v4, p0, Lcom/linj/imageloader/ImageLoader$4;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 239
    iget-object v5, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    iget-object v6, p0, Lcom/linj/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/linj/imageloader/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-virtual {v3, v4, v5}, Lcom/linj/imageloader/ImageLoader;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 241
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 243
    iget-object v5, p0, Lcom/linj/imageloader/ImageLoader$4;->val$imageView:Landroid/widget/ImageView;

    .line 242
    invoke-static {v3, v4, v5}, Lcom/linj/imageloader/ImageLoader;->access$3(Lcom/linj/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->val$options:Lcom/linj/imageloader/DisplayImageOptions;

    iget-boolean v3, v3, Lcom/linj/imageloader/DisplayImageOptions;->cacheInMemory:Z

    if-eqz v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    iget-object v4, p0, Lcom/linj/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/linj/imageloader/ImageLoader;->addBitmapToLruCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 266
    :cond_1
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    iget-object v4, p0, Lcom/linj/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lcom/linj/imageloader/ImageLoader$4;->val$imageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/linj/imageloader/ImageLoader$4;->val$options:Lcom/linj/imageloader/DisplayImageOptions;

    invoke-static {v3, v4, v5, v0, v6}, Lcom/linj/imageloader/ImageLoader;->access$4(Lcom/linj/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/linj/imageloader/DisplayImageOptions;)V

    .line 268
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    invoke-static {v3}, Lcom/linj/imageloader/ImageLoader;->access$0(Lcom/linj/imageloader/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 269
    return-void

    .line 246
    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->val$options:Lcom/linj/imageloader/DisplayImageOptions;

    iget-boolean v3, v3, Lcom/linj/imageloader/DisplayImageOptions;->cacheOnDisk:Z

    if-eqz v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/linj/imageloader/DownloadImgUtils;->downloadImgByUrl(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    .line 249
    .local v1, "downloadState":Z
    if-eqz v1, :cond_0

    .line 250
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 251
    iget-object v5, p0, Lcom/linj/imageloader/ImageLoader$4;->val$imageView:Landroid/widget/ImageView;

    .line 250
    invoke-static {v3, v4, v5}, Lcom/linj/imageloader/ImageLoader;->access$3(Lcom/linj/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    goto :goto_0

    .line 254
    .end local v1    # "downloadState":Z
    :cond_3
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    .line 255
    iget-object v4, p0, Lcom/linj/imageloader/ImageLoader$4;->val$imageView:Landroid/widget/ImageView;

    .line 254
    invoke-static {v3, v4}, Lcom/linj/imageloader/DownloadImgUtils;->downloadImgByUrl(Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    goto :goto_0

    .line 259
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lcom/linj/imageloader/ImageLoader$4;->this$0:Lcom/linj/imageloader/ImageLoader;

    iget-object v4, p0, Lcom/linj/imageloader/ImageLoader$4;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lcom/linj/imageloader/ImageLoader$4;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v3, v4, v5}, Lcom/linj/imageloader/ImageLoader;->access$3(Lcom/linj/imageloader/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
