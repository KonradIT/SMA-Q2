.class public interface abstract Lcom/accloud/service/ACBindMgr;
.super Ljava/lang/Object;
.source "ACBindMgr.java"


# virtual methods
.method public abstract addDeviceStub(Ljava/lang/String;Lcom/accloud/service/ACDeviceStub;)V
.end method

.method public abstract addSubDevice(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindDeviceWithShareCode(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindDeviceWithUser(Ljava/lang/String;JLjava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract bindGateway(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changeDevice(Ljava/lang/String;Ljava/lang/String;JLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract changeName(Ljava/lang/String;JLjava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract changeOwner(Ljava/lang/String;JJLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract closeGatewayMatch(Ljava/lang/String;JLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract deleteSubDevice(Ljava/lang/String;JLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract evictSubDevice(Ljava/lang/String;JLjava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract getDeviceProfile(Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getShareCode(Ljava/lang/String;JILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getShareCode(Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isDeviceBound(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isDeviceLocalOnline(Ljava/lang/String;)Z
.end method

.method public abstract isDeviceOnline(Ljava/lang/String;JLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listDevices(Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listDevicesWithStatus(Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listGateways(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listNewDevices(Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACDeviceBind;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listSubDevices(Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listUsers(Ljava/lang/String;JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACDeviceUser;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract openGatewayMatch(Ljava/lang/String;JILcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract resetDeviceToken(Ljava/lang/String;JLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract sendToDeviceWithOption(Ljava/lang/String;JLcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/accloud/service/ACDeviceMsg;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACDeviceMsg;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendToDeviceWithOption(Ljava/lang/String;Ljava/lang/String;Lcom/accloud/service/ACDeviceMsg;ILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/accloud/service/ACDeviceMsg;",
            "I",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACDeviceMsg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDeviceProfile(Ljava/lang/String;JLcom/accloud/service/ACObject;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract unbindDevice(Ljava/lang/String;JLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract unbindDeviceWithUser(Ljava/lang/String;JJLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract unbindGateway(Ljava/lang/String;JLcom/accloud/cloudservice/VoidCallback;)V
.end method
