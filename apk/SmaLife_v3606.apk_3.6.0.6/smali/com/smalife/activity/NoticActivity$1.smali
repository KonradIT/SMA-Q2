.class Lcom/smalife/activity/NoticActivity$1;
.super Landroid/os/Handler;
.source "NoticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/NoticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/NoticActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/NoticActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/NoticActivity$1;->this$0:Lcom/smalife/activity/NoticActivity;

    .line 277
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 280
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 288
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/NoticActivity$1;->this$0:Lcom/smalife/activity/NoticActivity;

    invoke-static {v0}, Lcom/smalife/activity/NoticActivity;->access$0(Lcom/smalife/activity/NoticActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/NoticActivity$1;->this$0:Lcom/smalife/activity/NoticActivity;

    invoke-static {v0}, Lcom/smalife/activity/NoticActivity;->access$0(Lcom/smalife/activity/NoticActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/smalife/activity/NoticActivity$1;->this$0:Lcom/smalife/activity/NoticActivity;

    invoke-static {v0}, Lcom/smalife/activity/NoticActivity;->access$0(Lcom/smalife/activity/NoticActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
