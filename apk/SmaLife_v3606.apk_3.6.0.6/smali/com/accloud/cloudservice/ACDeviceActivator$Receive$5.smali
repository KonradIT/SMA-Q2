.class Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;
.super Ljava/lang/Object;
.source "ACDeviceActivator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 605
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    iget-object v6, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    new-instance v0, Lcom/espressif/iot/esptouch/EsptouchTask;

    iget-object v1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-static {v1}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->access$400(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    iget-object v2, v2, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    invoke-virtual {v2}, Lcom/accloud/cloudservice/ACDeviceActivator;->getBssid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-static {v3}, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->access$500(Lcom/accloud/cloudservice/ACDeviceActivator$Receive;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/accloud/cloudservice/AC;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/espressif/iot/esptouch/EsptouchTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    iput-object v0, v6, Lcom/accloud/cloudservice/ACDeviceActivator;->mEsptouchTask:Lcom/espressif/iot/esptouch/IEsptouchTask;

    .line 606
    iget-object v0, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$5;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive;->this$0:Lcom/accloud/cloudservice/ACDeviceActivator;

    iget-object v0, v0, Lcom/accloud/cloudservice/ACDeviceActivator;->mEsptouchTask:Lcom/espressif/iot/esptouch/IEsptouchTask;

    invoke-interface {v0, v4}, Lcom/espressif/iot/esptouch/IEsptouchTask;->executeForResults(I)Ljava/util/List;

    .line 607
    return-void
.end method
