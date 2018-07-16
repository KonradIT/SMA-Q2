.class public Lcom/igexin/getuiext/service/GetuiExtService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/igexin/getuiext/service/GetuiExtReceiver;

.field private b:Lcom/igexin/getuiext/service/j;

.field private c:Landroid/content/Context;

.field private volatile d:Landroid/os/Looper;

.field private volatile e:Lcom/igexin/getuiext/service/h;

.field private volatile f:Landroid/os/Looper;

.field private volatile g:Lcom/igexin/getuiext/service/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/igexin/getuiext/service/GetuiExtService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GetuiExt-GetuiExtService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->d:Landroid/os/Looper;

    new-instance v0, Lcom/igexin/getuiext/service/h;

    iget-object v1, p0, Lcom/igexin/getuiext/service/GetuiExtService;->d:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/igexin/getuiext/service/h;-><init>(Lcom/igexin/getuiext/service/GetuiExtService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->e:Lcom/igexin/getuiext/service/h;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BI"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->f:Landroid/os/Looper;

    new-instance v0, Lcom/igexin/getuiext/service/i;

    iget-object v1, p0, Lcom/igexin/getuiext/service/GetuiExtService;->f:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/igexin/getuiext/service/i;-><init>(Lcom/igexin/getuiext/service/GetuiExtService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->g:Lcom/igexin/getuiext/service/i;

    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {p0}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v1

    const-string v0, "GETUI_INC"

    invoke-virtual {v1, v0}, Lcom/igexin/download/SdkDownLoader;->getCallback(Ljava/lang/String;)Lcom/igexin/download/IDownloadCallback;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/service/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/getuiext/service/d;

    const-string v2, "GETUI_INC"

    invoke-direct {v0, p0, v2}, Lcom/igexin/getuiext/service/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/igexin/download/SdkDownLoader;->registerDownloadCallback(Lcom/igexin/download/IDownloadCallback;)V

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/igexin/getuiext/service/j;

    invoke-direct {v0, p0}, Lcom/igexin/getuiext/service/j;-><init>(Lcom/igexin/getuiext/service/GetuiExtService;)V

    iput-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->b:Lcom/igexin/getuiext/service/j;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/getuiext/service/GetuiExtService;->b:Lcom/igexin/getuiext/service/j;

    invoke-virtual {p0, v1, v0}, Lcom/igexin/getuiext/service/GetuiExtService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/igexin/getuiext/service/GetuiExtReceiver;

    invoke-direct {v0}, Lcom/igexin/getuiext/service/GetuiExtReceiver;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->a:Lcom/igexin/getuiext/service/GetuiExtReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.igexin.increment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.download.action.notify.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/getuiext/service/GetuiExtService;->a:Lcom/igexin/getuiext/service/GetuiExtReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/igexin/getuiext/service/GetuiExtService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->c:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/igexin/getuiext/data/Consts;->verifyCode:I

    invoke-static {}, Lcom/igexin/getuiext/b/c;->d()Lcom/igexin/getuiext/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/getuiext/service/GetuiExtService;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/b/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/getuiext/util/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/igexin/getuiext/data/Consts;->APPID:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/igexin/getuiext/service/GetuiExtService;->a()V

    :try_start_0
    invoke-direct {p0}, Lcom/igexin/getuiext/service/GetuiExtService;->d()V

    invoke-direct {p0}, Lcom/igexin/getuiext/service/GetuiExtService;->c()V

    invoke-direct {p0}, Lcom/igexin/getuiext/service/GetuiExtService;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/igexin/getuiext/service/GetuiExtService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->a:Lcom/igexin/getuiext/service/GetuiExtReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->a:Lcom/igexin/getuiext/service/GetuiExtReceiver;

    invoke-virtual {p0, v0}, Lcom/igexin/getuiext/service/GetuiExtService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->b:Lcom/igexin/getuiext/service/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->b:Lcom/igexin/getuiext/service/j;

    invoke-virtual {p0, v0}, Lcom/igexin/getuiext/service/GetuiExtService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->d:Landroid/os/Looper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->d:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_2
    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->f:Landroid/os/Looper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->f:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    const/16 v2, 0x2afa

    if-eqz p1, :cond_0

    const-string v0, "what"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->g:Lcom/igexin/getuiext/service/i;

    invoke-virtual {v0, v2}, Lcom/igexin/getuiext/service/i;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/igexin/getuiext/service/GetuiExtService;->g:Lcom/igexin/getuiext/service/i;

    invoke-virtual {v1, v0}, Lcom/igexin/getuiext/service/i;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igexin/getuiext/service/GetuiExtService;->e:Lcom/igexin/getuiext/service/h;

    invoke-virtual {v0}, Lcom/igexin/getuiext/service/h;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/igexin/getuiext/service/GetuiExtService;->e:Lcom/igexin/getuiext/service/h;

    invoke-virtual {v1, v0}, Lcom/igexin/getuiext/service/h;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
