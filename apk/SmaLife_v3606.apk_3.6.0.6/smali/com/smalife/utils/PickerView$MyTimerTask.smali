.class Lcom/smalife/utils/PickerView$MyTimerTask;
.super Ljava/util/TimerTask;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/utils/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/smalife/utils/PickerView;


# direct methods
.method public constructor <init>(Lcom/smalife/utils/PickerView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/smalife/utils/PickerView$MyTimerTask;->this$0:Lcom/smalife/utils/PickerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/smalife/utils/PickerView$MyTimerTask;->handler:Landroid/os/Handler;

    .line 284
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/smalife/utils/PickerView$MyTimerTask;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/smalife/utils/PickerView$MyTimerTask;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    return-void
.end method
