.class final Lcom/accloud/cloudservice/ACDeviceLocalManager$1;
.super Landroid/os/Handler;
.source "ACDeviceLocalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACDeviceLocalManager;->findDevice(ILcom/accloud/cloudservice/PayloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/accloud/cloudservice/PayloadCallback;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/accloud/cloudservice/PayloadCallback;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 27
    iput-object p2, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 29
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 31
    :pswitch_0
    sget-object v1, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/accloud/service/ACException;

    invoke-interface {v2, v1}, Lcom/accloud/cloudservice/PayloadCallback;->error(Lcom/accloud/service/ACException;)V

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 37
    .local v0, "deviceFinds":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACDeviceFind;>;"
    sput-object v0, Lcom/accloud/common/ACConstant;->deviceFinds:Ljava/util/List;

    .line 38
    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceLocalManager$1;->val$callback:Lcom/accloud/cloudservice/PayloadCallback;

    invoke-interface {v1, v0}, Lcom/accloud/cloudservice/PayloadCallback;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
