.class Lcom/accloud/cloudservice/ACDeviceActivator$Receive$1;
.super Ljava/lang/Object;
.source "ACDeviceActivator.java"

# interfaces
.implements Lcom/hiflying/smartlink/OnSmartLinkListener;


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
    .line 481
    iput-object p1, p0, Lcom/accloud/cloudservice/ACDeviceActivator$Receive$1;->this$1:Lcom/accloud/cloudservice/ACDeviceActivator$Receive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "ACDeviceActivator"

    const-string v1, "C: \u914d\u7f6e\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public onLinked(Lcom/hiflying/smartlink/SmartLinkedModule;)V
    .locals 3
    .param p1, "smartLinkedModule"    # Lcom/hiflying/smartlink/SmartLinkedModule;

    .prologue
    .line 484
    const-string v0, "ACDeviceActivator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C: \u53d1\u73b0\u8bbe\u5907-->mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiflying/smartlink/SmartLinkedModule;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiflying/smartlink/SmartLinkedModule;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public onTimeOut()V
    .locals 2

    .prologue
    .line 494
    const-string v0, "ACDeviceActivator"

    const-string v1, "C: \u914d\u7f6e\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/accloud/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method
