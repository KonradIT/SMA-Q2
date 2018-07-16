.class Lcom/igexin/getuiext/ui/promotion/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/ui/promotion/o;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/igexin/getuiext/ui/promotion/o;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/ui/promotion/p;->a:Lcom/igexin/getuiext/ui/promotion/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/igexin/getuiext/ui/promotion/p;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/p;->a:Lcom/igexin/getuiext/ui/promotion/o;

    iget-object v0, v0, Lcom/igexin/getuiext/ui/promotion/o;->a:Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/p;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/p;->a:Lcom/igexin/getuiext/ui/promotion/o;

    iget-object v0, v0, Lcom/igexin/getuiext/ui/promotion/o;->a:Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    invoke-virtual {v0}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->invalidate()V

    iget-object v0, p0, Lcom/igexin/getuiext/ui/promotion/p;->a:Lcom/igexin/getuiext/ui/promotion/o;

    iget-object v0, v0, Lcom/igexin/getuiext/ui/promotion/o;->a:Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    iget-object v1, p0, Lcom/igexin/getuiext/ui/promotion/p;->a:Lcom/igexin/getuiext/ui/promotion/o;

    iget-object v1, v1, Lcom/igexin/getuiext/ui/promotion/o;->a:Lcom/igexin/getuiext/ui/promotion/UrlImageView;

    invoke-virtual {v1}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/promotion/UrlImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
