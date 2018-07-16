.class public Lcom/igexin/getuiext/ui/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;Z)I
    .locals 7

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-static {v6}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v0

    const-string v1, "/libs/tmp/"

    invoke-virtual {v0, v1}, Lcom/igexin/download/SdkDownLoader;->setDownloadDir(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/igexin/getuiext/data/a/d;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/igexin/getuiext/data/a/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/igexin/getuiext/data/a/d;->f:Ljava/lang/String;

    const-string v5, "GETUI_INC"

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/download/SdkDownLoader;->newTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/igexin/getuiext/b/c;->d()Lcom/igexin/getuiext/b/c;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/igexin/getuiext/b/c;->a(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/igexin/getuiext/b/c;->c()Lcom/igexin/getuiext/b/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/igexin/getuiext/b/a;->a(ILcom/igexin/getuiext/data/a/a;)V

    invoke-static {v6, p1}, Lcom/igexin/getuiext/ui/b;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;)V

    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;ILcom/igexin/getuiext/data/a/a;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.igexin.download.action.notify.click"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "action"

    const-string v3, "run"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "verifyCode"

    sget v3, Lcom/igexin/getuiext/data/Consts;->verifyCode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/igexin/getuiext/data/a/e;

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    invoke-static {v0, p2, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p2, Lcom/igexin/getuiext/ui/promotion/f;

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    invoke-static {v0, p2, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILcom/igexin/getuiext/data/a/d;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.igexin.download.action.notify.click"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "action"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "verifyCode"

    sget v3, Lcom/igexin/getuiext/data/Consts;->verifyCode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/igexin/getuiext/data/a/e;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-static {v0, p2, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p2, Lcom/igexin/getuiext/ui/promotion/f;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v0, p2, v1}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/d;)V
    .locals 2

    new-instance v0, Lcom/igexin/getuiext/ui/c;

    invoke-direct {v0, p1, p0}, Lcom/igexin/getuiext/ui/c;-><init>(Lcom/igexin/getuiext/data/a/d;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/ui/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/igexin/getuiext/data/a/a;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.increment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pkgname"

    iget-object v2, p3, Lcom/igexin/getuiext/data/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "verifyCode"

    sget v2, Lcom/igexin/getuiext/data/Consts;->verifyCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
