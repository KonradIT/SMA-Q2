.class Lcom/smalife/ble/BlueToothService$1$2;
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
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$1$2;->this$1:Lcom/smalife/ble/BlueToothService$1;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$1$2;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v0}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$1$2;->this$1:Lcom/smalife/ble/BlueToothService$1;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService$1;->access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;

    move-result-object v1

    iget-object v1, v1, Lcom/smalife/ble/BlueToothService;->id_bytes:[B

    invoke-virtual {v0, v1}, Lcom/smalife/ble/BlueToothService;->login([B)V

    .line 140
    return-void
.end method
