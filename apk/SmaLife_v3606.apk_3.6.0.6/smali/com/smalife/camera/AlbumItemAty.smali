.class public Lcom/smalife/camera/AlbumItemAty;
.super Landroid/app/Activity;
.source "AlbumItemAty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;
.implements Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumDetailAty"


# instance fields
.field private mBackView:Landroid/widget/ImageView;

.field private mBottomBar:Landroid/view/View;

.field private mCameraView:Landroid/widget/ImageView;

.field private mContainer:Lcom/linj/video/view/VideoPlayerContainer;

.field private mCountView:Landroid/widget/TextView;

.field private mDeleteButton:Landroid/widget/Button;

.field private mEditButton:Landroid/widget/Button;

.field private mHeaderBar:Landroid/view/View;

.field private mSaveRoot:Ljava/lang/String;

.field private mViewPager:Lcom/linj/album/view/AlbumViewPager;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    new-instance v0, Lcom/smalife/camera/AlbumItemAty$1;

    invoke-direct {v0, p0}, Lcom/smalife/camera/AlbumItemAty$1;-><init>(Lcom/smalife/camera/AlbumItemAty;)V

    iput-object v0, p0, Lcom/smalife/camera/AlbumItemAty;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/camera/AlbumItemAty;)Lcom/linj/album/view/AlbumViewPager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/camera/AlbumItemAty;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smalife/camera/AlbumItemAty;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public loadAlbum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v8, 0x1

    invoke-static {p0, v8, p1}, Lcom/linj/FileOperateUtil;->getFolderPath(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "folder":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-static {p0, v8, p1}, Lcom/linj/FileOperateUtil;->getFolderPath(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "thumbnailFolder":Ljava/lang/String;
    const-string v8, ".jpg"

    invoke-static {v3, v8}, Lcom/linj/FileOperateUtil;->listFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 101
    .local v4, "imageList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v8, ".jpg"

    const-string v9, "video"

    invoke-static {v6, v8, v9}, Lcom/linj/FileOperateUtil;->listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 102
    .local v7, "videoList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 105
    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 108
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_1
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/linj/FileOperateUtil;->sortList(Ljava/util/List;Z)V

    .line 111
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "currentItem":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 119
    iget-object v8, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    new-instance v9, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;

    iget-object v10, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v10, v5}, Lcom/linj/album/view/AlbumViewPager$ViewPagerAdapter;-><init>(Lcom/linj/album/view/AlbumViewPager;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Lcom/linj/album/view/AlbumViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 120
    iget-object v8, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v8, v0}, Lcom/linj/album/view/AlbumViewPager;->setCurrentItem(I)V

    .line 121
    iget-object v8, p0, Lcom/smalife/camera/AlbumItemAty;->mCountView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .end local v0    # "currentItem":I
    .end local v5    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 114
    .restart local v0    # "currentItem":I
    .restart local v5    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 115
    .local v1, "file":Ljava/io/File;
    if-eqz p2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 117
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0    # "currentItem":I
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v8, p0, Lcom/smalife/camera/AlbumItemAty;->mCountView:Landroid/widget/TextView;

    const-string v9, "0/0"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/smalife/camera/AlbumItemAty;->mContainer:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/smalife/camera/AlbumItemAty;->mContainer:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerContainer;->stopPlay()V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 178
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/smalife/camera/AlbumAty;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/smalife/camera/AlbumItemAty;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/smalife/camera/CameraAty;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/smalife/camera/AlbumItemAty;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 184
    :sswitch_2
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v1}, Lcom/linj/album/view/AlbumViewPager;->deleteCurrentPath()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v1}, Lcom/linj/album/view/AlbumViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 189
    invoke-virtual {p0}, Lcom/smalife/camera/AlbumItemAty;->finish()V

    goto :goto_0

    .line 192
    .end local v0    # "result":Ljava/lang/String;
    :sswitch_3
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mContainer:Lcom/linj/video/view/VideoPlayerContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/linj/video/view/VideoPlayerContainer;->setVisibility(I)V

    goto :goto_0

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0018 -> :sswitch_2
        0x7f0e0021 -> :sswitch_3
        0x7f0e0023 -> :sswitch_0
        0x7f0e0025 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcom/smalife/camera/AlbumItemAty;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 54
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->setContentView(I)V

    .line 56
    const v2, 0x7f0e0027

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/linj/album/view/AlbumViewPager;

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    .line 57
    const v2, 0x7f0e002a

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/linj/video/view/VideoPlayerContainer;

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mContainer:Lcom/linj/video/view/VideoPlayerContainer;

    .line 58
    const v2, 0x7f0e0023

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mBackView:Landroid/widget/ImageView;

    .line 59
    const v2, 0x7f0e0025

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mCameraView:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f0e0024

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mCountView:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0e0028

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mHeaderBar:Landroid/view/View;

    .line 62
    const v2, 0x7f0e0029

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mBottomBar:Landroid/view/View;

    .line 63
    const v2, 0x7f0e0018

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mDeleteButton:Landroid/widget/Button;

    .line 64
    const v2, 0x7f0e0021

    invoke-virtual {p0, v2}, Lcom/smalife/camera/AlbumItemAty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mEditButton:Landroid/widget/Button;

    .line 66
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mCameraView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string v2, "smawatch"

    iput-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mSaveRoot:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    iget-object v3, p0, Lcom/smalife/camera/AlbumItemAty;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Lcom/linj/album/view/AlbumViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 74
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v2, p0}, Lcom/linj/album/view/AlbumViewPager;->setOnSingleTapListener(Lcom/linj/album/view/MatrixImageView$OnSingleTapListener;)V

    .line 75
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mViewPager:Lcom/linj/album/view/AlbumViewPager;

    invoke-virtual {v2, p0}, Lcom/linj/album/view/AlbumViewPager;->setOnPlayVideoListener(Lcom/linj/album/view/AlbumViewPager$OnPlayVideoListener;)V

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "currentFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/smalife/camera/AlbumItemAty;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/smalife/camera/AlbumItemAty;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    if-eqz v0, :cond_1

    .line 80
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 83
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/smalife/camera/AlbumItemAty;->mSaveRoot:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/smalife/camera/AlbumItemAty;->loadAlbum(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onPlay(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mContainer:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-virtual {v1, p1}, Lcom/linj/video/view/VideoPlayerContainer;->playVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onSingleTap()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 156
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mHeaderBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 157
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 158
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 159
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mHeaderBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 160
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mHeaderBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :goto_0
    return-void

    .line 164
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 165
    .restart local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 166
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mHeaderBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mHeaderBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/smalife/camera/AlbumItemAty;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/smalife/camera/AlbumItemAty;->mContainer:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/smalife/camera/AlbumItemAty;->mContainer:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerContainer;->stopPlay()V

    .line 210
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 211
    return-void
.end method
