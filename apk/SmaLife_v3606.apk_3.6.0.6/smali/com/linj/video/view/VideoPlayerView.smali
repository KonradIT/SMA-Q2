.class public Lcom/linj/video/view/VideoPlayerView;
.super Landroid/view/SurfaceView;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/linj/video/view/VideoPlayerOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/video/view/VideoPlayerView$PlayerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSurfaceView"


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Lcom/linj/video/view/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/linj/video/view/VideoPlayerView$1;-><init>(Lcom/linj/video/view/VideoPlayerView;)V

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 34
    invoke-direct {p0}, Lcom/linj/video/view/VideoPlayerView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Lcom/linj/video/view/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/linj/video/view/VideoPlayerView$1;-><init>(Lcom/linj/video/view/VideoPlayerView;)V

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 38
    invoke-direct {p0}, Lcom/linj/video/view/VideoPlayerView;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/linj/video/view/VideoPlayerView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 47
    invoke-virtual {p0}, Lcom/linj/video/view/VideoPlayerView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerView;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/linj/video/view/VideoPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pausedPlay()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 83
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 142
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 144
    return-void
.end method

.method public resumePlay()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 88
    return-void
.end method

.method public seekPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/linj/video/view/VideoPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 98
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method protected setPalyerListener(Lcom/linj/video/view/VideoPlayerView$PlayerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/linj/video/view/VideoPlayerView$PlayerListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 55
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 56
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 57
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 112
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 113
    return-void
.end method
