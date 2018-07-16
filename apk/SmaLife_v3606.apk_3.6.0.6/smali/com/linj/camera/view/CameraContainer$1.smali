.class Lcom/linj/camera/view/CameraContainer$1;
.super Ljava/lang/Object;
.source "CameraContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/camera/view/CameraContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linj/camera/view/CameraContainer;


# direct methods
.method constructor <init>(Lcom/linj/camera/view/CameraContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer$1;->this$0:Lcom/linj/camera/view/CameraContainer;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 155
    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer$1;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v2}, Lcom/linj/camera/view/CameraContainer;->access$0(Lcom/linj/camera/view/CameraContainer;)Lcom/linj/camera/view/CameraView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linj/camera/view/CameraView;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/linj/camera/view/CameraContainer$1;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v4}, Lcom/linj/camera/view/CameraContainer;->access$1(Lcom/linj/camera/view/CameraContainer;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 157
    .local v0, "recordTime":J
    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer$1;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v2}, Lcom/linj/camera/view/CameraContainer;->access$2(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/linj/camera/view/CameraContainer$1;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v3}, Lcom/linj/camera/view/CameraContainer;->access$3(Lcom/linj/camera/view/CameraContainer;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer$1;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v2}, Lcom/linj/camera/view/CameraContainer;->access$4(Lcom/linj/camera/view/CameraContainer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/linj/camera/view/CameraContainer$1;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v3}, Lcom/linj/camera/view/CameraContainer;->access$2(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 162
    .end local v0    # "recordTime":J
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/linj/camera/view/CameraContainer$1;->this$0:Lcom/linj/camera/view/CameraContainer;

    invoke-static {v2}, Lcom/linj/camera/view/CameraContainer;->access$2(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
