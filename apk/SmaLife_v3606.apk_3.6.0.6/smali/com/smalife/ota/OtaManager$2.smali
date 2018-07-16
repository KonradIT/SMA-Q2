.class Lcom/smalife/ota/OtaManager$2;
.super Ljava/lang/Object;
.source "OtaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/ota/OtaManager;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentPacketNum:I

.field final synthetic this$0:Lcom/smalife/ota/OtaManager;


# direct methods
.method constructor <init>(Lcom/smalife/ota/OtaManager;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/ota/OtaManager$2;->this$0:Lcom/smalife/ota/OtaManager;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/ota/OtaManager$2;->currentPacketNum:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 446
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$2;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$19(Lcom/smalife/ota/OtaManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    return-void

    .line 447
    :cond_1
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 448
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$2;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$20(Lcom/smalife/ota/OtaManager;)I

    move-result v0

    iput v0, p0, Lcom/smalife/ota/OtaManager$2;->currentPacketNum:I

    .line 449
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$2;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$21(Lcom/smalife/ota/OtaManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 451
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$2;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$21(Lcom/smalife/ota/OtaManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smalife/ota/OtaManager$2;->currentPacketNum:I

    iget-object v1, p0, Lcom/smalife/ota/OtaManager$2;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v1}, Lcom/smalife/ota/OtaManager;->access$20(Lcom/smalife/ota/OtaManager;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$2;->this$0:Lcom/smalife/ota/OtaManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/ota/OtaManager;->access$14(Lcom/smalife/ota/OtaManager;I)V

    .line 453
    iget-object v0, p0, Lcom/smalife/ota/OtaManager$2;->this$0:Lcom/smalife/ota/OtaManager;

    invoke-static {v0}, Lcom/smalife/ota/OtaManager;->access$22(Lcom/smalife/ota/OtaManager;)V

    goto :goto_0
.end method
