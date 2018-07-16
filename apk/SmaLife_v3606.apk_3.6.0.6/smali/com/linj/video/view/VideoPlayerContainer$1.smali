.class Lcom/linj/video/view/VideoPlayerContainer$1;
.super Ljava/lang/Object;
.source "VideoPlayerContainer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/linj/video/view/VideoPlayerContainer$1;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer$1;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-static {v0}, Lcom/linj/video/view/VideoPlayerContainer;->access$0(Lcom/linj/video/view/VideoPlayerContainer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/linj/video/view/VideoPlayerContainer$1;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-static {v1}, Lcom/linj/video/view/VideoPlayerContainer;->access$1(Lcom/linj/video/view/VideoPlayerContainer;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer$1;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-virtual {v0}, Lcom/linj/video/view/VideoPlayerContainer;->pausedPlay()V

    .line 84
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/linj/video/view/VideoPlayerContainer$1;->this$0:Lcom/linj/video/view/VideoPlayerContainer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/linj/video/view/VideoPlayerContainer;->seekPosition(I)V

    .line 78
    return-void
.end method
