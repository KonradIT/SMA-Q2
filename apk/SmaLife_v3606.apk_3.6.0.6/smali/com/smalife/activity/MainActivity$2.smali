.class Lcom/smalife/activity/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MainActivity$2;->this$0:Lcom/smalife/activity/MainActivity;

    .line 458
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 462
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 467
    :goto_0
    return-void

    .line 464
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/MainActivity$2;->this$0:Lcom/smalife/activity/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/activity/MainActivity;->access$6(Lcom/smalife/activity/MainActivity;I)V

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
