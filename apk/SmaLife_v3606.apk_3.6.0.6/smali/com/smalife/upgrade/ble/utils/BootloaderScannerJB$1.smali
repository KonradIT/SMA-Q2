.class Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;
.super Ljava/lang/Object;
.source "BootloaderScannerJB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->searchFor(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;


# direct methods
.method constructor <init>(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;->this$0:Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;->this$0:Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->access$0(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :goto_1
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;->this$0:Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->access$1(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;->this$0:Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->access$2(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;Z)V

    .line 42
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;->this$0:Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->access$3(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB$1;->this$0:Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;

    invoke-static {v0}, Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;->access$3(Lcom/smalife/upgrade/ble/utils/BootloaderScannerJB;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method
