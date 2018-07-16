.class final Lcom/igexin/getuiext/service/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/service/GetuiExtService;


# direct methods
.method public constructor <init>(Lcom/igexin/getuiext/service/GetuiExtService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/service/h;->a:Lcom/igexin/getuiext/service/GetuiExtService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/igexin/getuiext/service/h;->a(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "pkgName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/getuiext/service/c;->a()Lcom/igexin/getuiext/service/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/getuiext/service/c;->b(Ljava/lang/String;)Lcom/igexin/getuiext/data/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/igexin/getuiext/ui/promotion/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igexin/getuiext/service/h;->a:Lcom/igexin/getuiext/service/GetuiExtService;

    invoke-static {v1}, Lcom/igexin/getuiext/service/GetuiExtService;->a(Lcom/igexin/getuiext/service/GetuiExtService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/igexin/getuiext/data/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igexin/getuiext/service/h;->a:Lcom/igexin/getuiext/service/GetuiExtService;

    invoke-static {v1}, Lcom/igexin/getuiext/service/GetuiExtService;->a(Lcom/igexin/getuiext/service/GetuiExtService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2af9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/getuiext/a/b;->a(Ljava/lang/String;)Lcom/igexin/getuiext/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/igexin/getuiext/service/h;->a:Lcom/igexin/getuiext/service/GetuiExtService;

    invoke-static {v1}, Lcom/igexin/getuiext/service/GetuiExtService;->a(Lcom/igexin/getuiext/service/GetuiExtService;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/igexin/getuiext/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "what"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/igexin/getuiext/service/h;->a(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
