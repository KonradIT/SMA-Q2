.class Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImgBeanHolder"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field imageView:Landroid/widget/ImageView;

.field options:Lcom/linj/imageloader/DisplayImageOptions;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lcom/linj/imageloader/ImageLoader;


# direct methods
.method private constructor <init>(Lcom/linj/imageloader/ImageLoader;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;->this$0:Lcom/linj/imageloader/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linj/imageloader/ImageLoader;Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/linj/imageloader/ImageLoader$ImgBeanHolder;-><init>(Lcom/linj/imageloader/ImageLoader;)V

    return-void
.end method
