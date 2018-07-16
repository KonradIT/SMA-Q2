.class Lcom/smalife/ble/BlueToothService$8;
.super Ljava/lang/Object;
.source "BlueToothService.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ble/BlueToothService;->dispatcherMsg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/ble/BlueToothService;


# direct methods
.method constructor <init>(Lcom/smalife/ble/BlueToothService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$8;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 2738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 2750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e92\u52a8\u6307\u4ee4\u53d1\u9001\u5931\u8d25 :\u3000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2751
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2750
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bestmafen/utils/L;->e(Ljava/lang/String;)V

    .line 2752
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 2
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$8;->this$0:Lcom/smalife/ble/BlueToothService;

    iget v0, v0, Lcom/smalife/ble/BlueToothService;->code_key:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2742
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$8;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v0}, Lcom/smalife/ble/BlueToothService;->showLoveBack()V

    .line 2746
    :cond_0
    :goto_0
    return-void

    .line 2743
    :cond_1
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$8;->this$0:Lcom/smalife/ble/BlueToothService;

    iget v0, v0, Lcom/smalife/ble/BlueToothService;->code_key:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 2744
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$8;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-virtual {v0}, Lcom/smalife/ble/BlueToothService;->loveCallBack()V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/ble/BlueToothService$8;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
