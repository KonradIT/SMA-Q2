.class Lcom/smalife/activity/LeadingActivity$1;
.super Landroid/os/Handler;
.source "LeadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/LeadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/LeadingActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LeadingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LeadingActivity$1;->this$0:Lcom/smalife/activity/LeadingActivity;

    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/LeadingActivity$1;)Lcom/smalife/activity/LeadingActivity;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/smalife/activity/LeadingActivity$1;->this$0:Lcom/smalife/activity/LeadingActivity;

    return-object v0
.end method

.method private goOtherActivity()V
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/accloud/cloudservice/AC;->accountMgr()Lcom/accloud/service/ACAccountMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/activity/LeadingActivity$1;->this$0:Lcom/smalife/activity/LeadingActivity;

    invoke-static {v1}, Lcom/smalife/activity/LeadingActivity;->access$1(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/LeadingActivity$1;->this$0:Lcom/smalife/activity/LeadingActivity;

    invoke-static {v2}, Lcom/smalife/activity/LeadingActivity;->access$2(Lcom/smalife/activity/LeadingActivity;)Ljava/lang/String;

    move-result-object v2

    .line 114
    new-instance v3, Lcom/smalife/activity/LeadingActivity$1$1;

    invoke-direct {v3, p0}, Lcom/smalife/activity/LeadingActivity$1$1;-><init>(Lcom/smalife/activity/LeadingActivity$1;)V

    .line 113
    invoke-interface {v0, v1, v2, v3}, Lcom/accloud/service/ACAccountMgr;->login(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V

    .line 184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/smalife/activity/LeadingActivity$1;->this$0:Lcom/smalife/activity/LeadingActivity;

    invoke-static {v1}, Lcom/smalife/activity/LeadingActivity;->access$0(Lcom/smalife/activity/LeadingActivity;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getHasLogin()Z

    move-result v0

    .line 96
    .local v0, "hasLogin":Z
    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/smalife/activity/LeadingActivity$1;->goOtherActivity()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/LeadingActivity$1;->this$0:Lcom/smalife/activity/LeadingActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/smalife/activity/LeadingActivity$1;->this$0:Lcom/smalife/activity/LeadingActivity;

    .line 100
    const-class v4, Lcom/smalife/activity/WelcomeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    invoke-virtual {v1, v2}, Lcom/smalife/activity/LeadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v1, p0, Lcom/smalife/activity/LeadingActivity$1;->this$0:Lcom/smalife/activity/LeadingActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/LeadingActivity;->finish()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
