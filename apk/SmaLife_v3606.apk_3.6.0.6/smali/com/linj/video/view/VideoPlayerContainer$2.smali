.class Lcom/linj/video/view/VideoPlayerContainer$2;
.super Ljava/lang/Object;
.source "VideoPlayerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/video/view/VideoPlayerContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/video/view/VideoPlayerContainer;


# direct methods
.method constructor <init>(Lcom/linj/video/view/VideoPlayerContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/video/view/VideoPlayerContainer$2;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 134
    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer$2;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-static {v1}, Lcom/linj/video/view/VideoPlayerContainer;->access$2(Lcom/linj/video/view/VideoPlayerContainer;)Lcom/linj/video/view/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linj/video/view/VideoPlayerView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer$2;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-virtual {v1}, Lcom/linj/video/view/VideoPlayerContainer;->getCurrentPosition()I

    move-result v0

    .line 136
    .local v0, "current":I
    div-int/lit16 v1, v0, 0x3e8

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 137
    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer$2;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-static {v1}, Lcom/linj/video/view/VideoPlayerContainer;->access$3(Lcom/linj/video/view/VideoPlayerContainer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 138
    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer$2;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-static {v1}, Lcom/linj/video/view/VideoPlayerContainer;->access$4(Lcom/linj/video/view/VideoPlayerContainer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/linj/video/view/VideoPlayerContainer$2;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-static {v2}, Lcom/linj/video/view/VideoPlayerContainer;->access$0(Lcom/linj/video/view/VideoPlayerContainer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v1, p0, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 140
    .end local v0    # "current":I
    :cond_0
    return-void
.end method
