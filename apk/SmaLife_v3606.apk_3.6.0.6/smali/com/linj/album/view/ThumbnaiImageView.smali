.class public Lcom/linj/album/view/ThumbnaiImageView;
.super Landroid/widget/FrameLayout;
.source "ThumbnaiImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumItemView"


# instance fields
.field private final mImageLoader:Lcom/linj/imageloader/ImageLoader;

.field private final mOptions:Lcom/linj/imageloader/DisplayImageOptions;

.field private mPath:Ljava/lang/String;

.field private mPosition:I

.field private final mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/linj/imageloader/ImageLoader;Lcom/linj/imageloader/DisplayImageOptions;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/linj/imageloader/ImageLoader;
    .param p3, "options"    # Lcom/linj/imageloader/DisplayImageOptions;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    sget v3, Lcom/linj/cameralibrary/R$layout;->item_album_grid:I

    invoke-static {p1, v3, p0}, Lcom/linj/album/view/ThumbnaiImageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v3, Lcom/linj/cameralibrary/R$id;->imgThumbnail:I

    invoke-virtual {p0, v3}, Lcom/linj/album/view/ThumbnaiImageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/linj/album/view/FilterImageView;

    .line 46
    .local v2, "imageView":Lcom/linj/album/view/FilterImageView;
    sget v3, Lcom/linj/cameralibrary/R$id;->checkbox:I

    invoke-virtual {p0, v3}, Lcom/linj/album/view/ThumbnaiImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 47
    .local v0, "checkBox":Landroid/widget/CheckBox;
    sget v3, Lcom/linj/cameralibrary/R$id;->videoicon:I

    invoke-virtual {p0, v3}, Lcom/linj/album/view/ThumbnaiImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .local v1, "icon":Landroid/widget/ImageView;
    new-instance v3, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;-><init>(Lcom/linj/album/view/ThumbnaiImageView;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/ImageView;)V

    iput-object v3, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    .line 49
    iput-object p2, p0, Lcom/linj/album/view/ThumbnaiImageView;->mImageLoader:Lcom/linj/imageloader/ImageLoader;

    .line 50
    iput-object p3, p0, Lcom/linj/album/view/ThumbnaiImageView;->mOptions:Lcom/linj/imageloader/DisplayImageOptions;

    .line 51
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mPosition:I

    return v0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v0, v0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v0, v0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public setTags(Ljava/lang/String;IZZ)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "editable"    # Z
    .param p4, "checked"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 61
    if-eqz p3, :cond_2

    .line 62
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v0, v0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v0, v0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mImageLoader:Lcom/linj/imageloader/ImageLoader;

    iget-object v1, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v1, v1, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/linj/album/view/ThumbnaiImageView;->mOptions:Lcom/linj/imageloader/DisplayImageOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/linj/imageloader/ImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/linj/imageloader/DisplayImageOptions;)V

    .line 70
    iput-object p1, p0, Lcom/linj/album/view/ThumbnaiImageView;->mPath:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v0, v0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/linj/album/view/ThumbnaiImageView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mPath:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v0, v0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->videoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :goto_1
    iput p2, p0, Lcom/linj/album/view/ThumbnaiImageView;->mPosition:I

    .line 81
    :cond_1
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v0, v0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/linj/album/view/ThumbnaiImageView;->mViewHolder:Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;

    iget-object v0, v0, Lcom/linj/album/view/ThumbnaiImageView$ViewHolder;->videoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
