.class Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;
.super Ljava/util/TimerTask;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private counter:I

.field final synthetic this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    .line 117
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;

    move-result-object v0

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->counter:I

    .line 123
    iget v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->counter:I

    if-gtz v0, :cond_0

    .line 124
    const/16 v0, 0x64

    iput v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->counter:I

    .line 125
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V

    .line 128
    :cond_0
    return-void
.end method
