.class Lcom/linj/imageloader/ImageLoader$3;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linj/imageloader/ImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/linj/imageloader/DisplayImageOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/imageloader/ImageLoader;


# direct methods
.method constructor <init>(Lcom/linj/imageloader/ImageLoader;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/imageloader/ImageLoader$3;->this$0:Lcom/linj/imageloader/ImageLoader;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;

    .line 194
    .local v1, "holder":Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;
    iget-object v0, v1, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 195
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v3, v1, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;->imageView:Landroid/widget/ImageView;

    .line 196
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v2, v1, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;->options:Lcom/linj/imageloader/DisplayImageOptions;

    .line 197
    .local v2, "options":Lcom/linj/imageloader/DisplayImageOptions;
    if-eqz v0, :cond_0

    .line 198
    iget-object v4, v2, Lcom/linj/imageloader/DisplayImageOptions;->displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

    invoke-interface {v4, v0, v3}, Lcom/linj/imageloader/displayer/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v4, v2, Lcom/linj/imageloader/DisplayImageOptions;->displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

    iget v5, v2, Lcom/linj/imageloader/DisplayImageOptions;->imageResOnFail:I

    invoke-interface {v4, v5, v3}, Lcom/linj/imageloader/displayer/BitmapDisplayer;->display(ILandroid/widget/ImageView;)V

    goto :goto_0
.end method
