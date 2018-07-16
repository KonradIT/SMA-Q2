.class Lcom/linj/album/view/MatrixImageView$1;
.super Ljava/lang/Object;
.source "MatrixImageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linj/album/view/MatrixImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/album/view/MatrixImageView;


# direct methods
.method constructor <init>(Lcom/linj/album/view/MatrixImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/album/view/MatrixImageView$1;->this$0:Lcom/linj/album/view/MatrixImageView;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$1;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-static {v0}, Lcom/linj/album/view/MatrixImageView;->access$7(Lcom/linj/album/view/MatrixImageView;)V

    .line 78
    iget-object v0, p0, Lcom/linj/album/view/MatrixImageView$1;->this$0:Lcom/linj/album/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/linj/album/view/MatrixImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method
