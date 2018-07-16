.class final Lcom/smalife/wheelview/MessageHandler;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# static fields
.field public static final WHAT_INVALIDATE_LOOP_VIEW:I = 0x3e8

.field public static final WHAT_ITEM_SELECTED:I = 0xbb8

.field public static final WHAT_SMOOTH_SCROLL:I = 0x7d0


# instance fields
.field final loopview:Lcom/smalife/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/smalife/wheelview/WheelView;)V
    .locals 0
    .param p1, "loopview"    # Lcom/smalife/wheelview/WheelView;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/smalife/wheelview/MessageHandler;->loopview:Lcom/smalife/wheelview/WheelView;

    .line 15
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 20
    :sswitch_0
    iget-object v0, p0, Lcom/smalife/wheelview/MessageHandler;->loopview:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/smalife/wheelview/WheelView;->invalidate()V

    goto :goto_0

    .line 24
    :sswitch_1
    iget-object v0, p0, Lcom/smalife/wheelview/MessageHandler;->loopview:Lcom/smalife/wheelview/WheelView;

    sget-object v1, Lcom/smalife/wheelview/WheelView$ACTION;->FLING:Lcom/smalife/wheelview/WheelView$ACTION;

    invoke-virtual {v0, v1}, Lcom/smalife/wheelview/WheelView;->smoothScroll(Lcom/smalife/wheelview/WheelView$ACTION;)V

    goto :goto_0

    .line 28
    :sswitch_2
    iget-object v0, p0, Lcom/smalife/wheelview/MessageHandler;->loopview:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/smalife/wheelview/WheelView;->onItemSelected()V

    goto :goto_0

    .line 18
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method
