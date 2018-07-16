.class public Lcom/linj/album/view/AlbumGridView;
.super Landroid/widget/GridView;
.source "AlbumGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;,
        Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private mEditable:Z

.field private mImageLoader:Lcom/linj/imageloader/ImageLoader;

.field private mOptions:Lcom/linj/imageloader/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {p1}, Lcom/linj/imageloader/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/linj/imageloader/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/linj/album/view/AlbumGridView;->mImageLoader:Lcom/linj/imageloader/ImageLoader;

    .line 45
    new-instance v0, Lcom/linj/imageloader/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/linj/imageloader/DisplayImageOptions$Builder;-><init>()V

    .line 47
    .local v0, "builder":Lcom/linj/imageloader/DisplayImageOptions$Builder;
    sget v1, Lcom/linj/cameralibrary/R$drawable;->ic_stub:I

    invoke-virtual {v0, v1}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v1

    .line 48
    sget v2, Lcom/linj/cameralibrary/R$drawable;->ic_error:I

    invoke-virtual {v1, v2}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v1

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v4}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/linj/imageloader/displayer/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->displayer(Lcom/linj/imageloader/displayer/BitmapDisplayer;)Lcom/linj/imageloader/DisplayImageOptions$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->build()Lcom/linj/imageloader/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/linj/album/view/AlbumGridView;->mOptions:Lcom/linj/imageloader/DisplayImageOptions;

    .line 53
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/linj/album/view/AlbumGridView;->setBackgroundColor(I)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/linj/album/view/AlbumGridView;->setVerticalScrollBarEnabled(Z)V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/linj/album/view/AlbumGridView;)Lcom/linj/imageloader/ImageLoader;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView;->mImageLoader:Lcom/linj/imageloader/ImageLoader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/linj/album/view/AlbumGridView;)Lcom/linj/imageloader/DisplayImageOptions;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/linj/album/view/AlbumGridView;->mOptions:Lcom/linj/imageloader/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$2(Lcom/linj/album/view/AlbumGridView;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/linj/album/view/AlbumGridView;->mEditable:Z

    return v0
.end method


# virtual methods
.method public getEditable()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/linj/album/view/AlbumGridView;->mEditable:Z

    return v0
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    invoke-virtual {v0}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->getSelectedItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    invoke-virtual {v0}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public selectAll(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    invoke-virtual {v0, p1}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->selectAll(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V

    .line 66
    return-void
.end method

.method public setEditable(Z)V
    .locals 2
    .param p1, "editable"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/linj/album/view/AlbumGridView;->mEditable:Z

    .line 81
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->notifyDataSetChanged(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V

    .line 82
    return-void
.end method

.method public setEditable(ZLcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "editable"    # Z
    .param p2, "listener"    # Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/linj/album/view/AlbumGridView;->mEditable:Z

    .line 90
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    invoke-virtual {v0, p2}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->notifyDataSetChanged(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V

    .line 91
    return-void
.end method

.method public unSelectAll(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/linj/album/view/AlbumGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;

    invoke-virtual {v0, p1}, Lcom/linj/album/view/AlbumGridView$AlbumViewAdapter;->unSelectAll(Lcom/linj/album/view/AlbumGridView$OnCheckedChangeListener;)V

    .line 73
    return-void
.end method
