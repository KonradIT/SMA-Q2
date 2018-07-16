.class public Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/activity/GetuiExtActivity;


# direct methods
.method public constructor <init>(Lcom/igexin/getuiext/activity/GetuiExtActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-static {v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a(Lcom/igexin/getuiext/activity/GetuiExtActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    sget-object v1, Lcom/igexin/getuiext/ui/d;->f:Lcom/igexin/getuiext/ui/d;

    invoke-static {v0, v1}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a(Lcom/igexin/getuiext/activity/GetuiExtActivity;Lcom/igexin/getuiext/ui/d;)Lcom/igexin/getuiext/ui/d;

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-virtual {v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-static {v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->b(Lcom/igexin/getuiext/activity/GetuiExtActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    sget-object v1, Lcom/igexin/getuiext/ui/d;->d:Lcom/igexin/getuiext/ui/d;

    invoke-static {v0, v1}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a(Lcom/igexin/getuiext/activity/GetuiExtActivity;Lcom/igexin/getuiext/ui/d;)Lcom/igexin/getuiext/ui/d;

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-static {v0, p3}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a(Lcom/igexin/getuiext/activity/GetuiExtActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-virtual {v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-static {v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c(Lcom/igexin/getuiext/activity/GetuiExtActivity;)Lcom/igexin/getuiext/ui/promotion/c;

    move-result-object v0

    instance-of v0, v0, Lcom/igexin/getuiext/ui/promotion/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a:Lcom/igexin/getuiext/activity/GetuiExtActivity;

    invoke-static {v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->c(Lcom/igexin/getuiext/activity/GetuiExtActivity;)Lcom/igexin/getuiext/ui/promotion/c;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/ui/promotion/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/getuiext/ui/promotion/d;->a(IILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.igexin.getuiext.ui.upgrade_progress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "progress"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "file_path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_id"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/igexin/getuiext/activity/GetuiExtActivity$UpgradeProgressReceiver;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method
