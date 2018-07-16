.class final Lcom/smalife/wheelview/OnItemSelectedRunnable;
.super Ljava/lang/Object;
.source "OnItemSelectedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final loopView:Lcom/smalife/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/smalife/wheelview/WheelView;)V
    .locals 0
    .param p1, "loopview"    # Lcom/smalife/wheelview/WheelView;

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smalife/wheelview/OnItemSelectedRunnable;->loopView:Lcom/smalife/wheelview/WheelView;

    .line 7
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 10
    iget-object v0, p0, Lcom/smalife/wheelview/OnItemSelectedRunnable;->loopView:Lcom/smalife/wheelview/WheelView;

    iget-object v0, v0, Lcom/smalife/wheelview/WheelView;->onItemSelectedListener:Lcom/smalife/wheelview/OnItemSelectedListener;

    iget-object v1, p0, Lcom/smalife/wheelview/OnItemSelectedRunnable;->loopView:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/smalife/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/smalife/wheelview/OnItemSelectedRunnable;->loopView:Lcom/smalife/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/smalife/wheelview/WheelView;->getResID()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/smalife/wheelview/OnItemSelectedListener;->onItemSelected(II)V

    .line 11
    return-void
.end method
