.class public Lcom/igexin/download/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/igexin/download/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-virtual {v0, p0}, Lcom/igexin/download/DownloadService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0, v1}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Z)Z

    iget-object v1, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    monitor-enter v1

    :try_start_0
    const-string v0, "android.media.IMediaScannerService"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Stub"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v1, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/igexin/download/e;->a:Lcom/igexin/download/DownloadService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
