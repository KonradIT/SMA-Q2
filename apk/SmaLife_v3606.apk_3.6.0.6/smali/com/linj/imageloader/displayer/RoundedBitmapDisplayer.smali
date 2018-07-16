.class public Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedBitmapDisplayer.java"

# interfaces
.implements Lcom/linj/imageloader/displayer/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer$RoundedDrawable;
    }
.end annotation


# instance fields
.field protected final cornerRadius:I

.field protected final margin:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cornerRadiusPixels"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer;-><init>(II)V

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "cornerRadiusPixels"    # I
    .param p2, "marginPixels"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer;->cornerRadius:I

    .line 46
    iput p2, p0, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer;->margin:I

    .line 47
    return-void
.end method


# virtual methods
.method public display(ILandroid/widget/ImageView;)V
    .locals 0
    .param p1, "resouceID"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 55
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    return-void
.end method

.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 51
    new-instance v0, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer$RoundedDrawable;

    iget v1, p0, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer;->cornerRadius:I

    iget v2, p0, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer;->margin:I

    invoke-direct {v0, p1, v1, v2}, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method
