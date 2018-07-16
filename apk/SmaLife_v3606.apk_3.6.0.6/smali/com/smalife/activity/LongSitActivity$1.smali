.class Lcom/smalife/activity/LongSitActivity$1;
.super Landroid/os/Handler;
.source "LongSitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/LongSitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/LongSitActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LongSitActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LongSitActivity$1;->this$0:Lcom/smalife/activity/LongSitActivity;

    .line 302
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/LongSitActivity$1;->this$0:Lcom/smalife/activity/LongSitActivity;

    iget-object v1, p0, Lcom/smalife/activity/LongSitActivity$1;->this$0:Lcom/smalife/activity/LongSitActivity;

    invoke-static {v1}, Lcom/smalife/activity/LongSitActivity;->access$0(Lcom/smalife/activity/LongSitActivity;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/LongSitActivity;->access$1(Lcom/smalife/activity/LongSitActivity;[I)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
