.class public Lcom/igexin/sdk/PushService;
.super Landroid/app/Service;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/igexin/sdk/IPushCore;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PushSdk"

    sput-object v0, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/sdk/PushService;->c:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v0, p1}, Lcom/igexin/sdk/IPushCore;->onServiceBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v0}, Lcom/igexin/sdk/IPushCore;->onServiceDestroy()V

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    iget-boolean v1, p0, Lcom/igexin/sdk/PushService;->c:Z

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/igexin/sdk/PushService;->c:Z

    if-eqz p1, :cond_1

    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.igexin.action.initialize.slave"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/igexin/push/a/l;->a(Landroid/content/Context;)V

    const-string v1, "1"

    invoke-static {}, Lcom/igexin/push/core/g;->c()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ss"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/igexin/sdk/a/d;

    invoke-direct {v1, p0}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/igexin/sdk/a/d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/igexin/sdk/PushService;->stopSelf()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/igexin/sdk/a/a;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    iget-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v1, p0}, Lcom/igexin/sdk/IPushCore;->start(Landroid/content/Context;)Z

    :cond_2
    iget-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v0, p1, p2, p3}, Lcom/igexin/sdk/IPushCore;->onServiceStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method
