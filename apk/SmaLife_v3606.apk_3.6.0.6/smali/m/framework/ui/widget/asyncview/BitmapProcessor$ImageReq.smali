.class public Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageReq"
.end annotation


# instance fields
.field private callback:Lm/framework/ui/widget/asyncview/BitmapCallback;

.field private image:Landroid/graphics/Bitmap;

.field private reqTime:J

.field private url:Ljava/lang/String;

.field private worker:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->reqTime:J

    .line 355
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->worker:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    return-void
.end method

.method static synthetic access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapCallback;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->callback:Lm/framework/ui/widget/asyncview/BitmapCallback;

    return-void
.end method

.method private throwComplete(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 358
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->image:Landroid/graphics/Bitmap;

    .line 359
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->callback:Lm/framework/ui/widget/asyncview/BitmapCallback;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->callback:Lm/framework/ui/widget/asyncview/BitmapCallback;

    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->image:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lm/framework/ui/widget/asyncview/BitmapCallback;->onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->reqTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, "worker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->worker:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-virtual {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->worker:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-virtual {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
