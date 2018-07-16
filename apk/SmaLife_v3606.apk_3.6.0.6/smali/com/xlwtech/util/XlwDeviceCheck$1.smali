.class Lcom/xlwtech/util/XlwDeviceCheck$1;
.super Landroid/os/Handler;
.source "XlwDeviceCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xlwtech/util/XlwDeviceCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xlwtech/util/XlwDeviceCheck;


# direct methods
.method constructor <init>(Lcom/xlwtech/util/XlwDeviceCheck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xlwtech/util/XlwDeviceCheck$1;->this$0:Lcom/xlwtech/util/XlwDeviceCheck;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x623e

    if-ne v1, v2, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck$1;->this$0:Lcom/xlwtech/util/XlwDeviceCheck;

    invoke-static {v1}, Lcom/xlwtech/util/XlwDeviceCheck;->access$0(Lcom/xlwtech/util/XlwDeviceCheck;)Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck$1;->this$0:Lcom/xlwtech/util/XlwDeviceCheck;

    invoke-static {v1}, Lcom/xlwtech/util/XlwDeviceCheck;->access$0(Lcom/xlwtech/util/XlwDeviceCheck;)Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v0, v2}, Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;->onStatusChange(Ljava/lang/String;I)V

    .line 63
    .end local v0    # "mac":Ljava/lang/String;
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x623f

    if-ne v1, v2, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0    # "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck$1;->this$0:Lcom/xlwtech/util/XlwDeviceCheck;

    invoke-static {v1}, Lcom/xlwtech/util/XlwDeviceCheck;->access$0(Lcom/xlwtech/util/XlwDeviceCheck;)Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xlwtech/util/XlwDeviceCheck$1;->this$0:Lcom/xlwtech/util/XlwDeviceCheck;

    invoke-static {v1}, Lcom/xlwtech/util/XlwDeviceCheck;->access$0(Lcom/xlwtech/util/XlwDeviceCheck;)Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;

    move-result-object v1

    const/16 v2, 0xb

    invoke-interface {v1, v0, v2}, Lcom/xlwtech/util/XlwDeviceCheck$DeviceCheckListener;->onStatusChange(Ljava/lang/String;I)V

    .line 68
    .end local v0    # "mac":Ljava/lang/String;
    :cond_1
    return-void
.end method
