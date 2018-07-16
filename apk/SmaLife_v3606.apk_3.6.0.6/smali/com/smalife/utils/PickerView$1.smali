.class Lcom/smalife/utils/PickerView$1;
.super Landroid/os/Handler;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/utils/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/utils/PickerView;


# direct methods
.method constructor <init>(Lcom/smalife/utils/PickerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 73
    iget-object v0, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    invoke-static {v0}, Lcom/smalife/utils/PickerView;->access$0(Lcom/smalife/utils/PickerView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/utils/PickerView;->access$1(Lcom/smalife/utils/PickerView;F)V

    .line 75
    iget-object v0, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    invoke-static {v0}, Lcom/smalife/utils/PickerView;->access$2(Lcom/smalife/utils/PickerView;)Lcom/smalife/utils/PickerView$MyTimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    invoke-static {v0}, Lcom/smalife/utils/PickerView;->access$2(Lcom/smalife/utils/PickerView;)Lcom/smalife/utils/PickerView$MyTimerTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/utils/PickerView$MyTimerTask;->cancel()Z

    .line 77
    iget-object v0, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/utils/PickerView;->access$3(Lcom/smalife/utils/PickerView;Lcom/smalife/utils/PickerView$MyTimerTask;)V

    .line 78
    iget-object v0, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    invoke-static {v0}, Lcom/smalife/utils/PickerView;->access$4(Lcom/smalife/utils/PickerView;)V

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    invoke-virtual {v0}, Lcom/smalife/utils/PickerView;->invalidate()V

    .line 84
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    invoke-static {v0}, Lcom/smalife/utils/PickerView;->access$0(Lcom/smalife/utils/PickerView;)F

    move-result v1

    iget-object v2, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    invoke-static {v2}, Lcom/smalife/utils/PickerView;->access$0(Lcom/smalife/utils/PickerView;)F

    move-result v2

    iget-object v3, p0, Lcom/smalife/utils/PickerView$1;->this$0:Lcom/smalife/utils/PickerView;

    invoke-static {v3}, Lcom/smalife/utils/PickerView;->access$0(Lcom/smalife/utils/PickerView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/smalife/utils/PickerView;->access$1(Lcom/smalife/utils/PickerView;F)V

    goto :goto_0
.end method
