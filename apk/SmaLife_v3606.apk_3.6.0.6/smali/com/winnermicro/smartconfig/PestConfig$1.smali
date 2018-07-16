.class Lcom/winnermicro/smartconfig/PestConfig$1;
.super Landroid/content/BroadcastReceiver;
.source "PestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winnermicro/smartconfig/PestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winnermicro/smartconfig/PestConfig;


# direct methods
.method constructor <init>(Lcom/winnermicro/smartconfig/PestConfig;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "SCAN_RESULTS_AVAILABLE"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v6}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v6

    iput-boolean v8, v6, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    :try_start_0
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 95
    .local v4, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    .line 96
    move-object v0, v4

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v3, v0

    .line 97
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 98
    .local v2, "isConnected":Z
    if-nez v2, :cond_0

    .line 99
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v6}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v6

    const/16 v7, 0x66

    iput v7, v6, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 100
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v6}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    .line 102
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v6}, Lcom/winnermicro/smartconfig/PestConfig;->access$1(Lcom/winnermicro/smartconfig/PestConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v2    # "isConnected":Z
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "parcelableExtra":Landroid/os/Parcelable;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v6, "wifi_state"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 112
    .local v5, "wifiState":I
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v6}, Lcom/winnermicro/smartconfig/PestConfig;->access$1(Lcom/winnermicro/smartconfig/PestConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 125
    .end local v5    # "wifiState":I
    :catch_1
    move-exception v1

    .line 126
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "wifiState":I
    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v6}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v6

    const/16 v7, 0x65

    iput v7, v6, Lcom/winnermicro/smartconfig/ConfigProperty;->errorId:I

    .line 115
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    invoke-static {v6}, Lcom/winnermicro/smartconfig/PestConfig;->access$0(Lcom/winnermicro/smartconfig/PestConfig;)Lcom/winnermicro/smartconfig/ConfigProperty;

    move-result-object v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/winnermicro/smartconfig/ConfigProperty;->scanning:Z

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v6, p0, Lcom/winnermicro/smartconfig/PestConfig$1;->this$0:Lcom/winnermicro/smartconfig/PestConfig;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/winnermicro/smartconfig/PestConfig;->access$2(Lcom/winnermicro/smartconfig/PestConfig;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
