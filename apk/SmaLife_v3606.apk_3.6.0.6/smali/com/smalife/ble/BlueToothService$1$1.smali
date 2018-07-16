.class Lcom/smalife/ble/BlueToothService$1$1;
.super Ljava/lang/Object;
.source "BlueToothService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ble/BlueToothService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/ble/BlueToothService$1;


# direct methods
.method constructor <init>(Lcom/smalife/ble/BlueToothService$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$1$1;->this$1:Lcom/smalife/ble/BlueToothService$1;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    sget-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->firstBonded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$1$1;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$1$1;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$1$1;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v2

    iget-object v2, v2, Lcom/smalife/ble/BlueToothService;->id_bytes:[B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->bond([B)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    .line 125
    const-string v1, "StartBondAction"

    .line 124
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "bond_Intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$1$1;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    .end local v0    # "bond_Intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$1$1;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$0(Lcom/smalife/ble/BlueToothService;)Lcom/smalife/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$1$1;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/ble/BlueToothService$1$1;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v2}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v2

    iget-object v2, v2, Lcom/smalife/ble/BlueToothService;->id_bytes:[B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->login([B)V

    goto :goto_0
.end method
