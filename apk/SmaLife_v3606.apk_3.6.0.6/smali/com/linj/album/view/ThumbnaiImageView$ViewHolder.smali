.class public Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;
.super Ljava/lang/Object;
.source "ThumbnaiImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/album/view/ThumbnaiImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/linj/album/view/ThumbnaiImageView;

.field videoIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/linj/album/view/ThumbnaiImageView;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "checkBox"    # Landroid/widget/CheckBox;
    .param p4, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->this$0:Lcom/linj/album/view/ThumbnaiImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 103
    iput-object p3, p0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 104
    iput-object p4, p0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->videoIconView:Landroid/widget/ImageView;

    .line 105
    return-void
.end method
