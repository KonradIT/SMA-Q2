.class Lcom/igexin/download/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/igexin/download/SdkDownLoader;


# direct methods
.method constructor <init>(Lcom/igexin/download/SdkDownLoader;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;

    invoke-static {v0}, Lcom/igexin/download/SdkDownLoader;->a(Lcom/igexin/download/SdkDownLoader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;

    invoke-static {v0}, Lcom/igexin/download/SdkDownLoader;->b(Lcom/igexin/download/SdkDownLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;

    iget-object v0, v0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;

    iget-object v0, v0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/download/DownloadInfo;

    iget-object v3, p0, Lcom/igexin/download/j;->a:Lcom/igexin/download/SdkDownLoader;

    iget-object v4, v0, Lcom/igexin/download/DownloadInfo;->mData8:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/igexin/download/SdkDownLoader;->a(Ljava/lang/String;)Lcom/igexin/download/IDownloadCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Lcom/igexin/download/IDownloadCallback;->update(Lcom/igexin/download/DownloadInfo;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
