.class public Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AlbumViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/album/view/AlbumViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field playVideoListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/linj/album/view/AlbumViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/linj/album/view/AlbumViewPager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 148
    new-instance v0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter$1;-><init>(Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;)V

    iput-object v0, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->playVideoListener:Landroid/view/View$OnClickListener;

    .line 114
    iput-object p2, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->paths:Ljava/util/List;

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;)Lcom/linj/album/view/AlbumViewPager;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    return-object v0
.end method


# virtual methods
.method public deleteCurrentItem(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->paths:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 187
    iget-object v1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v1}, Lcom/linj/album/view/AlbumViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linj/FileOperateUtil;->deleteSourceFile(Ljava/lang/String;Landroid/content/Context;)Z

    .line 188
    iget-object v1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->paths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object v1, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v2}, Lcom/linj/album/view/AlbumViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :goto_0
    return-object v1

    .line 193
    :cond_0
    const-string v1, "0/0"

    goto :goto_0

    .line 196
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "arg1"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 170
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 126
    iget-object v4, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v4}, Lcom/linj/album/view/AlbumViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/linj/cameralibrary/R$layout;->item_album_pager:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/linj/album/view/AlbumViewPager;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "imageLayout":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    sget-boolean v4, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 129
    :cond_0
    sget v4, Lcom/linj/cameralibrary/R$id;->image:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/linj/album/view/MatrixImageView;

    .line 130
    .local v1, "imageView":Lcom/linj/album/view/MatrixImageView;
    iget-object v4, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v1, v4}, Lcom/linj/album/view/MatrixImageView;->setOnMovingListener(Lcom/linj/album/view/MatrixImageView$OnMovingListener;)V

    .line 131
    iget-object v4, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    invoke-static {v4}, Lcom/linj/album/view/AlbumViewPager;->access$1(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/linj/album/view/MatrixImageView;->setOnSingleTapListener(Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;)V

    .line 132
    iget-object v4, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->paths:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    .local v2, "path":Ljava/lang/String;
    sget v4, Lcom/linj/cameralibrary/R$id;->videoicon:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 136
    .local v3, "videoIcon":Landroid/widget/ImageButton;
    const-string v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 141
    :goto_0
    iget-object v4, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->playVideoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v4, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    invoke-static {v4}, Lcom/linj/album/view/AlbumViewPager;->access$2(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/imageloader/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->this$0:Lcom/linj/album/view/AlbumViewPager;

    invoke-static {v5}, Lcom/linj/album/view/AlbumViewPager;->access$3(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/imageloader/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5}, Lcom/linj/imageloader/ImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/linj/imageloader/DisplayImageOptions;)V

    .line 145
    return-object v0

    .line 139
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 180
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
