.class Lcom/igexin/getuiext/service/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/service/GetuiExtService;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/service/GetuiExtService;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/service/j;->a:Lcom/igexin/getuiext/service/GetuiExtService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/getuiext/service/c;->a()Lcom/igexin/getuiext/service/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/getuiext/service/c;->b(Ljava/lang/String;)Lcom/igexin/getuiext/data/a/d;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/igexin/getuiext/ui/promotion/f;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/igexin/getuiext/service/c;->a()Lcom/igexin/getuiext/service/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/getuiext/service/c;->c(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    instance-of v2, v1, Lcom/igexin/getuiext/data/a/e;

    if-eqz v2, :cond_0

    invoke-static {p1, v1, v3}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v1, v3}, Lcom/igexin/getuiext/service/a;->a(Landroid/content/Context;Lcom/igexin/getuiext/data/a/a;I)V

    goto :goto_1
.end method
