.class Lcom/smalife/activity/MessageSetActivity$1;
.super Landroid/os/Handler;
.source "MessageSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/MessageSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MessageSetActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MessageSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$1;->this$0:Lcom/smalife/activity/MessageSetActivity;

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$1;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-static {v0}, Lcom/smalife/activity/MessageSetActivity;->access$0(Lcom/smalife/activity/MessageSetActivity;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
