.class Lcom/linj/video/view/VideoPlayerView$1;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/video/view/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/video/view/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/linj/video/view/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/video/view/VideoPlayerView$1;->this$0:Lcom/linj/video/view/VideoPlayerView;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 126
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView$1;->this$0:Lcom/linj/video/view/VideoPlayerView;

    invoke-static {v0}, Lcom/linj/video/view/VideoPlayerView;->access$0(Lcom/linj/video/view/VideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerView$1;->this$0:Lcom/linj/video/view/VideoPlayerView;

    invoke-virtual {v1}, Lcom/linj/video/view/VideoPlayerView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 120
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView$1;->this$0:Lcom/linj/video/view/VideoPlayerView;

    invoke-static {v0}, Lcom/linj/video/view/VideoPlayerView;->access$0(Lcom/linj/video/view/VideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView$1;->this$0:Lcom/linj/video/view/VideoPlayerView;

    invoke-static {v0}, Lcom/linj/video/view/VideoPlayerView;->access$0(Lcom/linj/video/view/VideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerView$1;->this$0:Lcom/linj/video/view/VideoPlayerView;

    invoke-static {v0}, Lcom/linj/video/view/VideoPlayerView;->access$0(Lcom/linj/video/view/VideoPlayerView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 133
    return-void
.end method
