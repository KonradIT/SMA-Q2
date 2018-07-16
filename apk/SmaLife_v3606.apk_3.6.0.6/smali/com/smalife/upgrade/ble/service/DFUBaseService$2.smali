.class Lcom/smalife/upgrade/ble/service/DFUBaseService$2;
.super Landroid/content/BroadcastReceiver;
.source "DFUBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/upgrade/ble/service/DFUBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;


# direct methods
.method constructor <init>(Lcom/smalife/upgrade/ble/service/DFUBaseService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    .line 793
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 796
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 798
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 820
    :goto_0
    return-void

    .line 800
    :pswitch_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$4(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    goto :goto_0

    .line 803
    :pswitch_1
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$4(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 806
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 806
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 811
    :pswitch_2
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1, v2}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$4(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 812
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1, v3}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$5(Lcom/smalife/upgrade/ble/service/DFUBaseService;Z)V

    .line 815
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 816
    :try_start_1
    iget-object v1, p0, Lcom/smalife/upgrade/ble/service/DFUBaseService$2;->this$0:Lcom/smalife/upgrade/ble/service/DFUBaseService;

    invoke-static {v1}, Lcom/smalife/upgrade/ble/service/DFUBaseService;->access$3(Lcom/smalife/upgrade/ble/service/DFUBaseService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 815
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
