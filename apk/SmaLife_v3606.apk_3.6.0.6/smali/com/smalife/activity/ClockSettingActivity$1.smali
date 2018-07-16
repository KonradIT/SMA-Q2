.class Lcom/smalife/activity/ClockSettingActivity$1;
.super Landroid/os/Handler;
.source "ClockSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/ClockSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/ClockSettingActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/ClockSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/ClockSettingActivity$1;->this$0:Lcom/smalife/activity/ClockSettingActivity;

    .line 455
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 459
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/ClockSettingActivity$1;->this$0:Lcom/smalife/activity/ClockSettingActivity;

    iget-object v1, p0, Lcom/smalife/activity/ClockSettingActivity$1;->this$0:Lcom/smalife/activity/ClockSettingActivity;

    invoke-static {v1}, Lcom/smalife/activity/ClockSettingActivity;->access$0(Lcom/smalife/activity/ClockSettingActivity;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/ClockSettingActivity;->access$1(Lcom/smalife/activity/ClockSettingActivity;[I)V

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
