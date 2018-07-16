.class public Lcom/linj/album/view/AlbumViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AlbumViewPager.java"

# interfaces
.implements Lcom/linj/album/view/MatrixImageView$OnMovingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;,
        Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumViewPager"


# instance fields
.field private mChildIsBeingDragged:Z

.field private mImageLoader:Lcom/linj/imageloader/ImageLoader;

.field private mOptions:Lcom/linj/imageloader/DisplayImageOptions;

.field private onPlayVideoListener:Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;

.field private onSingleTapListener:Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v3, p0, Lcom/linj/album/view/AlbumViewPager;->mChildIsBeingDragged:Z

    .line 53
    invoke-static {p1}, Lcom/linj/imageloader/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/linj/imageloader/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/linj/album/view/AlbumViewPager;->mImageLoader:Lcom/linj/imageloader/ImageLoader;

    .line 55
    new-instance v0, Lcom/linj/imageloader/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/linj/imageloader/DisplayImageOptions$Builder;-><init>()V

    .line 57
    .local v0, "builder":Lcom/linj/imageloader/DisplayImageOptions$Builder;
    sget v1, Lcom/linj/cameralibrary/R$drawable;->ic_stub:I

    invoke-virtual {v0, v1}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v1

    .line 58
    sget v2, Lcom/linj/cameralibrary/R$drawable;->ic_error:I

    invoke-virtual {v1, v2}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v1

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v3}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/linj/imageloader/displayer/MatrixBitmapDisplayer;

    invoke-direct {v2}, Lcom/linj/imageloader/displayer/MatrixBitmapDisplayer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->displayer(Lcom/linj/imageloader/displayer/BitmapDisplayer;)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->build()Lcom/linj/imageloader/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/linj/album/view/AlbumViewPager;->mOptions:Lcom/linj/imageloader/DisplayImageOptions;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/linj/album/view/AlbumViewPager;->onPlayVideoListener:Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/linj/album/view/AlbumViewPager;->onSingleTapListener:Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/imageloader/ImageLoader;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/linj/album/view/AlbumViewPager;->mImageLoader:Lcom/linj/imageloader/ImageLoader;

    return-object v0
.end method

.method static synthetic access$3(Lcom/linj/album/view/AlbumViewPager;)Lcom/linj/imageloader/DisplayImageOptions;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/linj/album/view/AlbumViewPager;->mOptions:Lcom/linj/imageloader/DisplayImageOptions;

    return-object v0
.end method


# virtual methods
.method public deleteCurrentPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/linj/album/view/AlbumViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/linj/album/view/AlbumViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;->deleteCurrentItem(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/linj/album/view/AlbumViewPager;->mChildIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPlayVideoListener(Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;)V
    .locals 0
    .param p1, "onPlayVideoListener"    # Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/linj/album/view/AlbumViewPager;->onPlayVideoListener:Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;

    .line 106
    return-void
.end method

.method public setOnSingleTapListener(Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;)V
    .locals 0
    .param p1, "onSingleTapListener"    # Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/linj/album/view/AlbumViewPager;->onSingleTapListener:Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;

    .line 103
    return-void
.end method

.method public startDrag()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linj/album/view/AlbumViewPager;->mChildIsBeingDragged:Z

    .line 92
    return-void
.end method

.method public stopDrag()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linj/album/view/AlbumViewPager;->mChildIsBeingDragged:Z

    .line 99
    return-void
.end method
