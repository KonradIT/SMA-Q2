.class Lcom/linj/camera/view/CameraContainer$TouchListener$1;
.super Ljava/lang/Object;
.source "CameraContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linj/camera/view/CameraContainer$TouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linj/camera/view/CameraContainer$TouchListener;


# direct methods
.method constructor <init>(Lcom/linj/camera/view/CameraContainer$TouchListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/linj/camera/view/CameraContainer$TouchListener$1;->this$1:Lcom/linj/camera/view/CameraContainer$TouchListener;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/linj/camera/view/CameraContainer$TouchListener$1;->this$1:Lcom/linj/camera/view/CameraContainer$TouchListener;

    invoke-static {v0}, Lcom/linj/camera/view/CameraContainer$TouchListener;->access$1(Lcom/linj/camera/view/CameraContainer$TouchListener;)Lcom/linj/camera/view/CameraContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/linj/camera/view/CameraContainer;->access$5(Lcom/linj/camera/view/CameraContainer;)Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 422
    return-void
.end method
