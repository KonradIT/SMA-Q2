.class Lcom/smalife/activity/MainActivity$1;
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
    iput-object p1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    .line 387
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 391
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v1}, Lcom/smalife/activity/MainActivity;->access$0(Lcom/smalife/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 392
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 431
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 432
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    iget-object v2, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 433
    const-string v3, "sport"

    .line 434
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v5}, Lcom/smalife/activity/MainActivity;->access$1(Lcom/smalife/activity/MainActivity;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/smalife/activity/SportActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 432
    invoke-static {v1, v2}, Lcom/smalife/activity/MainActivity;->access$2(Lcom/smalife/activity/MainActivity;Landroid/view/View;)V

    .line 436
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v1}, Lcom/smalife/activity/MainActivity;->access$4(Lcom/smalife/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 440
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v1}, Lcom/smalife/activity/MainActivity;->access$0(Lcom/smalife/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 441
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v1}, Lcom/smalife/activity/MainActivity;->access$0(Lcom/smalife/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v2}, Lcom/smalife/activity/MainActivity;->access$5(Lcom/smalife/activity/MainActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    return-void

    .line 394
    :sswitch_0
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    iget-object v2, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 395
    const-string v3, "sport"

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v5}, Lcom/smalife/activity/MainActivity;->access$1(Lcom/smalife/activity/MainActivity;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/smalife/activity/SportActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 394
    invoke-static {v1, v2}, Lcom/smalife/activity/MainActivity;->access$2(Lcom/smalife/activity/MainActivity;Landroid/view/View;)V

    goto :goto_0

    .line 400
    :sswitch_1
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    iget-object v2, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 401
    const-string v3, "sleep"

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v5}, Lcom/smalife/activity/MainActivity;->access$1(Lcom/smalife/activity/MainActivity;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/smalife/activity/SleepActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 400
    invoke-static {v1, v2}, Lcom/smalife/activity/MainActivity;->access$2(Lcom/smalife/activity/MainActivity;Landroid/view/View;)V

    goto :goto_0

    .line 406
    :sswitch_2
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    iget-object v2, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 407
    const-string v3, "notic"

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v5}, Lcom/smalife/activity/MainActivity;->access$1(Lcom/smalife/activity/MainActivity;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/smalife/activity/NoticActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 406
    invoke-static {v1, v2}, Lcom/smalife/activity/MainActivity;->access$2(Lcom/smalife/activity/MainActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 415
    :sswitch_3
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    iget-object v2, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 416
    const-string v3, "setting"

    .line 417
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v5}, Lcom/smalife/activity/MainActivity;->access$1(Lcom/smalife/activity/MainActivity;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/smalife/activity/SettingActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 418
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 415
    invoke-static {v1, v2}, Lcom/smalife/activity/MainActivity;->access$2(Lcom/smalife/activity/MainActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 422
    :sswitch_4
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v1}, Lcom/smalife/activity/MainActivity;->access$3(Lcom/smalife/activity/MainActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v0

    .line 423
    .local v0, "hasBond":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    invoke-static {v1}, Lcom/smalife/activity/MainActivity;->access$3(Lcom/smalife/activity/MainActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v1, :cond_0

    .line 424
    const-string v1, "startService"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/smalife/activity/MainActivity$1;->this$0:Lcom/smalife/activity/MainActivity;

    .line 426
    const-class v4, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    invoke-virtual {v1, v2}, Lcom/smalife/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method
