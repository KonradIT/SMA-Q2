.class Lcom/accloud/cloudservice/ACDeviceActivator$3;
.super Landroid/os/Handler;
.source "ACDeviceActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACDeviceActivator;->startAbleLink(Ljava/lang/String;Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;

.field final synthetic val$deviceList:Ljava/util/List;

.field final synthetic val$hashSet:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACDeviceActivator;Lcom/accloud/cloudservice/PayloadCallback;Ljava/util/HashSet;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iput-object p3, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->val$hashSet:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->val$deviceList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 346
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 348
    :pswitch_0
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-virtual {v1}, Lcom/accloud/cloudservice/ACDeviceActivator;->stopAbleLink()V

    .line 349
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/accloud/service/ACException;

    invoke-interface {v2, v1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 352
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/accloud/service/ACDeviceBind;

    .line 354
    .local v0, "deviceBind":Lcom/accloud/service/ACDeviceBind;
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->val$hashSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "ACDeviceActivator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/accloud/service/ACDeviceBind;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->val$deviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator$3;->val$deviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
