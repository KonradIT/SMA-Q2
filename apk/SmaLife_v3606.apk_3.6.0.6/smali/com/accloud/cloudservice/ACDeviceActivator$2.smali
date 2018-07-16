.class Lcom/accloud/cloudservice/ACDeviceActivator$2;
.super Landroid/os/Handler;
.source "ACDeviceActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACDeviceActivator;->startAbleLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACDeviceActivator;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$2;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iput-object p2, p0, Lcom/accloud/cloudservice/ACDeviceActivator$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$2;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-virtual {v0}, Lcom/accloud/cloudservice/ACDeviceActivator;->stopAbleLink()V

    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/accloud/service/ACException;

    invoke-interface {v1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$2;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/accloud/service/ACDeviceBind;

    invoke-interface {v1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
