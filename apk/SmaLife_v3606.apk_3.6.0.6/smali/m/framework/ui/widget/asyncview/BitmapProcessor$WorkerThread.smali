.class Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
.super Ljava/lang/Thread;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

.field private lastReport:J

.field private localType:Z

.field private processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
    .locals 2
    .param p1, "bp"    # Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 175
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 177
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    return-wide v0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    return v0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    return-void
.end method

.method static synthetic access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    return-object v0
.end method

.method private doLocalTask()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 198
    .local v3, "size":I
    if-lez v3, :cond_0

    .line 199
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    check-cast v2, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 202
    .restart local v2    # "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    :cond_0
    if-eqz v2, :cond_5

    .line 203
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 204
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 205
    iput-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 206
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-static {v4, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 207
    invoke-static {v2, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 225
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 230
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 209
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lm/framework/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    invoke-direct {p0, v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    goto :goto_1

    .line 217
    :cond_2
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_3

    .line 218
    :goto_2
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 221
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 223
    :cond_3
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_4
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v4}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 227
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "file":Ljava/io/File;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 228
    const-wide/16 v4, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1
.end method

.method private doNetworkTask()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 237
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 238
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    check-cast v1, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 242
    .restart local v1    # "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    :cond_0
    if-nez v1, :cond_1

    .line 243
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 244
    if-lez v2, :cond_1

    .line 245
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    check-cast v1, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 249
    .restart local v1    # "req":Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    :cond_1
    if-eqz v1, :cond_3

    .line 250
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 251
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 252
    iput-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 253
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-static {v3, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 254
    invoke-static {v1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 258
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 263
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 256
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    invoke-direct {p0, v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    goto :goto_0

    .line 260
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 261
    const-wide/16 v4, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1
.end method

.method private doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 6
    .param p1, "req"    # Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 267
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 268
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    invoke-static {v3, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;

    move-result-object v3

    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lm/framework/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lm/framework/utils/Utils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 277
    :cond_0
    iput-object v5, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 300
    :goto_0
    if-eqz v0, :cond_1

    .line 301
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 304
    :cond_1
    iput-object v5, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 305
    return-void

    .line 280
    :cond_2
    new-instance v2, Lm/framework/network/NetworkHelper;

    invoke-direct {v2}, Lm/framework/network/NetworkHelper;-><init>()V

    .line 281
    .local v2, "helper":Lm/framework/network/NetworkHelper;
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;

    invoke-direct {v4, p0, v1, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Ljava/io/File;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    invoke-virtual {v2, v3, v4}, Lm/framework/network/NetworkHelper;->download(Ljava/lang/String;Lm/framework/network/ResponseCallback;)V

    goto :goto_0
.end method

.method private saveFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 312
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 313
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 315
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 317
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 318
    .local v3, "type":Landroid/graphics/Bitmap$CompressFormat;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lm/framework/utils/Utils;->getFileMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "mime":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v4, "png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "gif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 322
    :cond_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 323
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 324
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 325
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "mime":Ljava/lang/String;
    .end local v3    # "type":Landroid/graphics/Bitmap$CompressFormat;
    :cond_4
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 328
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 335
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 180
    :goto_0
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    return-void

    .line 182
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    if-eqz v1, :cond_1

    .line 183
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doLocalTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 186
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doNetworkTask()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
