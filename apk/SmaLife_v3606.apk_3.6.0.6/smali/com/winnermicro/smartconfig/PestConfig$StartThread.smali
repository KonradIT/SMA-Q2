.class Lcom/winnermicro/smartconfig/PestConfig$StartThread;
.super Ljava/lang/Object;
.source "PestConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winnermicro/smartconfig/PestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartThread"
.end annotation


# instance fields
.field passWord:Ljava/lang/String;

.field final synthetic this$0:Lcom/winnermicro/smartconfig/PestConfig;

.field type:B

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/winnermicro/smartconfig/PestConfig;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 445
    iput-object p1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 450
    iput-object v0, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->passWord:Ljava/lang/String;

    .line 451
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->type:B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$4(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v2}, Lcom/winnermicro/smartconfig/PestConfig;->access$5(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v3}, Lcom/winnermicro/smartconfig/PestConfig;->access$6(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$7(Lcom/winnermicro/smartconfig/PestConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 471
    :goto_0
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$3(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/winnermicro/smartconfig/PestConfig$StopThread;

    iget-object v3, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-direct {v2, v3}, Lcom/winnermicro/smartconfig/PestConfig$StopThread;-><init>(Lcom/winnermicro/smartconfig/PestConfig;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :try_start_1
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$4(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v2}, Lcom/winnermicro/smartconfig/PestConfig;->access$5(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 477
    :goto_1
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v1

    iput v5, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 478
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v1

    iput-boolean v5, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    .line 480
    :goto_2
    return-void

    .line 462
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->passWord:Ljava/lang/String;

    iget-byte v3, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->type:B

    invoke-static {v1, v2, v3}, Lcom/winnermicro/smartconfig/PestConfig;->access$8(Lcom/winnermicro/smartconfig/PestConfig;Ljava/lang/String;B)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$3(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/winnermicro/smartconfig/PestConfig$StopThread;

    iget-object v3, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-direct {v2, v3}, Lcom/winnermicro/smartconfig/PestConfig$StopThread;-><init>(Lcom/winnermicro/smartconfig/PestConfig;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :try_start_4
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$4(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v2}, Lcom/winnermicro/smartconfig/PestConfig;->access$5(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 477
    :goto_3
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v1

    iput v5, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 478
    iget-object v1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v1}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v1

    iput-boolean v5, v1, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    goto :goto_2

    .line 474
    :catch_1
    move-exception v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 471
    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v2}, Lcom/winnermicro/smartconfig/PestConfig;->access$3(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/winnermicro/smartconfig/PestConfig$StopThread;

    iget-object v4, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-direct {v3, v4}, Lcom/winnermicro/smartconfig/PestConfig$StopThread;-><init>(Lcom/winnermicro/smartconfig/PestConfig;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :try_start_5
    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v2}, Lcom/winnermicro/smartconfig/PestConfig;->access$4(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v3}, Lcom/winnermicro/smartconfig/PestConfig;->access$5(Lcom/winnermicro/smartconfig/PestConfig;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 477
    :goto_4
    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v2}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v2

    iput v5, v2, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 478
    iget-object v2, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v2}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v2

    iput-boolean v5, v2, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    .line 479
    throw v1

    .line 474
    :catch_2
    move-exception v0

    .line 475
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 475
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "passWord"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->passWord:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setType(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 456
    iput-byte p1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->type:B

    .line 457
    return-void
.end method

.method public setWifiManager(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/winnermicro/smartconfig/PestConfig$StartThread;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 449
    return-void
.end method
