.class public interface abstract Lcom/accloud/service/ACGroupMgr;
.super Ljava/lang/Object;
.source "ACGroupMgr.java"


# virtual methods
.method public abstract addDeviceToHome(JJLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addDeviceToHome(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addUserToHome(JLjava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract changeHomeName(JLjava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract changeRoomName(JJLjava/lang/String;Lcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract createHome(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACHome;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createRoom(JLjava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACRoom;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteDeviceFromHome(JJLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract deleteHome(JLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract deleteRoom(JJLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract getHomeShareCode(JILcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getHomeShareCode(JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract joinHomeWithShareCode(Ljava/lang/String;Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Lcom/accloud/service/ACHome;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listHomeDevices(JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listHomeDevicesWithStatus(JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listHomeUsers(JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACHomeUser;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listHomes(Lcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACHome;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listRoomDevices(JJLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listRoomDevicesWithStatus(JJLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACUserDevice;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listRooms(JLcom/accloud/cloudservice/PayloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/accloud/cloudservice/PayloadCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACRoom;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract moveDeviceToRoom(JJJLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract removeDeviceFromRoom(JJJLcom/accloud/cloudservice/VoidCallback;)V
.end method

.method public abstract removeUserFromHome(JJLcom/accloud/cloudservice/VoidCallback;)V
.end method
