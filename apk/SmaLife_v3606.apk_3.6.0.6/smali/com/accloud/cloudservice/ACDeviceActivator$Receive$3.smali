.class Lcom/accloud/cloudservice/ACDeviceActivator$Receive$3;
.super Ljava/lang/Object;
.source "ACDeviceActivator.java"

# interfaces
.implements Lcom/MURATA/UdpCallBackIf;


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
    .line 549
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$3;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public udp_appConfigAck(I)V
    .locals 2
    .param p1, "receiveData"    # I

    .prologue
    .line 552
    if-lez p1, :cond_0

    .line 553
    const-string v0, "ACDeviceActivator"

    const-string v1, "C: \u914d\u7f6e\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    const-string v0, "ACDeviceActivator"

    const-string v1, "C: \u914d\u7f6e\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
