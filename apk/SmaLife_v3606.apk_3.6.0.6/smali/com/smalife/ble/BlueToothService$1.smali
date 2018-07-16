.class Lcom/smalife/ble/BlueToothService$1;
.super Landroid/os/Handler;
.source "BlueToothService.java"


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
    iput-object p1, p0, Lcom/smalife/ble/BlueToothService$1;->this$0:Lcom/smalife/ble/BlueToothService;

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/smalife/ble/BlueToothService$1;)Lcom/smalife/ble/BlueToothService;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/smalife/ble/BlueToothService$1;->this$0:Lcom/smalife/ble/BlueToothService;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v2, 0x190

    .line 116
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 118
    :pswitch_0
    new-instance v1, Lcom/smalife/ble/BlueToothService$1$1;

    invoke-direct {v1, p0}, Lcom/smalife/ble/BlueToothService$1$1;-><init>(Lcom/smalife/ble/BlueToothService$1;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/smalife/ble/BlueToothService$1;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 135
    :pswitch_1
    new-instance v1, Lcom/smalife/ble/BlueToothService$1$2;

    invoke-direct {v1, p0}, Lcom/smalife/ble/BlueToothService$1$2;-><init>(Lcom/smalife/ble/BlueToothService$1;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/smalife/ble/BlueToothService$1;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 146
    .local v0, "data":[B
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$1;->this$0:Lcom/smalife/ble/BlueToothService;

    invoke-static {v1, v0}, Lcom/smalife/ble/BlueToothService;->access$1(Lcom/smalife/ble/BlueToothService;[B)V

    goto :goto_0

    .line 150
    .end local v0    # "data":[B
    :pswitch_3
    iget-object v1, p0, Lcom/smalife/ble/BlueToothService$1;->this$0:Lcom/smalife/ble/BlueToothService;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/smalife/ble/BlueToothService;->getRate_shouhuan([B)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
