.class Lcom/smalife/ble/BlueToothService$4;
.super Ljava/lang/Object;
.source "BlueToothService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/ble/BlueToothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;


# direct methods
.method constructor <init>(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$4;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 3001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3008
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$4;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$15(Lcom/smalife/ble/BlueToothService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3009
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$4;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1}, Lcom/smalife/ble/BlueToothService;->access$2(Lcom/smalife/ble/BlueToothService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM07"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3010
    new-instance v0, Landroid/content/Intent;

    const-string v1, "refresh_data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3011
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "refresh_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3012
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$4;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v1, v0}, Lcom/smalife/ble/BlueToothService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3014
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
