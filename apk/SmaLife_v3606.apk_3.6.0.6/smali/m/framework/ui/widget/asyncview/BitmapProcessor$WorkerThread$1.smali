.class Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"

# interfaces
.implements Lm/framework/network/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Ljava/io/File;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iput-object p2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 283
    new-instance v1, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;

    invoke-direct {v1, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    .local v1, "pis":Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;
    invoke-static {v1}, Lm/framework/utils/Utils;->getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-static {v2, v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 296
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    invoke-static {v2, v0, v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 291
    if-eqz v0, :cond_2

    .line 292
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;

    move-result-object v2

    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-static {v2, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 295
    :cond_2
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-static {v2, v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    goto :goto_0
.end method
