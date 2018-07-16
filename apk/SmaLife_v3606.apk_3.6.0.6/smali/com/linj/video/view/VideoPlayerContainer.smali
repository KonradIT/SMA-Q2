.class public Lcom/linj/video/view/VideoPlayerContainer;
.super Landroid/widget/LinearLayout;
.source "VideoPlayerContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/linj/video/view/VideoPlayerView$PlayerListener;
.implements Lcom/linj/video/view/VideoPlayerOperation;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayerContainer"


# instance fields
.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mCurrentTimeView:Landroid/widget/TextView;

.field private mDurationView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPauseButton:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/SeekBar;

.field private mTimeFormat:Ljava/text/SimpleDateFormat;

.field private mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

.field onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field playerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lcom/linj/video/view/VideoPlayerContainer$1;

    invoke-direct {v0, p0}, Lcom/linj/video/view/VideoPlayerContainer$1;-><init>(Lcom/linj/video/view/VideoPlayerContainer;)V

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 130
    new-instance v0, Lcom/linj/video/view/VideoPlayerContainer$2;

    invoke-direct {v0, p0}, Lcom/linj/video/view/VideoPlayerContainer$2;-><init>(Lcom/linj/video/view/VideoPlayerContainer;)V

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->playerRunnable:Ljava/lang/Runnable;

    .line 52
    invoke-direct {p0, p1}, Lcom/linj/video/view/VideoPlayerContainer;->initView(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mTimeFormat:Ljava/text/SimpleDateFormat;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/linj/video/view/VideoPlayerContainer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mCurrentTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/linj/video/view/VideoPlayerContainer;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$2(Lcom/linj/video/view/VideoPlayerContainer;)Lcom/linj/video/view/VideoPlayerView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/linj/video/view/VideoPlayerContainer;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mProgressBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/linj/video/view/VideoPlayerContainer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget v0, Lcom/linj/cameralibrary/R$layout;->video_bottom_bar:I

    invoke-static {p1, v0, p0}, Lcom/linj/video/view/VideoPlayerContainer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    sget v0, Lcom/linj/cameralibrary/R$id;->videoPlayerView:I

    invoke-virtual {p0, v0}, Lcom/linj/video/view/VideoPlayerContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/linj/video/view/VideoPlayerView;

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    .line 60
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0, p0}, Lcom/linj/video/view/VideoPlayerView;->setPalyerListener(Lcom/linj/video/view/VideoPlayerView$PlayerListener;)V

    .line 62
    sget v0, Lcom/linj/cameralibrary/R$id;->llVideoDetailPlayerBottom:I

    invoke-virtual {p0, v0}, Lcom/linj/video/view/VideoPlayerContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mBottomBar:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mBottomBar:Landroid/widget/LinearLayout;

    sget v1, Lcom/linj/cameralibrary/R$id;->tvVideoPlayTime:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mCurrentTimeView:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mBottomBar:Landroid/widget/LinearLayout;

    sget v1, Lcom/linj/cameralibrary/R$id;->tvVideoPlayRemainTime:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mDurationView:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mBottomBar:Landroid/widget/LinearLayout;

    sget v1, Lcom/linj/cameralibrary/R$id;->btnVideoPlayOrPause:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mPauseButton:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mBottomBar:Landroid/widget/LinearLayout;

    sget v1, Lcom/linj/cameralibrary/R$id;->sbVideoDetailPlayer:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mProgressBar:Landroid/widget/SeekBar;

    .line 68
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/linj/video/view/VideoPlayerContainer;->pausedPlay()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/linj/video/view/VideoPlayerContainer;->resumePlay()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 101
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/linj/video/view/VideoPlayerContainer;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mCurrentTimeView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 105
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x0

    .line 121
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/linj/video/view/VideoPlayerContainer;->setVisibility(I)V

    .line 122
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 124
    .local v0, "duration":I
    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer;->mDurationView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/linj/video/view/VideoPlayerContainer;->mTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer;->mProgressBar:Landroid/widget/SeekBar;

    div-int/lit16 v2, v0, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 127
    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/linj/video/view/VideoPlayerContainer;->playerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/linj/video/view/VideoPlayerContainer;->resumePlay()V

    .line 111
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public pausedPlay()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerView;->pausedPlay()V

    .line 168
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/linj/cameralibrary/R$drawable;->video_detail_player_start:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
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
    .line 95
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0, p1}, Lcom/linj/video/view/VideoPlayerView;->playVideo(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public resumePlay()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerView;->resumePlay()V

    .line 157
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer;->playerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/linj/cameralibrary/R$drawable;->video_detail_player_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    return-void
.end method

.method public seekPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0, p1}, Lcom/linj/video/view/VideoPlayerView;->seekPosition(I)V

    .line 173
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer;->mVideoPlayerView:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerView;->stopPlay()V

    .line 177
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/linj/video/view/VideoPlayerContainer;->setVisibility(I)V

    .line 178
    return-void
.end method
