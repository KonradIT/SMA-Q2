.class Lcom/smalife/activity/UserInfoActivity$2;
.super Landroid/os/Handler;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/UserInfoActivity$2;->this$0:Lcom/smalife/activity/UserInfoActivity;

    .line 332
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x32

    .line 336
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 337
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 339
    :sswitch_0
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity$2;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v0}, Lcom/smalife/activity/UserInfoActivity;->access$1(Lcom/smalife/activity/UserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity$2;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v0}, Lcom/smalife/activity/UserInfoActivity;->access$1(Lcom/smalife/activity/UserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity$2;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v0}, Lcom/smalife/activity/UserInfoActivity;->access$1(Lcom/smalife/activity/UserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 344
    :sswitch_1
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity$2;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v0}, Lcom/smalife/activity/UserInfoActivity;->access$2(Lcom/smalife/activity/UserInfoActivity;)Landroid/content/Context;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/smalife/activity/UserInfoActivity$2;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 349
    :sswitch_2
    iget-object v0, p0, Lcom/smalife/activity/UserInfoActivity$2;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-static {v0}, Lcom/smalife/activity/UserInfoActivity;->access$2(Lcom/smalife/activity/UserInfoActivity;)Landroid/content/Context;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/smalife/activity/UserInfoActivity$2;->this$0:Lcom/smalife/activity/UserInfoActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
